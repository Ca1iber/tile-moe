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
	.file	2 "/tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3" "v057_candidate_case3_generated_device.cpp"
	.loc	2 174 0                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:174:0
; %bb.0:                                ; %entry
	sshl_b32 s6, 8, s6
	sadd_co_u32 prvt_lo, s2, s6
	ldu_b64 s6, s0, 0x30
	ldu_b128 s12, s0, 0x20
	ldu_b256 s40, s0, 0x0
	saddc_co_u32 prvt_hi, s3, 0
.Ltmp4:
	.loc	2 182 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:182:25
	scmp_gt_u32 s5, 31
	smov_b32 s33, 0
	.loc	2 182 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:182:7
	bra_smskz LBB2_2
; %bb.1:                                ; %if.else
	.loc	2 186 49 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:186:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 186 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:186:75
	sand_b32 s1, s4, 1
	.loc	2 186 54                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:186:54
	sor_b32 s16, s0, s1
	.loc	2 187 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:187:48
	sshl_b32 s0, 3, s5
	sand_b32 s0, s0, 8
	.loc	2 187 74 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:187:74
	sshr_b32 s1, 1, s4
	.loc	2 187 53                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:187:53
	sadd_co_i32 s0, s0, s1
	.loc	2 182 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:182:7
	bra_xmskz LBB2_3
	bra LBB2_4
LBB2_2:
                                        ; implicit-def: $streg_32bit_0
                                        ; implicit-def: $streg_32bit_16
LBB2_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	smov_b32 s16, s5
	smov_b32 s0, s4
LBB2_4:                                 ; %if.end
	mov_b32 r1, 0x60
	cmp_lt_u32 s8, s16, r1
	scmp_lt_u32 0x5f, s16
	smov_b32 s4, 0
	.loc	2 192 18 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:192:18
	bra_smsks LBB2_6
; %bb.5:                                ; %if.then25
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	smov_b32 s17, 0
	sshl_b64 s2, 2, s16
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	.loc	2 193 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:193:15
	ldu_b32 s4, s2, 0x0
LBB2_6:                                 ; %if.end28
	.loc	2 198 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:198:20
	arrive slcnt(0)
	sashr_i32 s5, 31, s4
	sshl_b64 s2, 2, s4
	sadd_co_u32 s10, s46, s2
	saddc_co_u32 s11, s47, s3
	.loc	2 199 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:199:22
	sadd_co_u32 s2, s44, s2
	saddc_co_u32 s3, s45, s3
	.loc	2 198 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:198:20
	ldu_b32 s1, s10, 0x0
	.loc	2 199 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:199:22
	ldu_b32 s2, s2, 0x0
	scmp_gt_u32 s0, 15
	and_b32 r1, 0x3ff, r0
	smul_i32 s3, 0xe00000, s4
	smul_i32 s4, 0xe0000, s0
	cmp_lt_u32 s10, s0, 16
	scsel_b64 s22, -1, 0
	sadd_co_i32 s3, s3, s4
	cmp_lt_u32 s18, r1, 64
	cmp_gt_u32 s20, r1, 63
	cmp_gt_u32 s4, 0x80, r1
	and_b32 r3, r0, 7
	bfe_u32 r36, r1, 3, 3
	bfe_u32 r4, r0, 3, 7
	xor_b32 r0, r36, r3
	scmp_ne_u64 s22, 0
	shl_b32 r71, 4, r0
	shl_b32 r37, 4, r3
	bra_smsks LBB2_72
; %bb.7:                                ; %for.body55.us.preheader
.Ltmp5:
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	mul_u24 r6, 0x3800, r36
	.loc	2 97 45                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:97:45
	shl_or_b32 r0, 7, r36, r37
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	mul_hi_u24 r7, 0x3800, r36
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r2, r6, r71
	shl_b64 r8, 0, s40
	mov_b32 r5, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_9
; %bb.8:                                ; %if.else.i1421.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r5, s17
	sor_b64 s24, s24, s26
LBB2_9:                                 ; %Flow737
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_11
; %bb.10:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	add_co_u32 r8, r8, r2
	add_u32 r0, r5, r0
	addc_co_u32 r9, r9, r7
.Ltmp6:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r0
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp7:
LBB2_11:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp8:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r6
	addc_co_u32 r2, r7, 0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r5, r36, 8
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r6, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %if.else.i.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_13:                                ; %Flow736
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_15
; %bb.14:                               ; %for.inc70.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r5, 7, r5, r37
	add_u32 r5, r7, r5
	add_co_u32 r6, r8, r6
	addc_co_u32 r7, r9, r2
.Ltmp9:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r5
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s17
.Ltmp10:
LBB2_15:                                ; %for.inc70.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp11:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 16
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.else.i1421.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_17:                                ; %Flow735
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_19
; %bb.18:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp12:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp13:
LBB2_19:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp14:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 24
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_21
; %bb.20:                               ; %if.else.i.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_21:                                ; %Flow734
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_23
; %bb.22:                               ; %for.inc70.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp15:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp16:
LBB2_23:                                ; %for.inc70.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp17:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 32
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_25
; %bb.24:                               ; %if.else.i1421.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_25:                                ; %Flow733
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp18:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp19:
LBB2_27:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp20:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 40
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_29
; %bb.28:                               ; %if.else.i.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_29:                                ; %Flow732
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_31
; %bb.30:                               ; %for.inc70.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp21:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp22:
LBB2_31:                                ; %for.inc70.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp23:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 48
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.else.i1421.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_33:                                ; %Flow731
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_35
; %bb.34:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp24:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp25:
LBB2_35:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp26:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 56
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_37
; %bb.36:                               ; %if.else.i.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_37:                                ; %Flow730
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_39
; %bb.38:                               ; %for.inc70.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp27:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp28:
LBB2_39:                                ; %for.inc70.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp29:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, r36, 64
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_41
; %bb.40:                               ; %if.else.i1421.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_41:                                ; %Flow729
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp30:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp31:
LBB2_43:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp32:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x48, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_45
; %bb.44:                               ; %if.else.i.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_45:                                ; %Flow728
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_47
; %bb.46:                               ; %for.inc70.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp33:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp34:
LBB2_47:                                ; %for.inc70.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp35:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x50, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.else.i1421.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_49:                                ; %Flow727
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_51
; %bb.50:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp36:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp37:
LBB2_51:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp38:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x58, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_53
; %bb.52:                               ; %if.else.i.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_53:                                ; %Flow726
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_55
; %bb.54:                               ; %for.inc70.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp39:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp40:
LBB2_55:                                ; %for.inc70.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp41:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x60, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_57
; %bb.56:                               ; %if.else.i1421.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_57:                                ; %Flow725
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_59
; %bb.58:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp42:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp43:
LBB2_59:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp44:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x68, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.else.i.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_61:                                ; %Flow724
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %for.inc70.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp45:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp46:
LBB2_63:                                ; %for.inc70.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp47:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r6, 0x70, r36
	.loc	2 98 38                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	or_b32 r5, r0, r71
	shl_b64 r8, 0, s40
	mov_b32 r7, 0
	.loc	2 99 7 is_stmt 1                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s24, -1
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB2_65
; %bb.64:                               ; %if.else.i1421.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s24, -1, xmsk
	sand_b64 s26, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r7, s17
	sor_b64 s24, s24, s26
LBB2_65:                                ; %Flow723
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.7.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	mad_i32 r8, s3, 2, r8
	shl_or_b32 r6, 7, r6, r37
	add_co_u32 r8, r8, r5
	add_u32 r6, r7, r6
	addc_co_u32 r9, r9, r2
.Ltmp48:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s24, r6
	smov_b32 s17, md
	snop 2
	smov_b32 md, s24
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s17
.Ltmp49:
LBB2_67:                                ; %_Z31moe_stage_gate_up_one_wave_7168PvS_PKvS1_ii.exit1433.us.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
.Ltmp50:
	.loc	2 98 38 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:38
	add_co_u32 r0, r0, r71
	addc_co_u32 r2, r2, 0
	.loc	2 98 46 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	add_co_u32 r0, 0x1c000, r0
	.loc	2 95 36 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:95:36
	or_b32 r5, 0x78, r36
	.loc	2 98 46                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:98:46
	addc_co_u32 r2, r2, 0
	shl_b64 r8, 0, s40
	mov_b32 r6, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	smov_b64 s22, -1
	and_xmsk s24, s20
	snop 0
	bra_xmskz LBB2_69
; %bb.68:                               ; %if.else.i.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sadd_co_i32 s17, 0x4000, 0
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	sandn_b64 s20, -1, xmsk
	sand_b64 s4, s4, xmsk
	shl_b64 r8, 0, s14
	mov_b32 r6, s17
	sor_b64 s22, s20, s4
LBB2_69:                                ; %Flow721
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s24
	.loc	2 99 7                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:99:7
	and_xmsk s4, s22
	snop 0
	bra_xmskz LBB2_71
; %bb.70:                               ; %for.cond74.preheader.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	shl_or_b32 r5, 7, r5, r37
	mad_i32 r8, s3, 2, r8
	add_u32 r5, r6, r5
	add_co_u32 r6, r8, r0
	addc_co_u32 r7, r9, r2
.Ltmp51:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s20, r5
	smov_b32 s17, md
	snop 2
	smov_b32 md, s20
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s17
.Ltmp52:
LBB2_71:                                ; %Flow722
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
LBB2_72:                                ; %for.cond74.preheader
	shr_b32 r0, 6, r1
	mul_u24 r68, 0x38000, r0
	and_b32 r0, r1, 15
	.loc	2 226 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:226:41
	shl_b64 r202, 0, 0
	mul_u24 r69, 0x1c00, r0
	arrive slcnt(0)
	stp_b32 s33, 0x28, r0                   ; 4-byte Folded Spill
	shr_b32 r0, 1, r1
	smul_i32 s4, 0xe0000, s16
	and_b32 r70, r0, 24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r200, 0, r202
	shl_b64 r198, 0, r202
	shl_b64 r196, 0, r202
	shl_b64 r218, 0, r202
	shl_b64 r216, 0, r202
	shl_b64 r214, 0, r202
	shl_b64 r212, 0, r202
	bra_cmsks LBB2_74
; %bb.73:                               ; %for.body78.us.preheader
	.loc	2 0 41 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:41
	or_b32 r5, r70, r69
	add_u32 r5, r5, r68
	add_u32 r8, r5, s4
	mov_b32 r9, 0
	.loc	2 222 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:35
	shl_b64 r6, 1, r8
	add_co_u32 r6, s12, r6
	mov_b32 r5, s13
	addc_co_u32 r7, r5, r7
	add_co_u32 r10, 0x38000, r6
	smov_b64 s20, 0x38000
	.loc	2 222 17 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:17
	ldg_b128 r212, r6, 0x0
	.loc	2 222 315                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:315
	or_b32 r6, r8, 32
	.loc	2 222 35                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:35
	addc_co_u32 r11, r7, 0
	mad_u32 r6, r6, 2, s12
	.loc	2 222 315                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:315
	mad_u32 r8, r8, 2, s20
	.loc	2 222 35                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:35
	add_co_u32 r8, s12, r8
	addc_co_u32 r9, r5, r9
	.loc	2 222 17                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:222:17
	ldg_b128 r216, r10, 0x0
	ldg_b128 r196, r6, 0x0
	ldg_b128 r200, r8, 0x40
LBB2_74:                                ; %for.cond139.preheader
	.loc	2 0 17                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:17
	shr_b32 r5, 5, r1
	add_shl_u32 r5, r5, r0, 4
	and_b32 r20, r5, 16
	shr_b32 r5, 4, r1
	add_shl_u32 r21, r5, r1, 3
	and_b32 r5, 0x3c0, r1
	cmp_eq_u32 s20, r5, 64
	xor_b32 r5, r4, r1
	shl_b32 r38, 7, r4
	.loc	2 228 3 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:228:3
	add_u32 r68, s4, r68
	shl_b64 r80, 0, s14
	shl_b32 r72, 4, r5
	smov_b32 s5, 0x70
	mul_u24 r75, 0x3800, r4
	or_b32 r52, r38, r37
	add_u32 r68, r68, r69
	and_or_b32 r69, r72, s5, r75
	mad_i32 r80, s3, 2, r80
	or_b32 r39, 0x800, r38
	mul_u24 r78, 0x3800, r36
	stp_b32 s33, 0x2c, r0                   ; 4-byte Folded Spill
	add_u32 r0, 0, r52
	mul_hi_u24 r74, 0x3800, r4
	or_b32 r53, 0x400, r52
	add_co_u32 r69, r80, r69
	shl_b32 r5, 4, r1
	or_b32 r66, 0x3800, r38
	or_b32 r71, r78, r71
	or_b32 r54, r39, r37
	stp_b32 s33, 0x4, r0                    ; 4-byte Folded Spill
	add_u32 r0, 0, r53
	add_u32 r68, r68, r70
	addc_co_u32 r70, r81, r74
	or_b32 r41, 0x1000, r38
	or_b32 r43, 0x1800, r38
	or_b32 r45, 0x2000, r38
	or_b32 r47, 0x2800, r38
	or_b32 r49, 0x3000, r38
	stp_b32 s33, 0x8, r0                    ; 4-byte Folded Spill
	add_u32 r0, 0, r54
	and_b32 r51, 0x70, r5
	sadd_co_i32 s17, 0x8000, 0
	or_b32 r55, 0xc00, r52
	or_b32 r67, r66, r37
	or_b32 r76, 0x3c00, r52
	mul_hi_u24 r77, 0x3800, r36
	add_co_u32 r71, r80, r71
	xor_b32 r73, r3, r4
	or_b32 r56, r41, r37
	or_b32 r58, r43, r37
	or_b32 r60, r45, r37
	or_b32 r62, r47, r37
	or_b32 r64, r49, r37
	add_u32 r18, s17, r67
	add_u32 r19, s17, r76
	shl_or_b32 r36, 7, r36, r37
	or_b32 r37, r38, r51
	or_b32 r39, r39, r51
	or_b32 r41, r41, r51
	or_b32 r43, r43, r51
	or_b32 r45, r45, r51
	or_b32 r47, r47, r51
	or_b32 r49, r49, r51
	or_b32 r51, r66, r51
	add_u32 r66, 0, r67
	stp_b32 s33, 0xc, r0                    ; 4-byte Folded Spill
	add_u32 r0, 0, r55
	add_u32 r67, 0, r76
	addc_co_u32 r72, r81, r77
	shl_b64 r76, 0, s40
	shl_b32 r3, 6, r1
	shl_b32 r22, 3, r1
	stp_b32 s33, 0x10, r0                   ; 4-byte Folded Spill
	add_u32 r0, 0, r56
	or_b32 r57, 0x1400, r52
	shl_or_b32 r73, 4, r73, r75
	mad_i32 r76, s3, 2, r76
	and_b32 r27, 0x3c0, r3
	add_co_u32 r73, r76, r73
	and_b32 r28, r22, 32
	or_b32 r59, 0x1c00, r52
	or_b32 r61, 0x2400, r52
	or_b32 r63, 0x2c00, r52
	or_b32 r65, 0x3400, r52
	and_or_b32 r35, r21, 8, r20
	stp_b32 s33, 0x14, r0                   ; 4-byte Folded Spill
	add_u32 r0, 0, r57
	add_u32 r16, s17, r64
	add_u32 r17, s17, r65
	or_b32 r29, r35, r27
	stp_b32 s33, 0x18, r0                   ; 4-byte Folded Spill
	add_u32 r0, 0, r58
	addc_co_u32 r74, r77, r74
	add_u32 r4, s17, r52
	add_u32 r5, s17, r53
	add_u32 r6, s17, r54
	add_u32 r7, s17, r55
	add_u32 r8, s17, r56
	add_u32 r9, s17, r57
	add_u32 r10, s17, r58
	add_u32 r11, s17, r59
	add_u32 r12, s17, r60
	add_u32 r13, s17, r61
	add_u32 r14, s17, r62
	add_u32 r15, s17, r63
	sadd_co_i32 s17, 0x4000, 0
	or_b32 r30, 0x400, r27
	or_b32 r31, r35, r28
	or_b32 r32, 0x800, r27
	or_b32 r33, 0xc00, r27
	or_b32 r34, 0x1000, r27
	or_b32 r40, 0x1400, r27
	or_b32 r42, 0x1800, r27
	or_b32 r44, 0x1c00, r27
	xor_b32 r46, r28, 32
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:0
	shl_b64 r76, 0, 0
	add_u32 r36, s17, r36
	or_b32 r20, r29, r28
	or_b32 r28, r29, r46
	or_b32 r21, r31, r30
	or_b32 r22, r31, r32
	or_b32 r23, r31, r33
	or_b32 r24, r31, r34
	or_b32 r25, r31, r40
	or_b32 r26, r31, r42
	or_b32 r27, r31, r44
	or3_b32 r31, r35, r33, r46
	or3_b32 r33, r35, r40, r46
	or3_b32 r29, r35, r30, r46
	or3_b32 r30, r35, r32, r46
	or3_b32 r32, r35, r34, r46
	or3_b32 r34, r35, r42, r46
	or3_b32 r35, r35, r44, r46
	shr_b32 r2, 2, r1
	stp_b32 s33, 0x1c, r0                   ; 4-byte Folded Spill
	add_u32 r0, 0, r59
	shl_b64 r78, 0, 0
	shl_b64 r84, 0, r76
	shl_b64 r92, 0, r76
	shl_b64 r100, 0, r76
	shl_b64 r108, 0, r76
	shl_b64 r116, 0, r76
	shl_b64 r124, 0, r76
	shl_b64 r132, 0, r76
	shl_b64 r140, 0, r76
	shl_b64 r148, 0, r76
	shl_b64 r156, 0, r76
	shl_b64 r164, 0, r76
	shl_b64 r172, 0, r76
	shl_b64 r180, 0, r76
	shl_b64 r188, 0, r76
	shl_b64 r204, 0, r76
	shl_b64 r80, 0, r76
	shl_b64 r88, 0, r76
	shl_b64 r96, 0, r76
	shl_b64 r104, 0, r76
	shl_b64 r112, 0, r76
	shl_b64 r120, 0, r76
	shl_b64 r128, 0, r76
	shl_b64 r136, 0, r76
	shl_b64 r144, 0, r76
	shl_b64 r152, 0, r76
	shl_b64 r160, 0, r76
	shl_b64 r168, 0, r76
	shl_b64 r176, 0, r76
	shl_b64 r184, 0, r76
	shl_b64 r192, 0, r76
	shl_b64 r208, 0, r76
	stp_b32 s33, 0x30, r2                   ; 4-byte Folded Spill
	stp_b32 s33, 0x20, r0                   ; 4-byte Folded Spill
	add_u32 r52, 0, r63
	shl_add_u32 r20, 1, r20, 0
	shl_add_u32 r21, 1, r21, 0
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	shl_add_u32 r26, 1, r26, 0
	shl_add_u32 r27, 1, r27, 0
	shl_add_u32 r28, 1, r28, 0
	shl_add_u32 r29, 1, r29, 0
	shl_add_u32 r30, 1, r30, 0
	shl_add_u32 r31, 1, r31, 0
	shl_add_u32 r32, 1, r32, 0
	shl_add_u32 r33, 1, r33, 0
	shl_add_u32 r34, 1, r34, 0
	shl_add_u32 r35, 1, r35, 0
	add_u32 r37, s17, r37
	add_u32 r38, 0x800, r36
	add_u32 r39, s17, r39
	add_u32 r40, 0x1000, r36
	add_u32 r41, s17, r41
	add_u32 r42, 0x1800, r36
	add_u32 r43, s17, r43
	add_u32 r44, 0x2000, r36
	add_u32 r45, s17, r45
	add_u32 r46, 0x2800, r36
	add_u32 r47, s17, r47
	add_u32 r48, 0x3000, r36
	add_u32 r49, s17, r49
	add_u32 r50, 0x3800, r36
	add_u32 r51, s17, r51
	add_u32 r3, 0, r60
	add_u32 r0, 0, r61
	add_u32 r2, 0, r62
	add_u32 r64, 0, r64
	add_u32 r65, 0, r65
	smov_b64 s4, 0
	shl_b64 r86, 0, r78
	shl_b64 r94, 0, r78
	shl_b64 r102, 0, r78
	shl_b64 r110, 0, r78
	shl_b64 r118, 0, r78
	shl_b64 r126, 0, r78
	shl_b64 r134, 0, r78
	shl_b64 r142, 0, r78
	shl_b64 r150, 0, r78
	shl_b64 r158, 0, r78
	shl_b64 r166, 0, r78
	shl_b64 r174, 0, r78
	shl_b64 r182, 0, r78
	shl_b64 r190, 0, r78
	shl_b64 r206, 0, r78
	shl_b64 r82, 0, r78
	shl_b64 r90, 0, r78
	shl_b64 r98, 0, r78
	shl_b64 r106, 0, r78
	shl_b64 r114, 0, r78
	shl_b64 r122, 0, r78
	shl_b64 r130, 0, r78
	shl_b64 r138, 0, r78
	shl_b64 r146, 0, r78
	shl_b64 r154, 0, r78
	shl_b64 r162, 0, r78
	shl_b64 r170, 0, r78
	shl_b64 r178, 0, r78
	shl_b64 r186, 0, r78
	shl_b64 r194, 0, r78
	shl_b64 r210, 0, r78
	stp_b32 s33, 0x24, r52                  ; 4-byte Folded Spill
	bra LBB2_77
	.p2align	5
LBB2_75:                                ; %Flow
                                        ;   in Loop: Header=BB2_77 Depth=1
	sor_b64 xmsk, xmsk, s14
LBB2_76:                                ; %for.inc888
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 228 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:228:55
	sadd_co_u32 s4, 0x100, s4
	saddc_co_u32 s5, s5, 0
	scmp_eq_u64 0x3800, s4
	add_u32 r68, 0x80, r68
	.loc	2 228 3                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:228:3
	bra_smsks LBB2_231
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
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmskz LBB2_132
.Ltmp54:
; %bb.78:                               ; %for.cond166.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	4 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	shl_b64 r220, 0, 0
	.loc	2 242 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:242:24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r222, 0, 0
	bra_cmskz LBB2_150
LBB2_79:                                ; %if.end225
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:24
	shl_b64 r224, 0, 0
	shl_b64 r226, 0, 0
	.loc	2 242 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:242:24
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_81
LBB2_80:                                ; %if.then175.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:24
	mad_u32 r224, r68, 2, s12
	add_co_u32 r224, 0x38080, r224
	addc_co_u32 r225, r225, 0
	.loc	2 243 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:243:21
	snop 1
	ldg_b128 r224, r224, 0x0
LBB2_81:                                ; %if.end225.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 252 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:252:43
	lds_b128 r228, r20, 0x0
	lds_b128 r232, r21, 0x0
	lds_b128 r236, r22, 0x0
	lds_b128 r240, r23, 0x0
	.loc	2 270 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:270:22
	sandn_b64 cmsk, xmsk, s8
	.loc	2 258 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:258:57
	arrive bsmcnt(3)
	mma_16x16x16f16 r204, r228, r212, r204
	arrive bsmcnt(2)
	mma_16x16x16f16 r188, r232, r212, r188
	arrive bsmcnt(1)
	mma_16x16x16f16 r180, r236, r212, r180
	arrive bsmcnt(0)
	mma_16x16x16f16 r172, r240, r212, r172
	.loc	2 252 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:252:43
	lds_b128 r244, r24, 0x0
	lds_b128 r248, r25, 0x0
	lds_b128 r252, r26, 0x0
	lds_b128 r52, r27, 0x0
	.loc	2 258 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:258:57
	arrive bsmcnt(3)
	mma_16x16x16f16 r164, r244, r212, r164
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r248, r212, r156
	arrive bsmcnt(1)
	mma_16x16x16f16 r148, r252, r212, r148
	arrive bsmcnt(0)
	mma_16x16x16f16 r140, r52, r212, r140
	mma_16x16x16f16 r132, r228, r216, r132
	mma_16x16x16f16 r124, r232, r216, r124
	mma_16x16x16f16 r116, r236, r216, r116
	mma_16x16x16f16 r108, r240, r216, r108
	mma_16x16x16f16 r100, r244, r216, r100
	mma_16x16x16f16 r92, r248, r216, r92
	mma_16x16x16f16 r84, r252, r216, r84
	mma_16x16x16f16 r76, r52, r216, r76
	mma_16x16x16f16 r204, r230, r214, r204
	mma_16x16x16f16 r188, r234, r214, r188
	mma_16x16x16f16 r180, r238, r214, r180
	mma_16x16x16f16 r172, r242, r214, r172
	mma_16x16x16f16 r164, r246, r214, r164
	mma_16x16x16f16 r156, r250, r214, r156
	mma_16x16x16f16 r148, r254, r214, r148
	mma_16x16x16f16 r140, r54, r214, r140
	mma_16x16x16f16 r132, r230, r218, r132
	mma_16x16x16f16 r124, r234, r218, r124
	mma_16x16x16f16 r116, r238, r218, r116
	mma_16x16x16f16 r108, r242, r218, r108
	mma_16x16x16f16 r100, r246, r218, r100
	mma_16x16x16f16 r92, r250, r218, r92
	mma_16x16x16f16 r84, r254, r218, r84
	mma_16x16x16f16 r76, r54, r218, r76
	.loc	2 252 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:252:43
	lds_b128 r52, r28, 0x0
	lds_b128 r228, r29, 0x0
	lds_b128 r232, r30, 0x0
	lds_b128 r236, r31, 0x0
	.loc	2 258 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:258:57
	arrive bsmcnt(3)
	mma_16x16x16f16 r204, r52, r196, r204
	arrive bsmcnt(2)
	mma_16x16x16f16 r188, r228, r196, r188
	arrive bsmcnt(1)
	mma_16x16x16f16 r180, r232, r196, r180
	arrive bsmcnt(0)
	mma_16x16x16f16 r172, r236, r196, r172
	.loc	2 252 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:252:43
	lds_b128 r240, r32, 0x0
	.loc	2 258 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:258:57
	arrive bsmcnt(0)
	mma_16x16x16f16 r164, r240, r196, r164
	.loc	2 252 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:252:43
	lds_b128 r244, r33, 0x0
	lds_b128 r248, r34, 0x0
	lds_b128 r252, r35, 0x0
	.loc	2 258 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:258:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r244, r196, r156
	arrive bsmcnt(1)
	mma_16x16x16f16 r148, r248, r196, r148
	arrive bsmcnt(0)
	mma_16x16x16f16 r140, r252, r196, r140
	mma_16x16x16f16 r132, r52, r200, r132
	mma_16x16x16f16 r124, r228, r200, r124
	mma_16x16x16f16 r116, r232, r200, r116
	shl_b64 r228, 0, 0
	mma_16x16x16f16 r108, r236, r200, r108
	mma_16x16x16f16 r100, r240, r200, r100
	mma_16x16x16f16 r92, r244, r200, r92
	mma_16x16x16f16 r84, r248, r200, r84
	mma_16x16x16f16 r76, r252, r200, r76
	mma_16x16x16f16 r204, r54, r198, r204
	mma_16x16x16f16 r188, r230, r198, r188
	mma_16x16x16f16 r180, r234, r198, r180
	mma_16x16x16f16 r172, r238, r198, r172
	mma_16x16x16f16 r164, r242, r198, r164
	mma_16x16x16f16 r156, r246, r198, r156
	mma_16x16x16f16 r148, r250, r198, r148
	mma_16x16x16f16 r140, r254, r198, r140
	mma_16x16x16f16 r132, r54, r202, r132
	mma_16x16x16f16 r124, r230, r202, r124
	mma_16x16x16f16 r116, r234, r202, r116
	shl_b64 r230, 0, 0
	mma_16x16x16f16 r108, r238, r202, r108
	mma_16x16x16f16 r100, r242, r202, r100
	mma_16x16x16f16 r92, r246, r202, r92
	mma_16x16x16f16 r84, r250, r202, r84
	mma_16x16x16f16 r76, r254, r202, r76
	.loc	2 270 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:270:22
	bra_cmsks LBB2_83
; %bb.82:                               ; %if.then335
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:22
	mad_u32 r52, r68, 2, s12
	.loc	2 271 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:271:19
	snop 1
	ldg_b128 r228, r52, 0xc0
LBB2_83:                                ; %if.end385
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:19
	shl_b64 r232, 0, 0
	shl_b64 r234, 0, 0
	.loc	2 270 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:270:22
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_85
; %bb.84:                               ; %if.then335.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 22 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:22
	mad_u32 r52, r68, 2, s12
	add_co_u32 r52, 0x380c0, r52
	addc_co_u32 r53, r53, 0
	.loc	2 271 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:271:19
	snop 1
	ldg_b128 r232, r52, 0x0
LBB2_85:                                ; %if.end385.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	add_i32 r75, 0x4000, r20
	snop 1
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x4000, r21
	snop 1
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x4000, r22
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r208, r52, r212, r208
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x4000, r23
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r192, r236, r212, r192
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r244, r75, 0x0
	add_i32 r75, 0x4000, r24
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r184, r240, r212, r184
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r248, r75, 0x0
	add_i32 r75, 0x4000, r25
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r176, r244, r212, r176
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r252, r75, 0x0
	add_i32 r75, 0x4000, r26
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r168, r248, r212, r168
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x4000, r27
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r252, r212, r160
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x4000, r28
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r152, r56, r212, r152
	arrive bsmcnt(0)
	mma_16x16x16f16 r144, r60, r212, r144
	mma_16x16x16f16 r136, r52, r216, r136
	mma_16x16x16f16 r128, r236, r216, r128
	mma_16x16x16f16 r120, r240, r216, r120
	mma_16x16x16f16 r112, r244, r216, r112
	mma_16x16x16f16 r104, r248, r216, r104
	mma_16x16x16f16 r96, r252, r216, r96
	mma_16x16x16f16 r88, r56, r216, r88
	mma_16x16x16f16 r80, r60, r216, r80
	mma_16x16x16f16 r208, r54, r214, r208
	mma_16x16x16f16 r192, r238, r214, r192
	mma_16x16x16f16 r184, r242, r214, r184
	mma_16x16x16f16 r176, r246, r214, r176
	mma_16x16x16f16 r168, r250, r214, r168
	mma_16x16x16f16 r160, r254, r214, r160
	mma_16x16x16f16 r152, r58, r214, r152
	mma_16x16x16f16 r144, r62, r214, r144
	mma_16x16x16f16 r136, r54, r218, r136
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x4000, r29
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	mma_16x16x16f16 r128, r238, r218, r128
	mma_16x16x16f16 r120, r242, r218, r120
	mma_16x16x16f16 r112, r246, r218, r112
	mma_16x16x16f16 r104, r250, r218, r104
	mma_16x16x16f16 r96, r254, r218, r96
	mma_16x16x16f16 r88, r58, r218, r88
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x4000, r30
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	mma_16x16x16f16 r80, r62, r218, r80
	arrive bsmcnt(1)
	mma_16x16x16f16 r208, r52, r196, r208
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x4000, r31
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r192, r56, r196, r192
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x4000, r32
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r184, r60, r196, r184
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x4000, r33
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r176, r236, r196, r176
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r244, r75, 0x0
	add_i32 r75, 0x4000, r34
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r168, r240, r196, r168
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r248, r75, 0x0
	add_i32 r75, 0x4000, r35
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r244, r196, r160
	.loc	2 279 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:279:45
	lds_b128 r252, r75, 0x0
	.loc	2 285 55                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:285:55
	arrive bsmcnt(1)
	mma_16x16x16f16 r152, r248, r196, r152
	arrive bsmcnt(0)
	mma_16x16x16f16 r144, r252, r196, r144
	mma_16x16x16f16 r136, r52, r200, r136
	mma_16x16x16f16 r128, r56, r200, r128
	mma_16x16x16f16 r120, r60, r200, r120
	mma_16x16x16f16 r112, r236, r200, r112
	mma_16x16x16f16 r104, r240, r200, r104
	mma_16x16x16f16 r96, r244, r200, r96
	mma_16x16x16f16 r88, r248, r200, r88
	mma_16x16x16f16 r80, r252, r200, r80
	mma_16x16x16f16 r208, r54, r198, r208
	mma_16x16x16f16 r192, r58, r198, r192
	mma_16x16x16f16 r184, r62, r198, r184
	mma_16x16x16f16 r176, r238, r198, r176
	mma_16x16x16f16 r168, r242, r198, r168
	mma_16x16x16f16 r160, r246, r198, r160
	mma_16x16x16f16 r152, r250, r198, r152
	mma_16x16x16f16 r144, r254, r198, r144
	mma_16x16x16f16 r136, r54, r202, r136
	mma_16x16x16f16 r128, r58, r202, r128
	mma_16x16x16f16 r120, r62, r202, r120
	mma_16x16x16f16 r112, r238, r202, r112
	mma_16x16x16f16 r104, r242, r202, r104
	mma_16x16x16f16 r96, r246, r202, r96
	mma_16x16x16f16 r88, r250, r202, r88
	mma_16x16x16f16 r80, r254, r202, r80
.Ltmp55:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp56:
	.loc	2 296 13                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:296:13
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmsks LBB2_104
; %bb.86:                               ; %if.then496
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp57:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_151
.Ltmp58:
; %bb.87:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp59:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_152
.Ltmp60:
LBB2_88:                                ; %if.then496.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp61:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_153
.Ltmp62:
LBB2_89:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp63:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_154
.Ltmp64:
LBB2_90:                                ; %if.then496.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp65:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_155
.Ltmp66:
LBB2_91:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp67:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_156
.Ltmp68:
LBB2_92:                                ; %if.then496.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp69:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_157
.Ltmp70:
LBB2_93:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp71:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_158
.Ltmp72:
LBB2_94:                                ; %if.then496.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp73:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_159
.Ltmp74:
LBB2_95:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp75:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_160
.Ltmp76:
LBB2_96:                                ; %if.then496.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp77:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_161
.Ltmp78:
LBB2_97:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp79:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_162
.Ltmp80:
LBB2_98:                                ; %if.then496.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp81:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_163
.Ltmp82:
LBB2_99:                                ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp83:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_164
.Ltmp84:
LBB2_100:                               ; %if.then496.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp85:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_165
.Ltmp86:
LBB2_101:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1542.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp87:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_103
LBB2_102:                               ; %if.then.i1509.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp88:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x188080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r51
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
.Ltmp89:
LBB2_103:                               ; %Flow717
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s14
LBB2_104:                               ; %for.inc507.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp90:
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp91:
	.loc	2 302 28                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:302:28
	mov_b32 r52, 0x3700
	mov_b32 r53, 0
	cmp_lg_u64 s14, s4, r52
	scmp_eq_u64 0x3700, s4
	.loc	2 302 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:302:9
	snop 0
	bra_smsks LBB2_109
; %bb.105:                              ; %for.cond515.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 305 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:305:15
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmskz LBB2_166
; %bb.106:                              ; %if.then540
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:15
	shl_b64 r212, 0, 0
	.loc	2 315 26 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:315:26
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r214, 0, 0
	bra_cmskz LBB2_184
LBB2_107:                               ; %if.end594
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 26 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:26
	shl_b64 r216, 0, 0
	shl_b64 r218, 0, 0
	.loc	2 315 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:315:26
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_109
LBB2_108:                               ; %if.then544.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 26                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:26
	mad_u32 r52, r68, 2, s12
	add_co_u32 r52, 0x38100, r52
	addc_co_u32 r53, r53, 0
	.loc	2 316 23 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:316:23
	snop 1
	ldg_b128 r216, r52, 0x0
LBB2_109:                               ; %if.end603
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	add_i32 r75, 0x8000, r20
	snop 1
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x8000, r21
	.loc	2 340 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:340:9
	sandn_b64 cmsk, xmsk, s14
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	snop 0
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x8000, r22
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r204, r52, r220, r204
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x8000, r23
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r188, r56, r220, r188
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x8000, r24
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r180, r60, r220, r180
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x8000, r25
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r236, r220, r172
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r244, r75, 0x0
	add_i32 r75, 0x8000, r26
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r164, r240, r220, r164
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r248, r75, 0x0
	add_i32 r75, 0x8000, r27
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r156, r244, r220, r156
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r252, r75, 0x0
	add_i32 r75, 0x8000, r28
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r148, r248, r220, r148
	arrive bsmcnt(0)
	mma_16x16x16f16 r140, r252, r220, r140
	mma_16x16x16f16 r132, r52, r224, r132
	mma_16x16x16f16 r124, r56, r224, r124
	mma_16x16x16f16 r116, r60, r224, r116
	mma_16x16x16f16 r108, r236, r224, r108
	mma_16x16x16f16 r100, r240, r224, r100
	mma_16x16x16f16 r92, r244, r224, r92
	mma_16x16x16f16 r84, r248, r224, r84
	mma_16x16x16f16 r76, r252, r224, r76
	mma_16x16x16f16 r204, r54, r222, r204
	mma_16x16x16f16 r188, r58, r222, r188
	mma_16x16x16f16 r180, r62, r222, r180
	mma_16x16x16f16 r172, r238, r222, r172
	mma_16x16x16f16 r164, r242, r222, r164
	mma_16x16x16f16 r156, r246, r222, r156
	mma_16x16x16f16 r148, r250, r222, r148
	mma_16x16x16f16 r140, r254, r222, r140
	mma_16x16x16f16 r132, r54, r226, r132
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x8000, r29
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	mma_16x16x16f16 r124, r58, r226, r124
	mma_16x16x16f16 r116, r62, r226, r116
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x8000, r30
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	mma_16x16x16f16 r108, r238, r226, r108
	mma_16x16x16f16 r100, r242, r226, r100
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x8000, r31
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	mma_16x16x16f16 r92, r246, r226, r92
	mma_16x16x16f16 r84, r250, r226, r84
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x8000, r32
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	mma_16x16x16f16 r76, r254, r226, r76
	arrive bsmcnt(3)
	mma_16x16x16f16 r204, r52, r228, r204
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x8000, r33
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(3)
	mma_16x16x16f16 r188, r56, r228, r188
	arrive bsmcnt(2)
	mma_16x16x16f16 r180, r60, r228, r180
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r244, r75, 0x0
	add_i32 r75, 0x8000, r34
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r236, r228, r172
	arrive bsmcnt(1)
	mma_16x16x16f16 r164, r240, r228, r164
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r248, r75, 0x0
	add_i32 r75, 0x8000, r35
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r156, r244, r228, r156
	.loc	2 326 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:326:45
	lds_b128 r252, r75, 0x0
	.loc	2 332 57                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:332:57
	arrive bsmcnt(1)
	mma_16x16x16f16 r148, r248, r228, r148
	arrive bsmcnt(0)
	mma_16x16x16f16 r140, r252, r228, r140
	mma_16x16x16f16 r132, r52, r232, r132
	mma_16x16x16f16 r124, r56, r232, r124
	mma_16x16x16f16 r116, r60, r232, r116
	mma_16x16x16f16 r108, r236, r232, r108
	mma_16x16x16f16 r100, r240, r232, r100
	mma_16x16x16f16 r92, r244, r232, r92
	mma_16x16x16f16 r84, r248, r232, r84
	mma_16x16x16f16 r76, r252, r232, r76
	mma_16x16x16f16 r204, r54, r230, r204
	mma_16x16x16f16 r188, r58, r230, r188
	mma_16x16x16f16 r180, r62, r230, r180
	mma_16x16x16f16 r172, r238, r230, r172
	mma_16x16x16f16 r164, r242, r230, r164
	mma_16x16x16f16 r156, r246, r230, r156
	mma_16x16x16f16 r148, r250, r230, r148
	mma_16x16x16f16 r140, r254, r230, r140
	mma_16x16x16f16 r132, r54, r234, r132
	mma_16x16x16f16 r124, r58, r234, r124
	mma_16x16x16f16 r116, r62, r234, r116
	mma_16x16x16f16 r108, r238, r234, r108
	mma_16x16x16f16 r100, r242, r234, r100
	mma_16x16x16f16 r92, r246, r234, r92
	mma_16x16x16f16 r84, r250, r234, r84
	mma_16x16x16f16 r76, r254, r234, r76
	.loc	2 340 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:340:9
	bra_cmsks LBB2_114
; %bb.110:                              ; %for.cond701.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	shl_b64 r196, 0, 0
	.loc	2 345 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:345:24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r198, 0, 0
	bra_cmsks LBB2_112
; %bb.111:                              ; %if.then708
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:24
	mad_u32 r52, r68, 2, s12
	.loc	2 346 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:346:21
	snop 1
	ldg_b128 r196, r52, 0x140
LBB2_112:                               ; %if.end758
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 21 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:21
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	.loc	2 345 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:345:24
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmsks LBB2_114
; %bb.113:                              ; %if.then708.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:24
	mad_u32 r52, r68, 2, s12
	add_co_u32 r52, 0x38140, r52
	addc_co_u32 r53, r53, 0
	.loc	2 346 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:346:21
	snop 1
	ldg_b128 r200, r52, 0x0
LBB2_114:                               ; %if.end767
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	add_i32 r75, 0x4000, r20
	snop 1
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x4000, r21
	.loc	2 369 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:369:9
	sandn_b64 cmsk, xmsk, s14
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	snop 0
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x4000, r22
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r208, r52, r220, r208
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x4000, r23
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r192, r56, r220, r192
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x4000, r24
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r184, r60, r220, r184
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x4000, r25
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r176, r236, r220, r176
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r244, r75, 0x0
	add_i32 r75, 0x4000, r26
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r168, r240, r220, r168
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r248, r75, 0x0
	add_i32 r75, 0x4000, r27
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r244, r220, r160
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r252, r75, 0x0
	add_i32 r75, 0x4000, r28
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r152, r248, r220, r152
	arrive bsmcnt(0)
	mma_16x16x16f16 r144, r252, r220, r144
	mma_16x16x16f16 r136, r52, r224, r136
	mma_16x16x16f16 r128, r56, r224, r128
	mma_16x16x16f16 r120, r60, r224, r120
	mma_16x16x16f16 r112, r236, r224, r112
	mma_16x16x16f16 r104, r240, r224, r104
	mma_16x16x16f16 r96, r244, r224, r96
	mma_16x16x16f16 r88, r248, r224, r88
	mma_16x16x16f16 r80, r252, r224, r80
	mma_16x16x16f16 r208, r54, r222, r208
	mma_16x16x16f16 r192, r58, r222, r192
	mma_16x16x16f16 r184, r62, r222, r184
	mma_16x16x16f16 r176, r238, r222, r176
	mma_16x16x16f16 r168, r242, r222, r168
	mma_16x16x16f16 r160, r246, r222, r160
	mma_16x16x16f16 r152, r250, r222, r152
	mma_16x16x16f16 r144, r254, r222, r144
	mma_16x16x16f16 r136, r54, r226, r136
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r52, r75, 0x0
	add_i32 r75, 0x4000, r29
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	mma_16x16x16f16 r128, r58, r226, r128
	mma_16x16x16f16 r120, r62, r226, r120
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r56, r75, 0x0
	add_i32 r75, 0x4000, r30
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	mma_16x16x16f16 r112, r238, r226, r112
	mma_16x16x16f16 r104, r242, r226, r104
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r60, r75, 0x0
	add_i32 r75, 0x4000, r31
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	mma_16x16x16f16 r96, r246, r226, r96
	mma_16x16x16f16 r88, r250, r226, r88
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r220, r75, 0x0
	add_i32 r75, 0x4000, r32
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	mma_16x16x16f16 r80, r254, r226, r80
	arrive bsmcnt(3)
	mma_16x16x16f16 r208, r52, r228, r208
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r224, r75, 0x0
	add_i32 r75, 0x4000, r33
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(3)
	mma_16x16x16f16 r192, r56, r228, r192
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r60, r228, r184
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r236, r75, 0x0
	add_i32 r75, 0x4000, r34
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r220, r228, r176
	arrive bsmcnt(1)
	mma_16x16x16f16 r168, r224, r228, r168
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r240, r75, 0x0
	add_i32 r75, 0x4000, r35
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r236, r228, r160
	.loc	2 355 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:355:45
	lds_b128 r244, r75, 0x0
	.loc	2 361 56                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:361:56
	arrive bsmcnt(1)
	mma_16x16x16f16 r152, r240, r228, r152
	arrive bsmcnt(0)
	mma_16x16x16f16 r144, r244, r228, r144
	mma_16x16x16f16 r136, r52, r232, r136
	mma_16x16x16f16 r128, r56, r232, r128
	mma_16x16x16f16 r120, r60, r232, r120
	mma_16x16x16f16 r112, r220, r232, r112
	mma_16x16x16f16 r104, r224, r232, r104
	mma_16x16x16f16 r96, r236, r232, r96
	mma_16x16x16f16 r88, r240, r232, r88
	mma_16x16x16f16 r80, r244, r232, r80
	mma_16x16x16f16 r208, r54, r230, r208
	mma_16x16x16f16 r192, r58, r230, r192
	mma_16x16x16f16 r184, r62, r230, r184
	mma_16x16x16f16 r176, r222, r230, r176
	mma_16x16x16f16 r168, r226, r230, r168
	mma_16x16x16f16 r160, r238, r230, r160
	mma_16x16x16f16 r152, r242, r230, r152
	mma_16x16x16f16 r144, r246, r230, r144
	mma_16x16x16f16 r136, r54, r234, r136
	mma_16x16x16f16 r128, r58, r234, r128
	mma_16x16x16f16 r120, r62, r234, r120
	mma_16x16x16f16 r112, r222, r234, r112
	mma_16x16x16f16 r104, r226, r234, r104
	mma_16x16x16f16 r96, r238, r234, r96
	mma_16x16x16f16 r88, r242, r234, r88
	mma_16x16x16f16 r80, r246, r234, r80
	.loc	2 369 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:369:9
	bra_cmsks LBB2_76
; %bb.115:                              ; %if.then864
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp92:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp93:
	.loc	2 373 15                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:373:15
	sandn_b64 cmsk, xmsk, s10
	snop 0
	bra_cmsks LBB2_76
; %bb.116:                              ; %if.then872
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp94:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_200
.Ltmp95:
; %bb.117:                              ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp96:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_201
.Ltmp97:
LBB2_118:                               ; %if.then872.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp98:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_202
.Ltmp99:
LBB2_119:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp100:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_203
.Ltmp101:
LBB2_120:                               ; %if.then872.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp102:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_204
.Ltmp103:
LBB2_121:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp104:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_205
.Ltmp105:
LBB2_122:                               ; %if.then872.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp106:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_206
.Ltmp107:
LBB2_123:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp108:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_207
.Ltmp109:
LBB2_124:                               ; %if.then872.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp110:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_208
.Ltmp111:
LBB2_125:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp112:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_209
.Ltmp113:
LBB2_126:                               ; %if.then872.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp114:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_210
.Ltmp115:
LBB2_127:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp116:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_211
.Ltmp117:
LBB2_128:                               ; %if.then872.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp118:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_212
.Ltmp119:
LBB2_129:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp120:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_213
.Ltmp121:
LBB2_130:                               ; %if.then872.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp122:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_214
.Ltmp123:
LBB2_131:                               ; %_Z26moe_stage_up_one_wave_7168PvPKvii.exit1580.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 18                          ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:18
	sor_b64 xmsk, xmsk, s14
.Ltmp124:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_75
	bra LBB2_215
.Ltmp125:
	.p2align	5
LBB2_132:                               ; %for.body149.us.preheader
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 127 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_185
.Ltmp126:
; %bb.133:                              ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp127:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_186
.Ltmp128:
LBB2_134:                               ; %for.inc162.us
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp129:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_187
.Ltmp130:
LBB2_135:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp131:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_188
.Ltmp132:
LBB2_136:                               ; %for.inc162.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp133:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_189
.Ltmp134:
LBB2_137:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp135:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_190
.Ltmp136:
LBB2_138:                               ; %for.inc162.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp137:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_191
.Ltmp138:
LBB2_139:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp139:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_192
.Ltmp140:
LBB2_140:                               ; %for.inc162.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp141:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_193
.Ltmp142:
LBB2_141:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp143:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_194
.Ltmp144:
LBB2_142:                               ; %for.inc162.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp145:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_195
.Ltmp146:
LBB2_143:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp147:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_196
.Ltmp148:
LBB2_144:                               ; %for.inc162.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp149:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_197
.Ltmp150:
LBB2_145:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp151:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_198
.Ltmp152:
LBB2_146:                               ; %for.inc162.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp153:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_199
.Ltmp154:
LBB2_147:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1470.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s14
.Ltmp155:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_149
LBB2_148:                               ; %if.then.i1435.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp156:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x1a4080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r19
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
.Ltmp157:
LBB2_149:                               ; %Flow719
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s14
	shl_b64 r220, 0, 0
	.loc	2 242 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:242:24
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r222, 0, 0
	bra_cmsks LBB2_79
LBB2_150:                               ; %if.then175
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 24 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:24
	mad_u32 r220, r68, 2, s12
	.loc	2 243 21 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:243:21
	snop 1
	ldg_b128 r220, r220, 0x80
	shl_b64 r224, 0, 0
	shl_b64 r226, 0, 0
	.loc	2 242 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:242:24
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmskz LBB2_80
	bra LBB2_81
	.p2align	5
LBB2_151:                               ; %if.then.i1525
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp158:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x80, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp159:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_88
LBB2_152:                               ; %if.then.i1509
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp160:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x80, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r37
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp161:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_89
LBB2_153:                               ; %if.then.i1525.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp162:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x38080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r38
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp163:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_90
LBB2_154:                               ; %if.then.i1509.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp164:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x38080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp165:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_91
LBB2_155:                               ; %if.then.i1525.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp166:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x70080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp167:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_92
LBB2_156:                               ; %if.then.i1509.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp168:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x70080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r41
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp169:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_93
LBB2_157:                               ; %if.then.i1525.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp170:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0xa8080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r42
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp171:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_94
LBB2_158:                               ; %if.then.i1509.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp172:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0xa8080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp173:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_95
LBB2_159:                               ; %if.then.i1525.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp174:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0xe0080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp175:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_96
LBB2_160:                               ; %if.then.i1509.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp176:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0xe0080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r45
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp177:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_97
LBB2_161:                               ; %if.then.i1525.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp178:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x118080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r46
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp179:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_98
LBB2_162:                               ; %if.then.i1509.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp180:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x118080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp181:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_99
LBB2_163:                               ; %if.then.i1525.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp182:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x150080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp183:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_100
LBB2_164:                               ; %if.then.i1509.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp184:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r70, r236
	add_co_u32 r52, 0x150080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r49
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp185:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_101
LBB2_165:                               ; %if.then.i1525.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp186:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r236, s5
	addc_co_u32 r236, r72, r236
	add_co_u32 r52, 0x188080, r75
	addc_co_u32 r53, r236, 0
	rfl_b32 s17, r50
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp187:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmsks LBB2_102
	bra LBB2_103
.Ltmp188:
	.p2align	5
LBB2_166:                               ; %if.then520
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_216
.Ltmp189:
; %bb.167:                              ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp190:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_217
.Ltmp191:
LBB2_168:                               ; %if.then520.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp192:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_218
.Ltmp193:
LBB2_169:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.1
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp194:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_219
.Ltmp195:
LBB2_170:                               ; %if.then520.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp196:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_220
.Ltmp197:
LBB2_171:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.2
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp198:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_221
.Ltmp199:
LBB2_172:                               ; %if.then520.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp200:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_222
.Ltmp201:
LBB2_173:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.3
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp202:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_223
.Ltmp203:
LBB2_174:                               ; %if.then520.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp204:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_224
.Ltmp205:
LBB2_175:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.4
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp206:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_225
.Ltmp207:
LBB2_176:                               ; %if.then520.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp208:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_226
.Ltmp209:
LBB2_177:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.5
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp210:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_227
.Ltmp211:
LBB2_178:                               ; %if.then520.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp212:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_228
.Ltmp213:
LBB2_179:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.6
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp214:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_229
.Ltmp215:
LBB2_180:                               ; %if.then520.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp216:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_230
.Ltmp217:
LBB2_181:                               ; %_Z28moe_stage_gate_one_wave_7168PvPKvii.exit1508.7
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s22
.Ltmp218:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_183
LBB2_182:                               ; %if.then.i1472.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp219:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x1a4100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r67
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
.Ltmp220:
LBB2_183:                               ; %Flow714
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s22
	shl_b64 r212, 0, 0
	.loc	2 315 26 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:315:26
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r214, 0, 0
	bra_cmsks LBB2_107
LBB2_184:                               ; %if.then544
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	2 0 26 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:26
	mad_u32 r52, r68, 2, s12
	.loc	2 316 23 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:316:23
	snop 1
	ldg_b128 r212, r52, 0x100
	shl_b64 r216, 0, 0
	shl_b64 r218, 0, 0
	.loc	2 315 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:315:26
	sandn_b64 cmsk, xmsk, s8
	snop 0
	bra_cmskz LBB2_108
	bra LBB2_109
	.p2align	5
LBB2_185:                               ; %if.then.i1453.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp221:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x80, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp222:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_134
LBB2_186:                               ; %if.then.i1435.us
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp223:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x1c080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r5
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp224:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_135
LBB2_187:                               ; %if.then.i1453.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp225:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x38080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r6
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp226:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_136
LBB2_188:                               ; %if.then.i1435.us.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp227:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x54080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r7
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp228:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_137
LBB2_189:                               ; %if.then.i1453.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp229:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x70080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r8
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp230:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_138
LBB2_190:                               ; %if.then.i1435.us.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp231:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x8c080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r9
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp232:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_139
LBB2_191:                               ; %if.then.i1453.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp233:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0xa8080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r10
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp234:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_140
LBB2_192:                               ; %if.then.i1435.us.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp235:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0xc4080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r11
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp236:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_141
LBB2_193:                               ; %if.then.i1453.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp237:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0xe0080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r12
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp238:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_142
LBB2_194:                               ; %if.then.i1435.us.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp239:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0xfc080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r13
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp240:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_143
LBB2_195:                               ; %if.then.i1453.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp241:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x118080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r14
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp242:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_144
LBB2_196:                               ; %if.then.i1435.us.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp243:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x134080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r15
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp244:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_145
LBB2_197:                               ; %if.then.i1453.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp245:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x150080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r16
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp246:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_146
LBB2_198:                               ; %if.then.i1435.us.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp247:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x16c080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r17
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp248:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB2_147
LBB2_199:                               ; %if.then.i1453.us.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp249:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r74, r220
	add_co_u32 r222, 0x188080, r75
	addc_co_u32 r223, r220, 0
	rfl_b32 s17, r18
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r222, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp250:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s14, s18
	snop 0
	bra_xmsks LBB2_148
	bra LBB2_149
.Ltmp251:
LBB2_200:                               ; %if.then.i1563
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp252:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_118
LBB2_201:                               ; %if.then.i1544
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp253:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r37
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp254:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_119
LBB2_202:                               ; %if.then.i1563.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp255:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x38100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r38
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp256:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_120
LBB2_203:                               ; %if.then.i1544.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp257:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x38100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp258:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_121
LBB2_204:                               ; %if.then.i1563.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp259:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x70100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp260:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_122
LBB2_205:                               ; %if.then.i1544.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp261:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x70100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r41
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp262:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_123
LBB2_206:                               ; %if.then.i1563.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp263:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0xa8100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r42
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp264:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_124
LBB2_207:                               ; %if.then.i1544.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp265:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0xa8100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp266:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_125
LBB2_208:                               ; %if.then.i1563.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp267:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0xe0100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp268:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_126
LBB2_209:                               ; %if.then.i1544.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp269:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0xe0100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r45
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp270:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_127
LBB2_210:                               ; %if.then.i1563.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp271:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x118100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r46
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp272:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_128
LBB2_211:                               ; %if.then.i1544.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp273:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x118100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp274:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_129
LBB2_212:                               ; %if.then.i1563.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp275:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x150100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r48
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp276:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_130
LBB2_213:                               ; %if.then.i1544.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp277:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x150100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r49
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp278:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_131
LBB2_214:                               ; %if.then.i1563.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp279:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r71, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r72, r220
	add_co_u32 r52, 0x188100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r50
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s14
.Ltmp280:
	.loc	2 150 18                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:150:18
	and_xmsk s14, s20
	snop 0
	bra_xmskz LBB2_75
LBB2_215:                               ; %if.then.i1544.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp281:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r69, s4
	mov_b32 r220, s5
	addc_co_u32 r220, r70, r220
	add_co_u32 r52, 0x188100, r75
	addc_co_u32 r53, r220, 0
	rfl_b32 s17, r51
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	bra LBB2_75
.Ltmp282:
LBB2_216:                               ; %if.then.i1491
                                        ;   in Loop: Header=BB2_77 Depth=1
	.loc	3 268 5 is_stmt 0               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x4                   ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp283:
	.loc	2 127 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_168
LBB2_217:                               ; %if.then.i1472
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp284:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x8                   ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x1c100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp285:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_169
LBB2_218:                               ; %if.then.i1491.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp286:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0xc                   ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x38100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp287:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_170
LBB2_219:                               ; %if.then.i1472.1
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp288:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x10                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x54100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp289:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_171
LBB2_220:                               ; %if.then.i1491.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp290:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x14                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x70100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp291:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_172
LBB2_221:                               ; %if.then.i1472.2
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp292:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x18                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x8c100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp293:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_173
LBB2_222:                               ; %if.then.i1491.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp294:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x1c                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0xa8100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp295:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_174
LBB2_223:                               ; %if.then.i1472.3
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp296:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x20                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0xc4100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp297:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_175
LBB2_224:                               ; %if.then.i1491.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp298:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0xe0100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r3
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp299:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_176
LBB2_225:                               ; %if.then.i1472.4
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp300:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0xfc100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r0
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp301:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_177
LBB2_226:                               ; %if.then.i1491.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp302:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x118100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r2
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp303:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_178
LBB2_227:                               ; %if.then.i1472.5
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp304:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldp_b32 r54, s33, 0x24                  ; 4-byte Folded Reload
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x134100, r75
	addc_co_u32 r53, r212, 0
	smov_b32 s3, md
	arrive gvmcnt(0)
	rfl_b32 s17, r54
	snop 3
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp305:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_179
LBB2_228:                               ; %if.then.i1491.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp306:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x150100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r64
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp307:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_180
LBB2_229:                               ; %if.then.i1472.6
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp308:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x16c100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r65
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp309:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB2_181
LBB2_230:                               ; %if.then.i1491.7
                                        ;   in Loop: Header=BB2_77 Depth=1
.Ltmp310:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r75, r73, s4
	mov_b32 r212, s5
	addc_co_u32 r212, r74, r212
	add_co_u32 r52, 0x188100, r75
	addc_co_u32 r53, r212, 0
	rfl_b32 s17, r66
	smov_b32 s3, md
	snop 2
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r52, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s22
.Ltmp311:
	.loc	2 127 7                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:127:7
	and_xmsk s22, s18
	snop 0
	bra_xmsks LBB2_182
	bra LBB2_183
.Ltmp312:
LBB2_231:                               ; %for.cond891.preheader
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:7
	ldp_b32 r0, s33, 0x30                   ; 4-byte Folded Reload
	.loc	2 422 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:66
	ldp_b32 r2, s33, 0x2c                   ; 4-byte Folded Reload
	sshl_b32 s3, 7, s16
	ssub_co_i32 s1, s1, s3
	sadd_co_i32 s1, s1, s2
	smov_b32 s2, 0x1e0
	shl_b32 r4, 10, r1
	shl_b32 r1, 11, r1
	sshl_b32 s4, 18, s16
	and_b32 r4, 0xf0000, r4
	and_b32 r1, 0x7800, r1
	sshl_b32 s0, 7, s0
	sadd_co_i32 s0, s0, s4
	arrive gvmcnt(1)
	and_b32 r3, r0, 12
	ldp_b32 r0, s33, 0x28                   ; 4-byte Folded Reload
	or3_b32 r1, r1, r4, r3
	arrive gvmcnt(0)
	and_or_b32 r0, r2, s2, r0
	.loc	2 422 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:95
	cmp_lt_i32 s2, r0, s1
	add_u32 r2, s0, r1
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	snop 2
	sand_b64 s2, s10, s2
	sand_b64 s2, s8, s2
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_249
; %bb.232:                              ; %if.end1077
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_250
LBB2_233:                               ; %if.end1077.1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_251
LBB2_234:                               ; %if.end1077.2
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_252
LBB2_235:                               ; %if.end1077.3
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_253
LBB2_236:                               ; %if.end1077.4
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_254
LBB2_237:                               ; %if.end1077.5
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_255
LBB2_238:                               ; %if.end1077.6
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_240
LBB2_239:                               ; %if.then1014.7
	.loc	2 404 27 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r143
.Ltmp313:
	.file	5 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r143, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s2
	exp_f32 r6, r6
.Ltmp314:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r142
.Ltmp315:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp316:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r143, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r147
.Ltmp317:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r142, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s2
	exp_f32 r7, r7
.Ltmp318:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r141
.Ltmp319:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp320:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r142, r6
.Ltmp321:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r141, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s2
	exp_f32 r8, r8
.Ltmp322:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r140
.Ltmp323:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp324:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r141, r7
.Ltmp325:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r140, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s2
	exp_f32 r5, r5
.Ltmp326:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r140, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r144
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r145
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r146
.Ltmp327:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp328:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp329:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp330:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp331:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, 0x70, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_240:                               ; %if.end1077.7
	.loc	2 0 237                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:237
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:66
	or_b32 r0, r0, 16
	.loc	2 422 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:95
	cmp_lt_i32 s0, r0, s1
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	snop 3
	sand_b64 s0, s10, s0
	sand_b64 s0, s8, s0
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_256
; %bb.241:                              ; %if.end1077.8
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_257
LBB2_242:                               ; %if.end1077.9
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_258
LBB2_243:                               ; %if.end1077.10
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_259
LBB2_244:                               ; %if.end1077.11
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_260
LBB2_245:                               ; %if.end1077.12
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_261
LBB2_246:                               ; %if.end1077.13
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_262
LBB2_247:                               ; %if.end1077.14
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_263
LBB2_248:                               ; %if.end1077.15
	.loc	2 444 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:444:1
	snop 1
	endk
LBB2_249:                               ; %if.then1014
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r207
.Ltmp332:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r207, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp333:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r206
.Ltmp334:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp335:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r207, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r211
.Ltmp336:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r206, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp337:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r205
.Ltmp338:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp339:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r206, r6
.Ltmp340:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r205, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp341:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r204
.Ltmp342:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp343:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r205, r7
.Ltmp344:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r204, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp345:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r204, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r208
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r209
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r210
.Ltmp346:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp347:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp348:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp349:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp350:
	.loc	2 437 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r8, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r9, r3, r9
	.loc	2 437 237 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r5_hi, 0, 0
	or_b32 r5, r3, r5
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_233
LBB2_250:                               ; %if.then1014.1
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r191
.Ltmp351:
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
.Ltmp352:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r190
.Ltmp353:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp354:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r191, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r195
.Ltmp355:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r190, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp356:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r189
.Ltmp357:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp358:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r190, r6
.Ltmp359:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r189, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp360:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r188
.Ltmp361:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp362:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r189, r7
.Ltmp363:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r188, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp364:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r188, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r192
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r193
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r194
.Ltmp365:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp366:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp367:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp368:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp369:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, r2, 16
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_234
LBB2_251:                               ; %if.then1014.2
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r183
.Ltmp370:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s12
	fmka_f32 r6, r183, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s12
	exp_f32 r6, r6
.Ltmp371:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r182
.Ltmp372:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp373:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r183, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r187
.Ltmp374:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r182, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp375:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r181
.Ltmp376:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp377:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r182, r6
.Ltmp378:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r181, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp379:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r180
.Ltmp380:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp381:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r181, r7
.Ltmp382:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r180, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp383:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r180, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r184
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r185
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r186
.Ltmp384:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp385:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp386:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp387:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp388:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, r2, 32
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_235
LBB2_252:                               ; %if.then1014.3
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r175
.Ltmp389:
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
.Ltmp390:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r174
.Ltmp391:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp392:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r175, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r179
.Ltmp393:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r174, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp394:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r173
.Ltmp395:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp396:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r174, r6
.Ltmp397:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r173, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp398:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r172
.Ltmp399:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp400:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r173, r7
.Ltmp401:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r172, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp402:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r172, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r176
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r177
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r178
.Ltmp403:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp404:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp405:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp406:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp407:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, r2, 48
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_236
LBB2_253:                               ; %if.then1014.4
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r167
.Ltmp408:
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
.Ltmp409:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r166
.Ltmp410:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp411:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r167, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r171
.Ltmp412:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r166, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp413:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r165
.Ltmp414:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp415:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r166, r6
.Ltmp416:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r165, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp417:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r164
.Ltmp418:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp419:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r165, r7
.Ltmp420:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r164, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp421:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r164, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r168
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r169
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r170
.Ltmp422:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp423:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp424:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp425:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp426:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, r2, 64
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_237
LBB2_254:                               ; %if.then1014.5
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r159
.Ltmp427:
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
.Ltmp428:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r158
.Ltmp429:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp430:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r159, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r163
.Ltmp431:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r158, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp432:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r157
.Ltmp433:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp434:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r158, r6
.Ltmp435:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r157, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp436:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r156
.Ltmp437:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp438:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r157, r7
.Ltmp439:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r156, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp440:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r156, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r160
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r161
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r162
.Ltmp441:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp442:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp443:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp444:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp445:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, 0x50, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_238
LBB2_255:                               ; %if.then1014.6
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r1, 0xbfb8aa3b, r151
.Ltmp446:
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
.Ltmp447:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r6, 0xbfb8aa3b, r150
.Ltmp448:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r6
.Ltmp449:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r4, r151, r4
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r4, r4, r155
.Ltmp450:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s12
	fmka_f32 r7, r150, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s12
	exp_f32 r7, r7
.Ltmp451:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r7, 0xbfb8aa3b, r149
.Ltmp452:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r7
.Ltmp453:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r6, r150, r6
.Ltmp454:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s12
	fmka_f32 r8, r149, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s12
	exp_f32 r8, r8
.Ltmp455:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r8, 0xbfb8aa3b, r148
.Ltmp456:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s12, 0xc2fc0000, r8
.Ltmp457:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r7, r149, r7
.Ltmp458:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s12
	fmka_f32 r5, r148, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s12
	exp_f32 r5, r5
.Ltmp459:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r1, r148, r1
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r1, r1, r152
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r3, r7, r153
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r5, r6, r154
.Ltmp460:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp461:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp462:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp463:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp464:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r8, 0x60, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r9, r4, r9
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_239
	bra LBB2_240
LBB2_256:                               ; %if.then1014.8
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r135
.Ltmp465:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r135, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp466:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r134
.Ltmp467:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp468:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r135, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r139
.Ltmp469:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r134, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp470:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r133
.Ltmp471:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp472:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r134, r5
.Ltmp473:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r133, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp474:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r132
.Ltmp475:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp476:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r133, r6
.Ltmp477:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r132, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp478:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r132, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r136
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r137
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r138
.Ltmp479:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp480:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp481:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp482:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp483:
	.loc	2 437 173 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:173
	snop 0
	or_b32 r6, 0x8000, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_242
LBB2_257:                               ; %if.then1014.9
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r127
.Ltmp484:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r127, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp485:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r126
.Ltmp486:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp487:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r127, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r131
.Ltmp488:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r126, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp489:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r125
.Ltmp490:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp491:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r126, r5
.Ltmp492:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r125, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp493:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r124
.Ltmp494:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp495:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r125, r6
.Ltmp496:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r124, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp497:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r124, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r128
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r129
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r130
.Ltmp498:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp499:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp500:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp501:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp502:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8010, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_243
LBB2_258:                               ; %if.then1014.10
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r119
.Ltmp503:
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
.Ltmp504:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r118
.Ltmp505:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp506:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r119, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r123
.Ltmp507:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r118, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp508:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r117
.Ltmp509:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp510:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r118, r5
.Ltmp511:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r117, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp512:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r116
.Ltmp513:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp514:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r117, r6
.Ltmp515:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r116, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp516:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r116, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r120
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r121
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r122
.Ltmp517:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp518:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp519:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp520:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp521:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8020, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_244
LBB2_259:                               ; %if.then1014.11
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r111
.Ltmp522:
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
.Ltmp523:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r110
.Ltmp524:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp525:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r111, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r115
.Ltmp526:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r110, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp527:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r109
.Ltmp528:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp529:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r110, r5
.Ltmp530:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r109, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp531:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r108
.Ltmp532:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp533:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r109, r6
.Ltmp534:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r108, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp535:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r108, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r112
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r113
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r114
.Ltmp536:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp537:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp538:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp539:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp540:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8030, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_245
LBB2_260:                               ; %if.then1014.12
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r103
.Ltmp541:
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
.Ltmp542:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r102
.Ltmp543:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp544:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r103, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r107
.Ltmp545:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r102, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp546:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r101
.Ltmp547:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp548:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r102, r5
.Ltmp549:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r101, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp550:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r100
.Ltmp551:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp552:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r101, r6
.Ltmp553:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r100, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp554:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r100, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r104
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r105
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r106
.Ltmp555:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp556:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp557:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp558:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp559:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8040, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_246
LBB2_261:                               ; %if.then1014.13
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r95
.Ltmp560:
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
.Ltmp561:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r94
.Ltmp562:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp563:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r95, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r99
.Ltmp564:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r94, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp565:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r93
.Ltmp566:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp567:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r94, r5
.Ltmp568:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r93, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp569:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r92
.Ltmp570:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp571:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r93, r6
.Ltmp572:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r92, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp573:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r92, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r96
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r97
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r98
.Ltmp574:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp575:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp576:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp577:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp578:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8050, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_247
LBB2_262:                               ; %if.then1014.14
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r87
.Ltmp579:
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
.Ltmp580:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp581:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp582:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r87, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r91
.Ltmp583:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp584:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp585:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp586:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r86, r5
.Ltmp587:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp588:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp589:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp590:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r85, r6
.Ltmp591:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp592:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r84, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r88
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r89
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r90
.Ltmp593:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp594:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp595:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp596:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp597:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8060, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r7, r3, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 422 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:422:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_248
LBB2_263:                               ; %if.then1014.15
	.loc	2 404 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:404:27
	mul_f32 r0, 0xbfb8aa3b, r79
.Ltmp598:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r79, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s0
	exp_f32 r5, r5
.Ltmp599:
	.loc	2 412 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:412:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
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
	.loc	2 403 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:403:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp600:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp601:
	.loc	2 416 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:416:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 420 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:420:20
	mul_f32 r3, r79, r3
	.loc	2 434 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:434:32
	mul_f32 r3, r3, r83
.Ltmp602:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s0
	exp_f32 r6, r6
.Ltmp603:
	.loc	2 411 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:411:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
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
	.loc	2 402 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:402:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp604:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp605:
	.loc	2 415 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:415:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 419 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:419:20
	mul_f32 r5, r78, r5
.Ltmp606:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s0
	exp_f32 r7, r7
.Ltmp607:
	.loc	2 410 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:410:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
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
	.loc	2 401 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:401:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp608:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp609:
	.loc	2 414 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:414:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 418 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:418:20
	mul_f32 r6, r77, r6
.Ltmp610:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s0
	exp_f32 r4, r4
.Ltmp611:
	.loc	2 409 26                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:409:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 413 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:413:24
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
	.loc	2 417 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:417:20
	mul_f32 r0, r76, r0
	.loc	2 431 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:431:32
	mul_f32 r0, r0, r80
	.loc	2 432 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:432:32
	mul_f32 r1, r6, r81
	.loc	2 433 32                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:433:32
	mul_f32 r4, r5, r82
.Ltmp612:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp613:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp614:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp615:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp616:
	.loc	2 437 194 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:194
	snop 0
	or_b32 r6, 0x8070, r2
	.loc	2 437 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s6, r6
	mov_b32 r2, s7
	addc_co_u32 r7, r2, r7
	.loc	2 437 237                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:437:237
	shl_b32 r2, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 444 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:444:1
	snop 2
	endk
.Ltmp617:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 32
		.macahca_streg_size 4
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
; codeLenInByte = 39856
; NumMTRegsForWarps/PEU: 256
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 446 0                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:446:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp618:
	.loc	2 458 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:458:25
	scmp_gt_u32 s5, 31
	.loc	2 458 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:458:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 463 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:463:48
	sand_b32 s0, 1, s5
	cmp_eq_u32 s2, s0, 1
	.loc	2 462 49                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:462:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 462 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:462:75
	sand_b32 s1, s4, 1
	.loc	2 462 54                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:462:54
	sor_b32 s16, s0, s1
	.loc	2 463 75 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:463:75
	sshr_b32 s0, 1, s4
	.loc	2 463 48 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:463:48
	csel_b32 r1, 14, 0, s2
	.loc	2 463 54                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:463:54
	add_u32 r1, r1, s0
	.loc	2 458 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:458:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:0
	mov_b32 r1, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	.loc	2 467 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:467:19
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
	.loc	2 483 150                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:150
	and_or_b32 r36, r4, s1, r3
	shr_b32 r2, 1, r0
	and_b32 r30, r2, 24
	or_b32 r28, 0x8000, r36
	.loc	2 483 209 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:209
	or_b32 r4, r28, r30
	or_b32 r3, r36, r30
	.loc	2 483 67                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:67
	mad_i32 r4, r4, 2, s14
	mad_i32 r6, r3, 2, s14
	shl_b32 r31, 19, r1
	.loc	2 483 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:45
	ldg_b128 r152, r4, 0x0
	.loc	2 483 209                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:209
	or_b32 r4, r3, 32
	or_b32 r3, 0x8020, r3
	.loc	2 483 67                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:67
	mad_i32 r8, r3, 2, s14
	shl_b32 r3, 8, r0
	and_b32 r32, 0x3f800, r3
	shl_b32 r3, 3, r0
	.loc	2 483 45                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:45
	ldg_b128 r148, r6, 0x0
	.loc	2 483 67                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:67
	mad_i32 r6, r4, 2, s14
	and_b32 r4, r3, 56
	arrive slcnt(0)
	smul_i32 s7, 0xe00000, s0
	or3_b32 r4, r4, r32, r31
	add_u32 r4, r4, s7
	.loc	2 487 356 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:356
	mad_i32 r4, r4, 2, s40
	add_co_u32 r10, 0x20000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 487 339 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:339
	ldg_b128 r18, r4, 0x0
	.loc	2 483 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:45
	ldg_b128 r164, r6, 0x0
	.loc	2 487 339                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:339
	ldg_b128 r22, r10, 0x0
	.loc	2 487 356 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:356
	add_co_u32 r10, 0x40000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 487 339                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:339
	ldg_b128 r38, r10, 0x0
	.loc	2 483 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:483:45
	ldg_b128 r168, r8, 0x0
	.loc	2 487 339                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:339
	ldg_b128 r42, r4, 0x0
	.loc	2 467 19                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:467:19
	sashr_i32 s1, 31, s0
	.loc	2 468 20                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:468:20
	sshl_b64 s4, 2, s0
	sadd_co_u32 s0, s8, s4
	saddc_co_u32 s1, s9, s5
	ldu_b32 s2, s0, 0x0
	.loc	2 469 19                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:469:19
	sadd_co_u32 s0, s44, s4
	saddc_co_u32 s1, s45, s5
	.loc	2 470 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:470:22
	sadd_co_u32 s4, s46, s4
	saddc_co_u32 s5, s47, s5
	and_b32 r6, r3, 16
	and_b32 r16, r3, 32
	.loc	2 469 19                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:469:19
	ldu_b32 s1, s0, 0x0
	.loc	2 470 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:470:22
	ldu_b32 s0, s4, 0x0
	mul_u24 r4, r0, 9
	add_u32 r7, r16, r0
	add_u32 r6, r6, r0
	and_b32 r5, 0x1fc0, r3
	and_b32 r4, r4, 8
	and_b32 r7, r7, 32
	and_b32 r6, r6, 16
	.loc	2 487 47                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:47
	add_u32 r8, 0x800, r5
	add_u32 r9, 0x1000, r5
	add_u32 r10, 0x1800, r5
	.loc	2 487 83 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:83
	or_b32 r11, r7, r4
	.loc	2 487 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:27
	or_b32 r4, r6, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 487 253                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:253
	or3_b32 r12, r11, r5, r6
	.loc	2 487 27                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:27
	or3_b32 r13, r11, r8, r6
	or3_b32 r6, r11, r9, r6
	mov_b32 r11, s3
	or3_b32 r4, r4, r10, r7
	shl_add_u32 r12, 1, r12, r11
	shl_add_u32 r13, 1, r13, r11
	shl_add_u32 r6, 1, r6, r11
	shl_add_u32 r4, 1, r4, r11
	.loc	2 487 339                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:487:339
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r18
	arrive gvmcnt(3)
	sts_b128 r13, 0x0, r22
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r38
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r42
.Ltmp619:
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
.Ltmp620:
	.loc	2 490 3                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:490:3
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:0
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
	.loc	2 490 3                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:490:3
	add_co_u32 r184, 0x88, r28
	shl_add_u32 r4, 1, r4, 0
	or3_b32 r180, r31, r32, r33
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:0
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
	.loc	2 490 3                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:490:3
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
	.loc	2 490 31                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:490:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 490 3                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:490:3
	bra_smsks LBB3_12
LBB3_6:                                 ; %for.cond147.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 492 487 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:492:487
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s8
.Ltmp621:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp622:
	.loc	2 492 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:492:487
	add_u32 r29, 0x10000, r28
.Ltmp623:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s7, md
.Ltmp624:
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	add_i32 r190, 0x4000, r9
.Ltmp625:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp626:
	.loc	2 492 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:492:487
	mad_i32 r30, r29, 2, s8
.Ltmp627:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp628:
	.loc	2 492 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:492:487
	add_u32 r30, 0x20000, r28
	mad_i32 r186, r30, 2, s8
	add_u32 r31, 0x30000, r28
.Ltmp629:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp630:
	.loc	2 492 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:492:487
	mad_i32 r186, r31, 2, s8
	.loc	2 496 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	add_co_u32 r183, r176, s14
.Ltmp631:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp632:
	.loc	2 496 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	mov_b32 r186, s15
	addc_co_u32 r187, r177, r186
	add_co_u32 r188, r182, s14
	addc_co_u32 r189, r181, r186
	.loc	2 496 233 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:233
	or_b32 r188, r188, 32
	.loc	2 496 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	shl_b64 r204, 1, r188
	.loc	2 500 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	add_i32 r189, 0x4000, r8
	.loc	2 496 233                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:233
	or_b32 r186, r183, 32
	.loc	2 496 71 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	shl_b64 r202, 1, r186
	.loc	2 500 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r192, r189, 0x0
	lds_b128 r196, r190, 0x0
	.loc	2 496 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	add_co_u32 r186, s3, r202
	mov_b32 r183, s4
	addc_co_u32 r187, r183, r203
	add_co_u32 r188, s3, r204
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r192, r148, r172
	.loc	2 496 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:71
	addc_co_u32 r189, r183, r205
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	add_i32 r183, 0x4000, r10
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	mma_16x16x16f16 r124, r192, r152, r124
	mma_16x16x16f16 r172, r194, r150, r172
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r11
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	mma_16x16x16f16 r124, r194, r154, r124
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r196, r148, r160
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	mma_16x16x16f16 r120, r196, r152, r120
	mma_16x16x16f16 r160, r198, r150, r160
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r13
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	mma_16x16x16f16 r120, r198, r154, r120
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r148, r156
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r150, r156
	mma_16x16x16f16 r116, r208, r154, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r148, r144
	mma_16x16x16f16 r112, r190, r152, r112
	mma_16x16x16f16 r144, r192, r150, r144
	mma_16x16x16f16 r112, r192, r154, r112
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r148, r140
	mma_16x16x16f16 r108, r194, r152, r108
	mma_16x16x16f16 r140, r196, r150, r140
	mma_16x16x16f16 r108, r196, r154, r108
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r148, r136
	mma_16x16x16f16 r104, r198, r152, r104
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r104, r200, r154, r104
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r148, r132
	mma_16x16x16f16 r100, r190, r152, r100
	mma_16x16x16f16 r132, r192, r150, r132
	mma_16x16x16f16 r100, r192, r154, r100
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r148, r128
	mma_16x16x16f16 r96, r194, r152, r96
	mma_16x16x16f16 r128, r196, r150, r128
	mma_16x16x16f16 r96, r196, r154, r96
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r164, r172
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r172, r200, r166, r172
	mma_16x16x16f16 r124, r200, r170, r124
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r190, r164, r160
	mma_16x16x16f16 r120, r190, r168, r120
	mma_16x16x16f16 r160, r192, r166, r160
	mma_16x16x16f16 r120, r192, r170, r120
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r164, r156
	mma_16x16x16f16 r116, r194, r168, r116
	mma_16x16x16f16 r156, r196, r166, r156
	mma_16x16x16f16 r116, r196, r170, r116
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r164, r144
	mma_16x16x16f16 r112, r198, r168, r112
	mma_16x16x16f16 r144, r200, r166, r144
	mma_16x16x16f16 r112, r200, r170, r112
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r164, r140
	mma_16x16x16f16 r108, r190, r168, r108
	mma_16x16x16f16 r140, r192, r166, r140
	mma_16x16x16f16 r108, r192, r170, r108
	.loc	2 500 41                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:500:41
	lds_b128 r190, r183, 0x0
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r164, r136
	mma_16x16x16f16 r104, r194, r168, r104
	mma_16x16x16f16 r136, r196, r166, r136
	mma_16x16x16f16 r104, r196, r170, r104
	.loc	2 496 49                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:49
	ldg_b128 r194, r178, -0x8
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r132, r200, r166, r132
	mma_16x16x16f16 r100, r200, r170, r100
	.loc	2 496 49                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:49
	ldg_b128 r198, r184, -0x8
	.loc	2 506 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:506:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r164, r128
	mma_16x16x16f16 r96, r190, r168, r96
	mma_16x16x16f16 r128, r192, r166, r128
	mma_16x16x16f16 r96, r192, r170, r96
	.loc	2 496 49                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:496:49
	ldg_b128 r190, r186, 0x0
	ldg_b128 r186, r188, 0x0
.Ltmp633:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp634:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp635:
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r8, 0x0
	lds_b128 r226, r9, 0x0
	lds_b128 r230, r10, 0x0
	.loc	2 519 488                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:519:488
	add_u32 r183, 0x10040, r28
	mad_i32 r210, r183, 2, s40
	add_u32 r183, 0x20040, r28
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r148, r92
	.loc	2 519 488                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:519:488
	mad_i32 r214, r183, 2, s40
	add_u32 r183, 0x30040, r28
	mad_i32 r206, r28, 2, s40
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	mma_16x16x16f16 r60, r222, r152, r60
	.loc	2 519 488                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:519:488
	mad_i32 r218, r183, 2, s40
.Ltmp636:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp637:
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	mma_16x16x16f16 r92, r224, r150, r92
.Ltmp638:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:21:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp639:
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	mma_16x16x16f16 r60, r224, r154, r60
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r11, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r148, r88
	mma_16x16x16f16 r56, r226, r152, r56
	mma_16x16x16f16 r88, r228, r150, r88
	mma_16x16x16f16 r56, r228, r154, r56
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r226, r12, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r148, r84
	mma_16x16x16f16 r52, r230, r152, r52
	mma_16x16x16f16 r84, r232, r150, r84
	mma_16x16x16f16 r52, r232, r154, r52
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r230, r13, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r148, r80
	mma_16x16x16f16 r48, r222, r152, r48
	mma_16x16x16f16 r80, r224, r150, r80
	mma_16x16x16f16 r48, r224, r154, r48
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r14, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r148, r76
	mma_16x16x16f16 r44, r226, r152, r44
	mma_16x16x16f16 r76, r228, r150, r76
	mma_16x16x16f16 r44, r228, r154, r44
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r226, r15, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r148, r72
	mma_16x16x16f16 r40, r230, r152, r40
	mma_16x16x16f16 r72, r232, r150, r72
	mma_16x16x16f16 r40, r232, r154, r40
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r230, r16, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r148, r68
	mma_16x16x16f16 r36, r222, r152, r36
	mma_16x16x16f16 r68, r224, r150, r68
	mma_16x16x16f16 r36, r224, r154, r36
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r17, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r148, r64
	mma_16x16x16f16 r32, r226, r152, r32
	mma_16x16x16f16 r64, r228, r150, r64
	mma_16x16x16f16 r32, r228, r154, r32
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r226, r18, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r164, r92
	mma_16x16x16f16 r60, r230, r168, r60
	mma_16x16x16f16 r92, r232, r166, r92
	mma_16x16x16f16 r60, r232, r170, r60
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r230, r19, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r164, r88
	mma_16x16x16f16 r56, r222, r168, r56
	mma_16x16x16f16 r88, r224, r166, r88
	mma_16x16x16f16 r56, r224, r170, r56
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r20, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r164, r84
	mma_16x16x16f16 r52, r226, r168, r52
	mma_16x16x16f16 r84, r228, r166, r84
	mma_16x16x16f16 r52, r228, r170, r52
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r226, r21, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r164, r80
	mma_16x16x16f16 r48, r230, r168, r48
	mma_16x16x16f16 r80, r232, r166, r80
	mma_16x16x16f16 r48, r232, r170, r48
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r230, r22, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r164, r76
	mma_16x16x16f16 r44, r222, r168, r44
	mma_16x16x16f16 r76, r224, r166, r76
	mma_16x16x16f16 r44, r224, r170, r44
	.loc	2 523 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:523:43
	lds_b128 r222, r23, 0x0
	.loc	2 529 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:529:58
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
.Ltmp640:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:21:41
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r218
.Ltmp641:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp642:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp643:
	.loc	2 539 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:539:487
	mad_i32 r206, r28, 2, s18
	.loc	2 541 16                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:541:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s22, s14, r208
.Ltmp644:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp645:
	.loc	2 539 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:539:487
	mad_i32 r206, r29, 2, s18
.Ltmp646:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp647:
	.loc	2 539 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:539:487
	mad_i32 r206, r30, 2, s18
.Ltmp648:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp649:
	.loc	2 539 487                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:539:487
	mad_i32 r206, r31, 2, s18
.Ltmp650:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp651:
	.loc	4 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp652:
	.loc	2 541 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:541:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_8
; %bb.7:                                ; %for.cond630.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 544 71                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:544:71
	add_co_u32 r166, s5, r202
	mov_b32 r164, s6
	addc_co_u32 r167, r164, r203
	add_co_u32 r168, s5, r204
	addc_co_u32 r169, r164, r205
	.loc	2 544 49 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:544:49
	ldg_b128 r148, r178, 0x78
	ldg_b128 r152, r184, 0x78
	ldg_b128 r164, r166, 0x0
	ldg_b128 r168, r168, 0x0
LBB3_8:                                 ; %if.end666
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 549 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	add_i32 r183, 0x4000, r8
	add_i32 r202, 0x4000, r9
	snop 0
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r11
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r194, r172
	mma_16x16x16f16 r124, r204, r198, r124
	mma_16x16x16f16 r172, r206, r196, r172
	mma_16x16x16f16 r124, r206, r200, r124
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r204, r202, 0x0
	add_i32 r202, 0x4000, r13
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r208, r194, r160
	mma_16x16x16f16 r120, r208, r198, r120
	mma_16x16x16f16 r160, r210, r196, r160
	mma_16x16x16f16 r120, r210, r200, r120
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r194, r156
	mma_16x16x16f16 r116, r212, r198, r116
	mma_16x16x16f16 r156, r214, r196, r156
	mma_16x16x16f16 r116, r214, r200, r116
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r15
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r194, r144
	mma_16x16x16f16 r112, r204, r198, r112
	mma_16x16x16f16 r144, r206, r196, r144
	mma_16x16x16f16 r112, r206, r200, r112
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r194, r140
	mma_16x16x16f16 r108, r208, r198, r108
	mma_16x16x16f16 r140, r210, r196, r140
	mma_16x16x16f16 r108, r210, r200, r108
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r19
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r194, r136
	mma_16x16x16f16 r104, r212, r198, r104
	mma_16x16x16f16 r136, r214, r196, r136
	mma_16x16x16f16 r104, r214, r200, r104
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r194, r132
	mma_16x16x16f16 r100, r204, r198, r100
	mma_16x16x16f16 r132, r206, r196, r132
	mma_16x16x16f16 r100, r206, r200, r100
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r208, r194, r128
	mma_16x16x16f16 r96, r208, r198, r96
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r96, r210, r200, r96
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r190, r172
	mma_16x16x16f16 r124, r212, r186, r124
	mma_16x16x16f16 r172, r214, r192, r172
	mma_16x16x16f16 r124, r214, r188, r124
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r21
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r204, r190, r160
	mma_16x16x16f16 r120, r204, r186, r120
	mma_16x16x16f16 r160, r206, r192, r160
	mma_16x16x16f16 r120, r206, r188, r120
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r208, r190, r156
	mma_16x16x16f16 r116, r208, r186, r116
	mma_16x16x16f16 r156, r210, r192, r156
	mma_16x16x16f16 r116, r210, r188, r116
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r23
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r190, r144
	mma_16x16x16f16 r112, r212, r186, r112
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r188, r112
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r212, r183, 0x0
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r190, r140
	mma_16x16x16f16 r108, r204, r186, r108
	.loc	2 549 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:549:43
	lds_b128 r202, r202, 0x0
	.loc	2 555 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:555:58
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
.Ltmp653:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp654:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp655:
	.loc	2 567 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:567:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond774.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp656:
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
.Ltmp657:
LBB3_10:                                ; %if.end857
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r8, 0x0
	lds_b128 r202, r9, 0x0
	lds_b128 r206, r10, 0x0
	.loc	2 588 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:588:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r28, r194, r92
	mma_16x16x16f16 r60, r28, r198, r60
	mma_16x16x16f16 r92, r30, r196, r92
	mma_16x16x16f16 r60, r30, r200, r60
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r11, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r194, r88
	mma_16x16x16f16 r56, r202, r198, r56
	mma_16x16x16f16 r88, r204, r196, r88
	mma_16x16x16f16 r56, r204, r200, r56
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r202, r12, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r194, r84
	mma_16x16x16f16 r52, r206, r198, r52
	mma_16x16x16f16 r84, r208, r196, r84
	mma_16x16x16f16 r52, r208, r200, r52
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r206, r13, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r28, r194, r80
	mma_16x16x16f16 r48, r28, r198, r48
	mma_16x16x16f16 r80, r30, r196, r80
	mma_16x16x16f16 r48, r30, r200, r48
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r14, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r194, r76
	mma_16x16x16f16 r44, r202, r198, r44
	mma_16x16x16f16 r76, r204, r196, r76
	mma_16x16x16f16 r44, r204, r200, r44
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r202, r15, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r194, r72
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r72, r208, r196, r72
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r206, r16, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r28, r194, r68
	mma_16x16x16f16 r36, r28, r198, r36
	mma_16x16x16f16 r68, r30, r196, r68
	mma_16x16x16f16 r36, r30, r200, r36
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r17, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r202, r194, r64
	mma_16x16x16f16 r32, r202, r198, r32
	mma_16x16x16f16 r64, r204, r196, r64
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r194, r18, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	mma_16x16x16f16 r32, r204, r200, r32
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r198, r19, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
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
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r20, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r194, r21, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r198, r22, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r190, r76
	mma_16x16x16f16 r44, r28, r186, r44
	mma_16x16x16f16 r76, r30, r192, r76
	mma_16x16x16f16 r44, r30, r188, r44
	.loc	2 574 43                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:574:43
	lds_b128 r28, r23, 0x0
	.loc	2 580 58                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:580:58
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
	.loc	2 588 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:588:9
	bra_cmsks LBB3_5
; %bb.11:                               ; %for.body957.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp658:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp659:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_5
.Ltmp660:
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
	.loc	2 597 92 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:597:92
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
	.loc	2 597 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:597:9
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then985
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sub_u32 r2, r6, s0
	.loc	2 599 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:599:15
	cmp_ge_i32 s14, r6, s0
	cmp_gt_i32 s18, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 599 148 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:599:148
	snop 2
	sand_b64 s18, s14, s18
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1012
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r11
	.loc	2 600 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:600:19
	snop 1
	ldg_b32 r4, r10, 0x0
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc1036
	sor_b64 xmsk, xmsk, s8
	.loc	2 597 63 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:597:63
	or_b32 r10, r14, 16
	mov_b32 r11, r7
	.loc	2 597 92 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:597:92
	cmp_lt_i64 s14, r10, s4
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 597 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:597:9
	snop 2
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then985.1
	.loc	2 599 102 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:599:102
	add_u32 r2, r6, 16
	.loc	2 599 15 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:599:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 599 148                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:599:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1012.1
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:148
	shl_b64 r6, 2, r8
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 600 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:600:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow522
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:19
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
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1056
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(0)
	mul_f32 r1, r172, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r173, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r174, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r6, r175, r4
.Ltmp661:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp662:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp663:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp664:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp665:
LBB3_22:                                ; %if.end1111
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r6, r0, 2, s10
	.loc	2 625 226 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1056.1
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(1)
	mul_f32 r1, r160, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r161, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r162, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r10, r163, r4
.Ltmp666:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp667:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp668:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp669:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp670:
LBB3_24:                                ; %if.end1111.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 16
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r18, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r18, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1056.2
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r157, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r158, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r10, r159, r4
.Ltmp671:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp672:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp673:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp674:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp675:
LBB3_26:                                ; %if.end1111.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 32
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r10, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1056.3
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(3)
	mul_f32 r1, r144, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r145, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r146, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r12, r147, r4
.Ltmp676:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp677:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp678:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp679:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp680:
LBB3_28:                                ; %if.end1111.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 48
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r24, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1056.4
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(4)
	mul_f32 r1, r140, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r141, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r142, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r12, r143, r4
.Ltmp681:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp682:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp683:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp684:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp685:
LBB3_30:                                ; %if.end1111.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 64
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r12, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1056.5
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(5)
	mul_f32 r1, r136, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r137, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r138, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r15, r139, r4
.Ltmp686:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp687:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp688:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp689:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp690:
LBB3_32:                                ; %if.end1111.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, 0x50, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 0
	stg_b64 r28, 0x0, r8 devc
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1056.6
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(6)
	mul_f32 r1, r132, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r133, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r134, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r8, r135, r4
.Ltmp691:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp692:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp693:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp694:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp695:
LBB3_34:                                ; %if.end1111.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, 0x60, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r8, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r8, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1056.7
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(7)
	mul_f32 r1, r128, r4
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r129, r4
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r130, r4
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r15, r131, r4
.Ltmp696:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp697:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp698:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp699:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp700:
LBB3_36:                                ; %if.end1111.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, 0x70, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r26, r1, 2, s10
	.loc	2 609 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:66
	or_b32 r1, r14, 16
	.loc	2 609 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:95
	cmp_ge_i32 s0, r1, s4
	cmp_lt_i32 s4, r1, s4
	.loc	2 625 226 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	stg_b64 r26, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 609 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	snop 1
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1056.8
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(8)
	mul_f32 r1, r124, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r125, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r126, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r14, r127, r2
.Ltmp701:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp702:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp703:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp704:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp705:
LBB3_38:                                ; %if.end1111.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 162 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:162
	add_u32 r0, 0x1c000, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r14, r0, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1056.9
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(9)
	mul_f32 r1, r120, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r121, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r122, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r20, r123, r2
.Ltmp706:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp707:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp708:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp709:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp710:
LBB3_40:                                ; %if.end1111.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 16
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1056.10
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(10)
	mul_f32 r1, r116, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r117, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r118, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r16, r119, r2
.Ltmp711:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp712:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp713:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp714:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp715:
LBB3_42:                                ; %if.end1111.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 32
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r16, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r16, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1056.11
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(11)
	mul_f32 r1, r112, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r113, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r114, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r22, r115, r2
.Ltmp716:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp717:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp718:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp719:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp720:
LBB3_44:                                ; %if.end1111.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 48
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r112, r1, 2, s10
	shl_b64 r22, 0, 0
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 0
	stg_b64 r112, 0x0, r20 devc
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1056.12
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(12)
	mul_f32 r1, r108, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r109, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r110, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r20, r111, r2
.Ltmp721:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp722:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp723:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp724:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp725:
LBB3_46:                                ; %if.end1111.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, r0, 64
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r20, r1, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r20, 0x0, r22 devc
	shl_b64 r22, 0, 0
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1056.13
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(13)
	mul_f32 r1, r104, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r105, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r106, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r104, r107, r2
.Ltmp726:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp727:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp728:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp729:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp730:
LBB3_48:                                ; %if.end1111.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, 0x50, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r104, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 0
	stg_b64 r104, 0x0, r22 devc
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1056.14
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(14)
	mul_f32 r1, r100, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r101, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r102, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r22, r103, r2
.Ltmp731:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp732:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp733:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp734:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp735:
LBB3_50:                                ; %if.end1111.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r1, 0x60, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 0
	stg_b64 r22, 0x0, r106 devc
	.loc	2 609 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:609:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1056.15
	.loc	2 614 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:614:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 615 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:615:22
	mul_f32 r3, r97, r2
	.loc	2 616 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:616:22
	mul_f32 r5, r98, r2
	.loc	2 617 22                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:617:22
	mul_f32 r96, r99, r2
.Ltmp736:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp737:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp738:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp739:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp740:
LBB3_52:                                ; %if.end1111.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 625 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:183
	or_b32 r0, 0x70, r0
	.loc	2 625 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:22
	mad_i32 r0, r0, 2, s10
	.loc	2 625 226                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:625:226
	snop 1
	stg_b64 r0, 0x0, r100 devc
	.loc	2 629 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1219.1.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s4, s4
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1158
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	arrive gvmcnt(16)
	mul_f32 r3, r92, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r93, r4
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r92, r94, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r93, r95, r4
.Ltmp741:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp742:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp743:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp744:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp745:
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r6, 0x100, r94 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r88, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r89, r4
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r6, r90, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r91, r4
.Ltmp746:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp747:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp748:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp749:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp750:
LBB3_56:                                ; %if.end1219.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r18, 0x100, r96 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1219.3.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r10, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_58:                                ; %Flow520
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1158.2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	arrive gvmcnt(17)
	mul_f32 r6, r86, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r87, r4
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r84, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r85, r4
.Ltmp751:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp752:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp753:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp754:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp755:
	.loc	2 636 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r10, 0x100, r18 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r80, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r81, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r10, r83, r4
.Ltmp756:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp757:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp758:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp759:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp760:
LBB3_60:                                ; %if.end1219.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1219.5.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r12, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_62:                                ; %Flow519
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1158.4
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	arrive gvmcnt(18)
	mul_f32 r6, r78, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r79, r4
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r76, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r77, r4
.Ltmp761:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp762:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp763:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp764:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp765:
	.loc	2 636 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r12, 0x100, r10 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r72, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r73, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r10, r75, r4
.Ltmp766:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp767:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp768:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp769:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp770:
LBB3_64:                                ; %if.end1219.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s4, s2
	sxor_b64 s2, xmsk, s4
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1219.7.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_8
LBB3_66:                                ; %Flow518
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s2, s2
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1158.6
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	arrive gvmcnt(19)
	mul_f32 r6, r70, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r71, r4
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r68, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r69, r4
.Ltmp771:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp772:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp773:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp774:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp775:
	.loc	2 636 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	snop 0
	mul_f32 r7, r66, r4
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r8, 0x100, r10 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r64, r4
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r5, r65, r4
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r4, r67, r4
.Ltmp776:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp777:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp778:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp779:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp780:
LBB3_68:                                ; %if.end1219.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1219.9.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow517
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s2, s2
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1158.8
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r4, r61, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r5, r62, r2
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r60, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r6, r63, r2
.Ltmp781:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp782:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp783:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp784:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp785:
	.loc	2 635 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r14, 0x100, r8 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r56, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r6, r58, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r59, r2
.Ltmp786:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp787:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp788:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp789:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp790:
LBB3_72:                                ; %if.end1219.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1219.11.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow516
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1158.10
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r4, r53, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r5, r54, r2
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r52, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r6, r55, r2
.Ltmp791:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp792:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp793:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp794:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp795:
	.loc	2 635 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r16, 0x100, r8 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r48, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r6, r50, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r51, r2
.Ltmp796:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp797:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp798:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp799:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp800:
LBB3_76:                                ; %if.end1219.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r112, 0x100, r4 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1219.13.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB3_78:                                ; %Flow515
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1158.12
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r4, r45, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r5, r46, r2
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r44, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r6, r47, r2
.Ltmp801:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp802:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp803:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp804:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp805:
	.loc	2 635 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r20, 0x100, r8 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r40, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r6, r42, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r7, r43, r2
.Ltmp806:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp807:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp808:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp809:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp810:
LBB3_80:                                ; %if.end1219.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r104, 0x100, r4 devc
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 647 1                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:647:1
	snop 0
	endk
LBB3_83:                                ; %if.end1219.15.critedge
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r22, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_22
	.loc	2 629 9                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:629:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1158.14
	.loc	2 635 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	mul_f32 r4, r37, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r5, r38, r2
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r36, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r6, r39, r2
.Ltmp811:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp812:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp813:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp814:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp815:
	.loc	2 635 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:635:24
	snop 0
	mul_f32 r5, r33, r2
	.loc	2 645 234                       ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	stg_b64 r22, 0x100, r8 devc
	.loc	2 634 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:634:24
	mul_f32 r3, r32, r2
	.loc	2 636 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:636:24
	mul_f32 r6, r34, r2
	.loc	2 637 24                        ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:637:24
	mul_f32 r2, r35, r2
.Ltmp816:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp817:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp818:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp819:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp820:
	.loc	2 645 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:645:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 647 1                         ; /tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp:647:1
	snop 0
	endk
.Ltmp821:
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
	.byte	1                               ; Abbrev [1] 0xb:0x5ce DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x66:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x6c:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x72:0x6 DW_TAG_subprogram
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x78:0x29d DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string21                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x89:0x45 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp5                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	213                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9d:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xa9:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xb5:0x18 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc1:0xb DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xce:0x29 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	229                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xe2:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp53                         ; DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0xf7:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x10c:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp55                         ; DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x121:0x40 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	297                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x12e:0x19 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x13a:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x147:0x19 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	161                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x153:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x161:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	301                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x176:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp90                         ; DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x18b:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp92                         ; DW_AT_low_pc
	.long	.Ltmp93-.Ltmp92                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	370                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x1a0:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp92                         ; DW_AT_low_pc
	.long	.Ltmp93-.Ltmp92                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x1b5:0x40 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	374                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c2:0x19 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1ce:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1db:0x19 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	161                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1e7:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1f5:0x3f DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	233                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x201:0x19 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x20d:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	128                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x21a:0x19 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	138                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x226:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	128                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x234:0x40 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	306                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x241:0x19 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x24d:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	128                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x25a:0x19 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	138                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x266:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	128                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x274:0xd DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	408                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x281:0xd DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	407                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x28e:0xd DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	406                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x29b:0xd DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	405                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2a8:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	435                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2b5:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2c2:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2cf:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2de:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	436                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2eb:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x2f8:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x305:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x315:0x6 DW_TAG_subprogram
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x31b:0x6 DW_TAG_subprogram
	.long	.Linfo_string17                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x321:0x6 DW_TAG_subprogram
	.long	.Linfo_string18                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x327:0x6 DW_TAG_subprogram
	.long	.Linfo_string19                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x32d:0x6 DW_TAG_subprogram
	.long	.Linfo_string20                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x333:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string22                 ; DW_AT_name
	.byte	8                               ; Abbrev [8] 0x344:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp619                        ; DW_AT_low_pc
	.long	.Ltmp620-.Ltmp619               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	489                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x359:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp619                        ; DW_AT_low_pc
	.long	.Ltmp620-.Ltmp619               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x36e:0x1a DW_TAG_inlined_subroutine
	.long	795                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	492                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x37b:0xc DW_TAG_inlined_subroutine
	.long	789                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x388:0x2a DW_TAG_inlined_subroutine
	.long	807                             ; DW_AT_abstract_origin
	.quad	.Ltmp633                        ; DW_AT_low_pc
	.long	.Ltmp634-.Ltmp633               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	515                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x39d:0x14 DW_TAG_inlined_subroutine
	.long	801                             ; DW_AT_abstract_origin
	.quad	.Ltmp633                        ; DW_AT_low_pc
	.long	.Ltmp634-.Ltmp633               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3b2:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp634                        ; DW_AT_low_pc
	.long	.Ltmp635-.Ltmp634               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	517                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3c7:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp634                        ; DW_AT_low_pc
	.long	.Ltmp635-.Ltmp634               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x3dc:0xd DW_TAG_inlined_subroutine
	.long	813                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	519                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3e9:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp641                        ; DW_AT_low_pc
	.long	.Ltmp642-.Ltmp641               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	537                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3fe:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp641                        ; DW_AT_low_pc
	.long	.Ltmp642-.Ltmp641               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x413:0x1a DW_TAG_inlined_subroutine
	.long	795                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	539                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x420:0xc DW_TAG_inlined_subroutine
	.long	789                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x42d:0x2a DW_TAG_inlined_subroutine
	.long	807                             ; DW_AT_abstract_origin
	.quad	.Ltmp653                        ; DW_AT_low_pc
	.long	.Ltmp654-.Ltmp653               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	564                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x442:0x14 DW_TAG_inlined_subroutine
	.long	801                             ; DW_AT_abstract_origin
	.quad	.Ltmp653                        ; DW_AT_low_pc
	.long	.Ltmp654-.Ltmp653               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x457:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp654                        ; DW_AT_low_pc
	.long	.Ltmp655-.Ltmp654               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	566                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x46c:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp654                        ; DW_AT_low_pc
	.long	.Ltmp655-.Ltmp654               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x481:0x2a DW_TAG_inlined_subroutine
	.long	795                             ; DW_AT_abstract_origin
	.quad	.Ltmp656                        ; DW_AT_low_pc
	.long	.Ltmp657-.Ltmp656               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	569                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x496:0x14 DW_TAG_inlined_subroutine
	.long	789                             ; DW_AT_abstract_origin
	.quad	.Ltmp656                        ; DW_AT_low_pc
	.long	.Ltmp657-.Ltmp656               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x4ab:0x2a DW_TAG_inlined_subroutine
	.long	807                             ; DW_AT_abstract_origin
	.quad	.Ltmp658                        ; DW_AT_low_pc
	.long	.Ltmp659-.Ltmp658               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	590                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x4c0:0x14 DW_TAG_inlined_subroutine
	.long	801                             ; DW_AT_abstract_origin
	.quad	.Ltmp658                        ; DW_AT_low_pc
	.long	.Ltmp659-.Ltmp658               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x4d5:0x2a DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.quad	.Ltmp659                        ; DW_AT_low_pc
	.long	.Ltmp660-.Ltmp659               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	592                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x4ea:0x14 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp659                        ; DW_AT_low_pc
	.long	.Ltmp660-.Ltmp659               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x4ff:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	618                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x50c:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges42                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x519:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges43                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x526:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges44                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x535:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges45                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	619                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x542:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges46                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x54f:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges47                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x55c:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges48                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x56b:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges49                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	638                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x578:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges50                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x585:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges51                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x592:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges52                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x5a1:0x36 DW_TAG_inlined_subroutine
	.long	114                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges53                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	639                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x5ae:0x28 DW_TAG_inlined_subroutine
	.long	108                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges54                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x5bb:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges55                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x5c8:0xd DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges56                ; DW_AT_ranges
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
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
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
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
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
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
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
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
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
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges42:
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
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges43:
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
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges44:
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
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges45:
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges46:
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges47:
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
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges48:
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
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges49:
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
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges50:
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
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges51:
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
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges52:
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
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges53:
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges54:
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges55:
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges56:
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
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/tile-moe-scratch-20260814/v057-work/codegen_candidate_case3/v057_candidate_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root"                         ; string offset=139
.Linfo_string3:
	.asciz	"moe_stage_gate_up_one_wave_7168" ; string offset=145
.Linfo_string4:
	.asciz	"moe_stage_gate_up_one_wave_2rows_7168" ; string offset=177
.Linfo_string5:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=215
.Linfo_string6:
	.asciz	"__barrier"                     ; string offset=254
.Linfo_string7:
	.asciz	"__syncthreads"                 ; string offset=264
.Linfo_string8:
	.asciz	"moe_stage_up_one_wave_7168"    ; string offset=278
.Linfo_string9:
	.asciz	"moe_stage_up_one_wave_2rows_7168" ; string offset=305
.Linfo_string10:
	.asciz	"moe_stage_gate_one_wave_7168"  ; string offset=338
.Linfo_string11:
	.asciz	"moe_stage_gate_one_wave_2rows_7168" ; string offset=367
.Linfo_string12:
	.asciz	"exp2f"                         ; string offset=402
.Linfo_string13:
	.asciz	"__float2half_rn"               ; string offset=408
.Linfo_string14:
	.asciz	"__floats2half2_rn"             ; string offset=424
.Linfo_string15:
	.asciz	"__float22half2_rn"             ; string offset=442
.Linfo_string16:
	.asciz	"memcpy_async<16, false>"       ; string offset=460
.Linfo_string17:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=484
.Linfo_string18:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=511
.Linfo_string19:
	.asciz	"moe_select_wait_async_16"      ; string offset=606
.Linfo_string20:
	.asciz	"moe_memcpy_sync_16"            ; string offset=631
.Linfo_string21:
	.asciz	"kernel_kernel"                 ; string offset=650
.Linfo_string22:
	.asciz	"kernel_kernel_1"               ; string offset=664
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
    .private_memory_size: 52
    .share_memory_size: 0
    .streg_count:    52
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
