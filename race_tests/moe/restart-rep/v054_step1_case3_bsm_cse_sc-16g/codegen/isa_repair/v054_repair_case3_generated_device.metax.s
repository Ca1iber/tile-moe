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
	.file	2 "/tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3" "v054_repair_case3_generated_device.cpp"
	.loc	2 148 0                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:148:0
; %bb.0:                                ; %entry
	ldu_b64 s8, s0, 0x30
	ldu_b128 s16, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp4:
	.loc	2 155 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:155:25
	scmp_gt_u32 s5, 31
	.loc	2 155 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:155:7
	snop 0
	bra_smskz LBB2_2
; %bb.1:                                ; %if.else
	.loc	2 159 49 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:159:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 159 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:159:75
	sand_b32 s1, s4, 1
	.loc	2 159 54                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:159:54
	sor_b32 s14, s0, s1
	.loc	2 160 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:160:48
	sshl_b32 s0, 3, s5
	sand_b32 s0, s0, 8
	.loc	2 160 74 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:160:74
	sshr_b32 s1, 1, s4
	.loc	2 160 53                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:160:53
	sadd_co_i32 s0, s0, s1
	.loc	2 155 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:155:7
	bra_xmskz LBB2_3
	bra LBB2_4
LBB2_2:
                                        ; implicit-def: $streg_32bit_0
                                        ; implicit-def: $streg_32bit_14
LBB2_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	smov_b32 s14, s5
	smov_b32 s0, s4
LBB2_4:                                 ; %if.end
	mov_b32 r1, 0x60
	cmp_lt_u32 s10, s14, r1
	scmp_lt_u32 0x5f, s14
	smov_b32 s4, 0
	.loc	2 165 18 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:165:18
	bra_smsks LBB2_6
; %bb.5:                                ; %if.then25
	.loc	2 0 18 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:18
	smov_b32 s15, 0
	sshl_b64 s2, 2, s14
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	.loc	2 166 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:166:15
	ldu_b32 s4, s2, 0x0
LBB2_6:                                 ; %if.end28
	.loc	2 171 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:171:20
	arrive slcnt(0)
	sashr_i32 s5, 31, s4
	sshl_b64 s2, 2, s4
	sadd_co_u32 s6, s46, s2
	saddc_co_u32 s7, s47, s3
	.loc	2 172 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:172:22
	sadd_co_u32 s2, s44, s2
	saddc_co_u32 s3, s45, s3
	scmp_gt_u32 s0, 15
	ldu_b32 s2, s2, 0x0
	smul_i32 s3, 0xe00000, s4
	smul_i32 s4, 0xe0000, s0
	scsel_b64 s30, -1, 0
	sadd_co_i32 s26, s3, s4
	sashr_i32 s27, 31, s26
	.loc	2 171 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:171:20
	ldu_b32 s1, s6, 0x0
	sshl_b64 s6, 1, s26
	sadd_co_u32 s3, s40, s6
	and_b32 r1, 0x3ff, r0
	saddc_co_u32 s4, s41, s7
	sadd_co_u32 s5, s18, s6
	cmp_lt_u32 s12, s0, 16
	cmp_lt_u32 s20, r1, 64
	cmp_gt_u32 s22, r1, 63
	cmp_gt_u32 s24, 0x80, r1
	saddc_co_u32 s6, s19, s7
	bfe_u32 r20, r0, 3, 3
	and_b32 r0, r0, 7
	xor_b32 r2, r20, r0
	scmp_ne_u64 s30, 0
	shl_b32 r51, 4, r2
	shl_b32 r21, 4, r0
	bra_smsks LBB2_88
; %bb.7:                                ; %for.body55.us.preheader
.Ltmp5:
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_b32 r0, 7, r20
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	mul_u24 r4, 0x3800, r20
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	or_b32 r0, r0, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	mul_hi_u24 r5, 0x3800, r20
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r2, r4, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_11
; %bb.8:                                ; %if.else.i685.us
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_10
; %bb.9:                                ; %if.then12.i704.us
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r3, 0, r0
	add_u32 r3, 0x4000, r3
	add_co_u32 r8, s5, r2
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r5
.Ltmp6:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp7:
LBB2_10:                                ; %Flow548
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_11:                                ; %Flow549
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %if.then.i709.us
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r3, 0, r0
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r2
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r5
.Ltmp8:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp9:
LBB2_13:                                ; %if.end17.i687.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r3, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_15
; %bb.14:                               ; %if.else26.i688.us
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r3, s7
	sor_b64 s34, s34, s36
LBB2_15:                                ; %Flow547
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_17
.Ltmp10:
; %bb.16:                               ; %for.inc70.us.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r2, r6, r2
	addc_co_u32 r6, r7, r5
	add_u32 r0, r3, r0
	add_co_u32 r2, 0x1c000, r2
	addc_co_u32 r3, r6, 0
.Ltmp11:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r0
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r2, 0x0 bsm
	smov_b32 md, s7
.Ltmp12:
LBB2_17:                                ; %for.inc70.us
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r0, 0x800
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r4
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r0, 7, r20, r0
	or_b32 r3, r0, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r5, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_21
; %bb.18:                               ; %if.else.i685.us.1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_20
; %bb.19:                               ; %if.then12.i704.us.1
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp13:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp14:
LBB2_20:                                ; %Flow545
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_21:                                ; %Flow546
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_23
; %bb.22:                               ; %if.then.i709.us.1
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp15:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp16:
LBB2_23:                                ; %if.end17.i687.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_25
; %bb.24:                               ; %if.else26.i688.us.1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_25:                                ; %Flow544
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_27
.Ltmp17:
; %bb.26:                               ; %for.inc70.us.1.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp18:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp19:
LBB2_27:                                ; %for.inc70.us.1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x1000
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r0, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_31
; %bb.28:                               ; %if.else.i685.us.2
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then12.i704.us.2
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp20:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp21:
LBB2_30:                                ; %Flow542
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_31:                                ; %Flow543
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_33
; %bb.32:                               ; %if.then.i709.us.2
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp22:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp23:
LBB2_33:                                ; %if.end17.i687.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_35
; %bb.34:                               ; %if.else26.i688.us.2
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_35:                                ; %Flow541
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_37
.Ltmp24:
; %bb.36:                               ; %for.inc70.us.2.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp25:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp26:
LBB2_37:                                ; %for.inc70.us.2
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x1800
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r0, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_41
; %bb.38:                               ; %if.else.i685.us.3
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_40
; %bb.39:                               ; %if.then12.i704.us.3
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp27:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp28:
LBB2_40:                                ; %Flow539
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_41:                                ; %Flow540
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %if.then.i709.us.3
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp29:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp30:
LBB2_43:                                ; %if.end17.i687.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_45
; %bb.44:                               ; %if.else26.i688.us.3
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_45:                                ; %Flow538
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_47
.Ltmp31:
; %bb.46:                               ; %for.inc70.us.3.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp32:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp33:
LBB2_47:                                ; %for.inc70.us.3
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x2000
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r0, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_51
; %bb.48:                               ; %if.else.i685.us.4
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_50
; %bb.49:                               ; %if.then12.i704.us.4
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp34:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp35:
LBB2_50:                                ; %Flow536
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_51:                                ; %Flow537
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_53
; %bb.52:                               ; %if.then.i709.us.4
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp36:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp37:
LBB2_53:                                ; %if.end17.i687.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_55
; %bb.54:                               ; %if.else26.i688.us.4
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_55:                                ; %Flow535
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_57
.Ltmp38:
; %bb.56:                               ; %for.inc70.us.4.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp39:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp40:
LBB2_57:                                ; %for.inc70.us.4
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x2800
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r0, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_61
; %bb.58:                               ; %if.else.i685.us.5
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_60
; %bb.59:                               ; %if.then12.i704.us.5
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp41:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp42:
LBB2_60:                                ; %Flow533
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_61:                                ; %Flow534
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %if.then.i709.us.5
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp43:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp44:
LBB2_63:                                ; %if.end17.i687.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_65
; %bb.64:                               ; %if.else26.i688.us.5
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_65:                                ; %Flow532
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_67
.Ltmp45:
; %bb.66:                               ; %for.inc70.us.5.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp46:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp47:
LBB2_67:                                ; %for.inc70.us.5
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 117 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x3000
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 38                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	addc_co_u32 r0, r0, 0
	.loc	2 118 46 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	or_b32 r4, r2, r51
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_71
; %bb.68:                               ; %if.else.i685.us.6
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_70
; %bb.69:                               ; %if.then12.i704.us.6
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r5, 0, r3
	add_u32 r5, 0x4000, r5
	add_co_u32 r8, s5, r4
	mov_b32 r6, s6
	addc_co_u32 r9, r6, r0
.Ltmp48:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp49:
LBB2_70:                                ; %Flow530
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_71:                                ; %Flow531
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s30, s30
	sxor_b64 xmsk, xmsk, s30
	snop 0
	bra_xmskz LBB2_73
; %bb.72:                               ; %if.then.i709.us.6
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r5, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r8, s3, r4
	mov_b32 r6, s4
	addc_co_u32 r9, r6, r0
.Ltmp50:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r5
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r8, 0x0 bsm
	smov_b32 md, s7
.Ltmp51:
LBB2_73:                                ; %if.end17.i687.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	sadd_co_i32 s7, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r5, s7
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s34, -1
	and_xmsk s30, s22
	snop 0
	bra_xmskz LBB2_75
; %bb.74:                               ; %if.else26.i688.us.6
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s7, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s34, -1, xmsk
	sand_b64 s36, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r5, s7
	sor_b64 s34, s34, s36
LBB2_75:                                ; %Flow529
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s30
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s30, s34
	snop 0
	bra_xmskz LBB2_77
.Ltmp52:
; %bb.76:                               ; %for.inc70.us.6.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r4, r6, r4
	addc_co_u32 r6, r7, r0
	add_u32 r3, r5, r3
	add_co_u32 r4, 0x1c000, r4
	addc_co_u32 r5, r6, 0
.Ltmp53:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s15, r3
	smov_b32 s7, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s7
.Ltmp54:
LBB2_77:                                ; %for.inc70.us.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s30
	.loc	2 118 38 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:38
	add_co_u32 r2, r2, r51
	addc_co_u32 r4, r0, 0
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	mov_b32 r3, 0x3800
	.loc	2 118 46                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	add_co_u32 r0, 0x38000, r2
	.loc	2 117 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:117:45
	shl_or_b32 r3, 7, r20, r3
	or_b32 r3, r3, r21
	.loc	2 118 46                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:118:46
	addc_co_u32 r2, r4, 0
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s30, s22
	sxor_b64 s30, xmsk, s30
	bra_xmskz LBB2_81
; %bb.78:                               ; %if.else.i685.us.7
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s34, s24
	snop 0
	bra_xmskz LBB2_80
; %bb.79:                               ; %if.then12.i704.us.7
	.loc	2 0 14 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:14
	add_u32 r4, 0, r3
	add_co_u32 r6, s5, r0
	add_u32 r4, 0x4000, r4
	mov_b32 r5, s6
	addc_co_u32 r7, r5, r2
.Ltmp55:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s6, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s6
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp56:
LBB2_80:                                ; %Flow527
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s34
LBB2_81:                                ; %Flow528
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s30
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_83
; %bb.82:                               ; %if.then.i709.us.7
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	add_co_u32 r6, s3, r0
	.loc	2 121 51                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:121:51
	add_u32 r4, 0, r3
	.loc	2 122 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:122:57
	mov_b32 r5, s4
	addc_co_u32 r7, r5, r2
.Ltmp57:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s4, r4
	smov_b32 s3, md
	snop 2
	smov_b32 md, s4
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s3
.Ltmp58:
LBB2_83:                                ; %if.end17.i687.us.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	sadd_co_i32 s3, 0x400, 0
	shl_b64 r6, 0, s40
	mov_b32 r4, s3
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	smov_b64 s6, -1
	and_xmsk s4, s22
	snop 0
	bra_xmskz LBB2_85
; %bb.84:                               ; %if.else26.i688.us.7
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s6, -1, xmsk
	sand_b64 s30, s24, xmsk
	shl_b64 r6, 0, s18
	mov_b32 r4, s3
	sor_b64 s6, s6, s30
LBB2_85:                                ; %Flow525
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s4
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB2_87
.Ltmp59:
; %bb.86:                               ; %for.cond74.preheader.sink.split
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	mad_i32 r6, s26, 2, r6
	.loc	2 184 5 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:184:5
	add_co_u32 r0, r6, r0
	addc_co_u32 r2, r7, r2
	add_u32 r3, r4, r3
	add_co_u32 r4, 0x1c000, r0
	addc_co_u32 r5, r2, 0
.Ltmp60:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s6, r3
	smov_b32 s3, md
	snop 2
	smov_b32 md, s6
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s3
.Ltmp61:
LBB2_87:                                ; %Flow526
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s4
LBB2_88:                                ; %for.cond74.preheader
	mul_u24 r52, 0x3800, r20
	smul_i32 s3, 0xe0000, s14
	mov_b32 r2, s3
	shr_b32 r0, 6, r1
	smov_b32 s4, 0x38000
	mul_hi_u24 r53, 0x3800, r20
	.loc	2 190 3 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:190:3
	or_b32 r52, r52, r51
	mad_u24 r55, r0, s4, r2
	mad_i32 r186, s26, 2, r52
	shr_b32 r2, 1, r1
	shr_b32 r4, 5, r1
	and_b32 r0, r1, 15
	add_shl_u32 r4, r4, r2, 4
	shr_b32 r5, 4, r1
	add_co_u32 r51, s18, r186
	mov_b32 r52, s19
	addc_co_u32 r52, r52, r187
	mul_u24 r56, 0x3800, r0
	shl_b32 r3, 6, r1
	shl_b32 r6, 3, r1
	and_b32 r4, r4, 16
	add_shl_u32 r5, r5, r1, 3
	and_b32 r11, 0x3c0, r3
	and_b32 r12, r6, 32
	and_or_b32 r19, r5, 8, r4
	add_co_u32 r53, s40, r186
	mov_b32 r54, s41
	mul_hi_u24 r57, 0x3800, r0
	and_or_b32 r56, r1, 48, r56
	shl_or_b32 r48, 7, r20, r21
	or_b32 r13, r19, r11
	or_b32 r14, 0x400, r11
	or_b32 r15, r19, r12
	or_b32 r16, 0x800, r11
	or_b32 r17, 0xc00, r11
	or_b32 r18, 0x1000, r11
	or_b32 r22, 0x1400, r11
	or_b32 r23, 0x1800, r11
	or_b32 r24, 0x1c00, r11
	xor_b32 r25, r12, 32
	sadd_co_i32 s3, 0x4000, 0
	sadd_co_i32 s4, 0x4400, 0
	sadd_co_i32 s5, 0x400, 0
	addc_co_u32 r54, r54, r187
	mad_u32 r56, r55, 2, r56
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
	shl_b64 r58, 0, 0
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
	or3_b32 r17, r19, r22, r25
	or3_b32 r13, r19, r14, r25
	or3_b32 r14, r19, r16, r25
	or3_b32 r16, r19, r18, r25
	or3_b32 r18, r19, r23, r25
	or3_b32 r19, r19, r24, r25
	or_b32 r31, 0x1000, r48
	or_b32 r35, 0x1800, r48
	or_b32 r39, 0x2000, r48
	or_b32 r43, 0x2800, r48
	or_b32 r47, 0x3000, r48
	.loc	2 190 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:190:3
	add_co_u32 r55, s16, r56
	mov_b32 r56, s17
	add_u32 r20, s3, r48
	add_u32 r21, 0, r48
	add_u32 r22, s4, r48
	add_u32 r23, s5, r48
	or_b32 r27, 0x800, r48
	or_b32 r48, 0x3800, r48
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
	shl_b64 r60, 0, 0
	shl_b64 r66, 0, r58
	shl_b64 r74, 0, r58
	shl_b64 r82, 0, r58
	shl_b64 r90, 0, r58
	shl_b64 r98, 0, r58
	shl_b64 r106, 0, r58
	shl_b64 r114, 0, r58
	shl_b64 r122, 0, r58
	shl_b64 r130, 0, r58
	shl_b64 r138, 0, r58
	shl_b64 r146, 0, r58
	shl_b64 r154, 0, r58
	shl_b64 r162, 0, r58
	shl_b64 r170, 0, r58
	shl_b64 r178, 0, r58
	shl_b64 r62, 0, r58
	shl_b64 r70, 0, r58
	shl_b64 r78, 0, r58
	shl_b64 r86, 0, r58
	shl_b64 r94, 0, r58
	shl_b64 r102, 0, r58
	shl_b64 r110, 0, r58
	shl_b64 r118, 0, r58
	shl_b64 r126, 0, r58
	shl_b64 r134, 0, r58
	shl_b64 r142, 0, r58
	shl_b64 r150, 0, r58
	shl_b64 r158, 0, r58
	shl_b64 r166, 0, r58
	shl_b64 r174, 0, r58
	shl_b64 r182, 0, r58
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
	add_u32 r24, s3, r27
	add_u32 r25, 0, r27
	add_u32 r26, s4, r27
	add_u32 r27, s5, r27
	add_u32 r28, s3, r31
	add_u32 r29, 0, r31
	add_u32 r30, s4, r31
	add_u32 r31, s5, r31
	add_u32 r32, s3, r35
	add_u32 r33, 0, r35
	add_u32 r34, s4, r35
	add_u32 r35, s5, r35
	add_u32 r36, s3, r39
	add_u32 r37, 0, r39
	add_u32 r38, s4, r39
	add_u32 r39, s5, r39
	add_u32 r40, s3, r43
	add_u32 r41, 0, r43
	add_u32 r42, s4, r43
	add_u32 r43, s5, r43
	add_u32 r44, s3, r47
	add_u32 r45, 0, r47
	add_u32 r46, s4, r47
	add_u32 r47, s5, r47
	add_u32 r49, s3, r48
	add_u32 r50, 0, r48
	.loc	2 190 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:190:3
	addc_co_u32 r56, r56, r57
	smov_b64 s4, 0
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
	shl_b64 r180, 0, r60
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
	shl_b64 r184, 0, r60
	bra LBB2_91
	.p2align	5
LBB2_89:                                ; %Flow493
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 3                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s6
LBB2_90:                                ; %for.inc361
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 190 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:190:45
	sadd_co_u32 s4, 0x80, s4
	saddc_co_u32 s5, s5, 0
	scmp_eq_u64 0x3800, s4
	.loc	2 190 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:190:3
	snop 0
	bra_smsks LBB2_189
LBB2_91:                                ; %for.cond79.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 200 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:200:43
	shl_b64 r194, 0, 0
	shl_b64 r192, 0, r194
	sandn_b64 cmsk, xmsk, s10
	shl_b64 r190, 0, r194
	shl_b64 r188, 0, r194
	shl_b64 r202, 0, r194
	shl_b64 r200, 0, r194
	shl_b64 r198, 0, r194
	shl_b64 r196, 0, r194
	bra_cmsks LBB2_93
; %bb.92:                               ; %for.body82.us.preheader
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 196 19                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:196:19
	add_co_u32 r192, r55, s4
	mov_b32 r57, s5
	addc_co_u32 r193, r56, r57
	add_co_u32 r194, 0x38000, r192
	addc_co_u32 r195, r193, 0
	ldg_b128 r196, r192, 0x0
	ldg_b128 r188, r192, 0x40
	add_co_u32 r192, 0x38040, r192
	addc_co_u32 r193, r193, 0
	ldg_b128 r200, r194, 0x0
	snop 0
	ldg_b128 r192, r192, 0x0
LBB2_93:                                ; %for.cond.cleanup81
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp62:
	.file	4 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive 0
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp63:
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r204, r4, 0x0
	lds_b128 r208, r5, 0x0
	lds_b128 r212, r6, 0x0
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	add_i32 r57, 0x4000, r4
	.loc	2 233 23                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:233:23
	scmp_eq_u64 0x3780, s4
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r204, r196, r178
	mma_16x16x16f16 r114, r204, r200, r114
	mma_16x16x16f16 r178, r206, r198, r178
	mma_16x16x16f16 r114, r206, r202, r114
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r204, r7, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r208, r196, r170
	mma_16x16x16f16 r106, r208, r200, r106
	mma_16x16x16f16 r170, r210, r198, r170
	mma_16x16x16f16 r106, r210, r202, r106
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r208, r8, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r212, r196, r162
	mma_16x16x16f16 r98, r212, r200, r98
	mma_16x16x16f16 r162, r214, r198, r162
	mma_16x16x16f16 r98, r214, r202, r98
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r212, r9, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r204, r196, r154
	mma_16x16x16f16 r90, r204, r200, r90
	mma_16x16x16f16 r154, r206, r198, r154
	mma_16x16x16f16 r90, r206, r202, r90
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r204, r10, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r208, r196, r146
	mma_16x16x16f16 r82, r208, r200, r82
	mma_16x16x16f16 r146, r210, r198, r146
	mma_16x16x16f16 r82, r210, r202, r82
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r208, r11, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r212, r196, r138
	mma_16x16x16f16 r74, r212, r200, r74
	mma_16x16x16f16 r138, r214, r198, r138
	mma_16x16x16f16 r74, r214, r202, r74
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r212, r57, 0x0
	add_i32 r57, 0x4000, r5
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r204, r196, r130
	mma_16x16x16f16 r66, r204, r200, r66
	mma_16x16x16f16 r130, r206, r198, r130
	mma_16x16x16f16 r66, r206, r202, r66
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r204, r57, 0x0
	add_i32 r57, 0x4000, r6
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r208, r196, r122
	mma_16x16x16f16 r58, r208, r200, r58
	mma_16x16x16f16 r122, r210, r198, r122
	mma_16x16x16f16 r58, r210, r202, r58
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r208, r57, 0x0
	add_i32 r57, 0x4000, r7
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r212, r196, r182
	mma_16x16x16f16 r118, r212, r200, r118
	mma_16x16x16f16 r182, r214, r198, r182
	mma_16x16x16f16 r118, r214, r202, r118
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r212, r57, 0x0
	add_i32 r57, 0x4000, r8
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r204, r196, r174
	mma_16x16x16f16 r110, r204, r200, r110
	mma_16x16x16f16 r174, r206, r198, r174
	mma_16x16x16f16 r110, r206, r202, r110
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r204, r57, 0x0
	add_i32 r57, 0x4000, r9
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r208, r196, r166
	mma_16x16x16f16 r102, r208, r200, r102
	mma_16x16x16f16 r166, r210, r198, r166
	mma_16x16x16f16 r102, r210, r202, r102
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r208, r57, 0x0
	add_i32 r57, 0x4000, r10
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r212, r196, r158
	mma_16x16x16f16 r94, r212, r200, r94
	mma_16x16x16f16 r158, r214, r198, r158
	mma_16x16x16f16 r94, r214, r202, r94
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r212, r57, 0x0
	add_i32 r57, 0x4000, r11
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r204, r196, r150
	mma_16x16x16f16 r86, r204, r200, r86
	mma_16x16x16f16 r150, r206, r198, r150
	mma_16x16x16f16 r86, r206, r202, r86
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r204, r57, 0x0
	add_i32 r57, 0x4000, r12
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r196, r142
	mma_16x16x16f16 r78, r208, r200, r78
	mma_16x16x16f16 r142, r210, r198, r142
	mma_16x16x16f16 r78, r210, r202, r78
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r208, r12, 0x0
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r212, r196, r134
	mma_16x16x16f16 r70, r212, r200, r70
	mma_16x16x16f16 r134, r214, r198, r134
	mma_16x16x16f16 r70, r214, r202, r70
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r212, r13, 0x0
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r204, r196, r126
	mma_16x16x16f16 r62, r204, r200, r62
	mma_16x16x16f16 r126, r206, r198, r126
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r196, r14, 0x0
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	mma_16x16x16f16 r62, r206, r202, r62
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r200, r15, 0x0
	lds_b128 r204, r16, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r178, r208, r188, r178
	mma_16x16x16f16 r114, r208, r192, r114
	mma_16x16x16f16 r178, r210, r190, r178
	mma_16x16x16f16 r114, r210, r194, r114
	arrive bsmcnt(3)
	mma_16x16x16f16 r170, r212, r188, r170
	mma_16x16x16f16 r106, r212, r192, r106
	mma_16x16x16f16 r170, r214, r190, r170
	mma_16x16x16f16 r106, r214, r194, r106
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r196, r188, r162
	mma_16x16x16f16 r98, r196, r192, r98
	mma_16x16x16f16 r162, r198, r190, r162
	mma_16x16x16f16 r98, r198, r194, r98
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r196, r17, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r200, r188, r154
	mma_16x16x16f16 r90, r200, r192, r90
	mma_16x16x16f16 r154, r202, r190, r154
	mma_16x16x16f16 r90, r202, r194, r90
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r200, r18, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r188, r146
	mma_16x16x16f16 r82, r204, r192, r82
	mma_16x16x16f16 r146, r206, r190, r146
	mma_16x16x16f16 r82, r206, r194, r82
	.loc	2 205 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:205:43
	lds_b128 r204, r19, 0x0
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r196, r188, r138
	mma_16x16x16f16 r74, r196, r192, r74
	mma_16x16x16f16 r138, r198, r190, r138
	mma_16x16x16f16 r74, r198, r194, r74
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r196, r57, 0x0
	add_i32 r57, 0x4000, r13
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r200, r188, r130
	mma_16x16x16f16 r66, r200, r192, r66
	mma_16x16x16f16 r130, r202, r190, r130
	mma_16x16x16f16 r66, r202, r194, r66
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r200, r57, 0x0
	add_i32 r57, 0x4000, r14
	.loc	2 211 57                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:211:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r204, r188, r122
	mma_16x16x16f16 r58, r204, r192, r58
	mma_16x16x16f16 r122, r206, r190, r122
	mma_16x16x16f16 r58, r206, r194, r58
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r204, r57, 0x0
	add_i32 r57, 0x4000, r15
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r182, r196, r188, r182
	mma_16x16x16f16 r118, r196, r192, r118
	mma_16x16x16f16 r182, r198, r190, r182
	mma_16x16x16f16 r118, r198, r194, r118
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r196, r57, 0x0
	add_i32 r57, 0x4000, r16
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r200, r188, r174
	mma_16x16x16f16 r110, r200, r192, r110
	mma_16x16x16f16 r174, r202, r190, r174
	mma_16x16x16f16 r110, r202, r194, r110
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r200, r57, 0x0
	add_i32 r57, 0x4000, r17
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r204, r188, r166
	mma_16x16x16f16 r102, r204, r192, r102
	mma_16x16x16f16 r166, r206, r190, r166
	mma_16x16x16f16 r102, r206, r194, r102
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r204, r57, 0x0
	add_i32 r57, 0x4000, r18
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r196, r188, r158
	mma_16x16x16f16 r94, r196, r192, r94
	mma_16x16x16f16 r158, r198, r190, r158
	mma_16x16x16f16 r94, r198, r194, r94
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r196, r57, 0x0
	add_i32 r57, 0x4000, r19
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r200, r188, r150
	mma_16x16x16f16 r86, r200, r192, r86
	mma_16x16x16f16 r150, r202, r190, r150
	mma_16x16x16f16 r86, r202, r194, r86
	.loc	2 219 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:219:45
	lds_b128 r200, r57, 0x0
	.loc	2 225 55                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:225:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r204, r188, r142
	mma_16x16x16f16 r78, r204, r192, r78
	mma_16x16x16f16 r142, r206, r190, r142
	mma_16x16x16f16 r78, r206, r194, r78
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r196, r188, r134
	mma_16x16x16f16 r70, r196, r192, r70
	mma_16x16x16f16 r134, r198, r190, r134
	mma_16x16x16f16 r70, r198, r194, r70
	arrive bsmcnt(0)
	mma_16x16x16f16 r126, r200, r188, r126
	mma_16x16x16f16 r62, r200, r192, r62
	mma_16x16x16f16 r126, r202, r190, r126
	mma_16x16x16f16 r62, r202, r194, r62
	.loc	2 233 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:233:9
	bra_smsks LBB2_90
; %bb.94:                               ; %if.then329
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp64:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	sandn_b64 cmsk, xmsk, s12
	snop 0
	bra_cmsks LBB2_90
.Ltmp65:
; %bb.95:                               ; %for.body335.us.preheader
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_130
; %bb.96:                               ; %Flow523
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_133
LBB2_97:                                ; %if.end17.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_134
LBB2_98:                                ; %Flow521
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_137
LBB2_99:                                ; %for.inc356.us
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_138
LBB2_100:                               ; %Flow519
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_141
LBB2_101:                               ; %if.end17.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_142
LBB2_102:                               ; %Flow517
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_145
LBB2_103:                               ; %for.inc356.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_146
LBB2_104:                               ; %Flow515
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_149
LBB2_105:                               ; %if.end17.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_150
LBB2_106:                               ; %Flow513
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_153
LBB2_107:                               ; %for.inc356.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_154
LBB2_108:                               ; %Flow511
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_157
LBB2_109:                               ; %if.end17.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_158
LBB2_110:                               ; %Flow509
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_161
LBB2_111:                               ; %for.inc356.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_162
LBB2_112:                               ; %Flow507
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_165
LBB2_113:                               ; %if.end17.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_166
LBB2_114:                               ; %Flow505
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_169
LBB2_115:                               ; %for.inc356.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_170
LBB2_116:                               ; %Flow503
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_173
LBB2_117:                               ; %if.end17.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_174
LBB2_118:                               ; %Flow501
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_177
LBB2_119:                               ; %for.inc356.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_178
LBB2_120:                               ; %Flow499
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_181
LBB2_121:                               ; %if.end17.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_182
LBB2_122:                               ; %Flow497
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_185
LBB2_123:                               ; %for.inc356.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmsks LBB2_186
LBB2_124:                               ; %Flow495
                                        ;   in Loop: Header=BB2_91 Depth=1
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_126
LBB2_125:                               ; %if.then.i.us.7
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp66:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x188080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r50
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp67:
LBB2_126:                               ; %if.end17.i.us.7
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	sadd_co_i32 s3, 0x400, 0
	mov_b32 r57, s3
	shl_b64 r188, 0, s40
	smov_b64 s16, s20
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	snop 0
	bra_xmskz LBB2_128
; %bb.127:                              ; %if.else26.i.us.7
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sadd_co_i32 s3, 0x4400, 0
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	sandn_b64 s16, s20, xmsk
	sand_b64 s26, s24, xmsk
	mov_b32 r57, s3
	shl_b64 r188, 0, s18
	sor_b64 s16, s16, s26
LBB2_128:                               ; %Flow
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 0 7                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sor_b64 xmsk, xmsk, s6
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s16
	snop 0
	bra_xmskz LBB2_89
; %bb.129:                              ; %for.inc356.us.7.sink.split
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp68:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r188, r188, r186
	addc_co_u32 r189, r189, r187
	add_co_u32 r188, r188, s4
	mov_b32 r190, s5
	addc_co_u32 r189, r189, r190
	add_co_u32 r188, 0x1a4080, r188
	add_u32 r57, r57, r48
	addc_co_u32 r189, r189, 0
	rfl_b32 s15, r57
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r188, 0x0 bsm
	smov_b32 md, s3
	bra LBB2_89
.Ltmp69:
LBB2_130:                               ; %if.else.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_132
; %bb.131:                              ; %if.then12.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp70:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x80, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r20
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp71:
LBB2_132:                               ; %Flow522
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_97
LBB2_133:                               ; %if.then.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp72:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x80, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r21
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp73:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_98
LBB2_134:                               ; %if.else26.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_136
; %bb.135:                              ; %if.then28.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp74:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x1c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r22
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp75:
LBB2_136:                               ; %Flow520
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_99
LBB2_137:                               ; %if.then19.i.us
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp76:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x1c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r23
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp77:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_100
LBB2_138:                               ; %if.else.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_140
; %bb.139:                              ; %if.then12.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp78:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x38080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r24
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp79:
LBB2_140:                               ; %Flow518
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_101
LBB2_141:                               ; %if.then.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp80:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x38080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r25
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp81:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_102
LBB2_142:                               ; %if.else26.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_144
; %bb.143:                              ; %if.then28.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp82:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x54080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r26
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp83:
LBB2_144:                               ; %Flow516
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_103
LBB2_145:                               ; %if.then19.i.us.1
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp84:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x54080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r27
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp85:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_104
LBB2_146:                               ; %if.else.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_148
; %bb.147:                              ; %if.then12.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp86:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x70080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r28
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp87:
LBB2_148:                               ; %Flow514
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_105
LBB2_149:                               ; %if.then.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp88:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x70080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r29
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp89:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_106
LBB2_150:                               ; %if.else26.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_152
; %bb.151:                              ; %if.then28.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp90:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x8c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r30
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp91:
LBB2_152:                               ; %Flow512
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_107
LBB2_153:                               ; %if.then19.i.us.2
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp92:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x8c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r31
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp93:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_108
LBB2_154:                               ; %if.else.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_156
; %bb.155:                              ; %if.then12.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp94:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0xa8080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r32
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp95:
LBB2_156:                               ; %Flow510
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_109
LBB2_157:                               ; %if.then.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp96:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0xa8080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r33
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp97:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_110
LBB2_158:                               ; %if.else26.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_160
; %bb.159:                              ; %if.then28.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp98:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0xc4080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r34
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp99:
LBB2_160:                               ; %Flow508
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_111
LBB2_161:                               ; %if.then19.i.us.3
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp100:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0xc4080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r35
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp101:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_112
LBB2_162:                               ; %if.else.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_164
; %bb.163:                              ; %if.then12.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp102:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0xe0080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r36
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp103:
LBB2_164:                               ; %Flow506
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_113
LBB2_165:                               ; %if.then.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp104:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0xe0080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r37
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp105:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_114
LBB2_166:                               ; %if.else26.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_168
; %bb.167:                              ; %if.then28.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp106:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0xfc080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r38
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp107:
LBB2_168:                               ; %Flow504
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_115
LBB2_169:                               ; %if.then19.i.us.4
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp108:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0xfc080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r39
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp109:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_116
LBB2_170:                               ; %if.else.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_172
; %bb.171:                              ; %if.then12.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp110:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x118080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r40
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp111:
LBB2_172:                               ; %Flow502
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_117
LBB2_173:                               ; %if.then.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp112:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x118080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r41
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp113:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_118
LBB2_174:                               ; %if.else26.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_176
; %bb.175:                              ; %if.then28.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp114:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x134080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r42
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp115:
LBB2_176:                               ; %Flow500
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_119
LBB2_177:                               ; %if.then19.i.us.5
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp116:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x134080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r43
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp117:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_120
LBB2_178:                               ; %if.else.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_180
; %bb.179:                              ; %if.then12.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp118:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x150080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r44
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp119:
LBB2_180:                               ; %Flow498
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_121
LBB2_181:                               ; %if.then.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp120:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x150080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r45
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp121:
	.loc	2 128 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_122
LBB2_182:                               ; %if.else26.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 132 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:132:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_184
; %bb.183:                              ; %if.then28.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp122:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x16c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r46
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp123:
LBB2_184:                               ; %Flow496
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 128 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:128:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmskz LBB2_123
LBB2_185:                               ; %if.then19.i.us.6
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp124:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r53, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r54, r188
	add_co_u32 r190, 0x16c080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r47
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
	sor_b64 xmsk, xmsk, s6
.Ltmp125:
	.loc	2 119 7                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	and_xmsk s6, s22
	sxor_b64 s6, xmsk, s6
	bra_xmskz LBB2_124
LBB2_186:                               ; %if.else.i.us.7
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	2 123 14                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:123:14
	and_xmsk s16, s24
	snop 0
	bra_xmskz LBB2_188
; %bb.187:                              ; %if.then12.i.us.7
                                        ;   in Loop: Header=BB2_91 Depth=1
.Ltmp126:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r57, r51, s4
	mov_b32 r188, s5
	addc_co_u32 r188, r52, r188
	add_co_u32 r190, 0x188080, r57
	addc_co_u32 r191, r188, 0
	rfl_b32 s15, r49
	smov_b32 s3, md
	snop 2
	smov_b32 md, s15
	snop 0
	ldg_b128 r0, r190, 0x0 bsm
	smov_b32 md, s3
.Ltmp127:
LBB2_188:                               ; %Flow494
                                        ;   in Loop: Header=BB2_91 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s16
	.loc	2 119 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:119:7
	or_xmsk s6, s6
	sxor_b64 xmsk, xmsk, s6
	snop 0
	bra_xmsks LBB2_125
	bra LBB2_126
.Ltmp128:
LBB2_189:                               ; %for.cond364.preheader
	.loc	2 0 7 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:7
	sshl_b32 s3, 7, s14
	ssub_co_i32 s1, s1, s3
	sadd_co_i32 s1, s1, s2
	smov_b32 s2, 0x1e0
	.loc	2 286 65 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:65
	and_or_b32 r0, r2, s2, r0
	.loc	2 286 94 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:94
	cmp_lt_i32 s2, r0, s1
	shl_b32 r4, 10, r1
	shl_b32 r1, 11, r1
	sshl_b32 s4, 18, s14
	and_b32 r4, 0xf0000, r4
	and_b32 r1, 0x7800, r1
	sshl_b32 s0, 7, s0
	and_b32 r3, r3, 12
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	sand_b64 s2, s12, s2
	or3_b32 r1, r1, r4, r3
	sadd_co_i32 s0, s0, s4
	add_u32 r2, s0, r1
	sand_b64 s2, s10, s2
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_207
; %bb.190:                              ; %if.end550
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_208
LBB2_191:                               ; %if.end550.1
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_209
LBB2_192:                               ; %if.end550.2
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_210
LBB2_193:                               ; %if.end550.3
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_211
LBB2_194:                               ; %if.end550.4
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_212
LBB2_195:                               ; %if.end550.5
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_213
LBB2_196:                               ; %if.end550.6
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_198
LBB2_197:                               ; %if.then487.7
	.loc	2 268 27 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r125
.Ltmp129:
	.file	5 "/opt/maca/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r125, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s2
	exp_f32 r6, r6
.Ltmp130:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r124
.Ltmp131:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp132:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r125, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r129
.Ltmp133:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r124, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s2
	exp_f32 r7, r7
.Ltmp134:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r123
.Ltmp135:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp136:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r124, r6
.Ltmp137:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r123, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s2
	exp_f32 r8, r8
.Ltmp138:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r122
.Ltmp139:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp140:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r123, r7
.Ltmp141:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r122, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s2
	exp_f32 r5, r5
.Ltmp142:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r122, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r126
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r127
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r128
.Ltmp143:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp144:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp145:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp146:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp147:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, 0x70, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_198:                               ; %if.end550.7
	.loc	2 0 235                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:235
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 65 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:65
	or_b32 r0, r0, 16
	.loc	2 286 94 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:94
	cmp_lt_i32 s0, r0, s1
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	snop 3
	sand_b64 s0, s12, s0
	sand_b64 s0, s10, s0
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_214
; %bb.199:                              ; %if.end550.8
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_215
LBB2_200:                               ; %if.end550.9
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_216
LBB2_201:                               ; %if.end550.10
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_217
LBB2_202:                               ; %if.end550.11
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_218
LBB2_203:                               ; %if.end550.12
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_219
LBB2_204:                               ; %if.end550.13
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_220
LBB2_205:                               ; %if.end550.14
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_221
LBB2_206:                               ; %if.end550.15
	.loc	2 308 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:308:1
	snop 1
	endk
LBB2_207:                               ; %if.then487
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r181
.Ltmp148:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r181, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp149:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r180
.Ltmp150:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp151:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r181, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r185
.Ltmp152:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r180, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp153:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r179
.Ltmp154:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp155:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r180, r6
.Ltmp156:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r179, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp157:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r178
.Ltmp158:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp159:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r179, r7
.Ltmp160:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r178, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp161:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r178, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r182
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r183
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r184
.Ltmp162:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp163:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp164:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp165:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp166:
	.loc	2 301 35 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r8, s8, r8
	mov_b32 r3, s9
	addc_co_u32 r9, r3, r9
	.loc	2 301 235 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r5_hi, 0, 0
	or_b32 r5, r3, r5
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_191
LBB2_208:                               ; %if.then487.1
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r173
.Ltmp167:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r173, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp168:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r172
.Ltmp169:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp170:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r173, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r177
.Ltmp171:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r172, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp172:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r171
.Ltmp173:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp174:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r172, r6
.Ltmp175:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r171, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp176:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r170
.Ltmp177:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp178:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r171, r7
.Ltmp179:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r170, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp180:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r170, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r174
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r175
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r176
.Ltmp181:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp182:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp183:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp184:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp185:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, r2, 16
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_192
LBB2_209:                               ; %if.then487.2
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r165
.Ltmp186:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r165, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp187:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r164
.Ltmp188:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp189:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r165, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r169
.Ltmp190:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r164, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp191:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r163
.Ltmp192:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp193:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r164, r6
.Ltmp194:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r163, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp195:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r162
.Ltmp196:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp197:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r163, r7
.Ltmp198:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r162, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp199:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r162, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r166
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r167
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r168
.Ltmp200:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp201:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp202:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp203:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp204:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, r2, 32
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_193
LBB2_210:                               ; %if.then487.3
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r157
.Ltmp205:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r157, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp206:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r156
.Ltmp207:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp208:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r157, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r161
.Ltmp209:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r156, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp210:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r155
.Ltmp211:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp212:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r156, r6
.Ltmp213:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r155, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp214:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r154
.Ltmp215:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp216:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r155, r7
.Ltmp217:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r154, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp218:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r154, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r158
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r159
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r160
.Ltmp219:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp220:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp221:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp222:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp223:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, r2, 48
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_194
LBB2_211:                               ; %if.then487.4
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r149
.Ltmp224:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r149, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp225:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r148
.Ltmp226:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp227:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r149, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r153
.Ltmp228:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r148, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp229:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r147
.Ltmp230:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp231:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r148, r6
.Ltmp232:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r147, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp233:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r146
.Ltmp234:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp235:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r147, r7
.Ltmp236:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r146, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp237:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r146, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r150
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r151
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r152
.Ltmp238:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp239:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp240:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp241:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp242:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, r2, 64
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_195
LBB2_212:                               ; %if.then487.5
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r141
.Ltmp243:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r141, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp244:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r140
.Ltmp245:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp246:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r141, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r145
.Ltmp247:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r140, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp248:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r139
.Ltmp249:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp250:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r140, r6
.Ltmp251:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r139, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp252:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r138
.Ltmp253:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp254:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r139, r7
.Ltmp255:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r138, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp256:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r138, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r142
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r143
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r144
.Ltmp257:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp258:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp259:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp260:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp261:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, 0x50, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_196
LBB2_213:                               ; %if.then487.6
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r1, 0xbfb8aa3b, r133
.Ltmp262:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r6, r5, 0, s6
	fmka_f32 r6, r133, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s6
	exp_f32 r6, r6
.Ltmp263:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r6, 0xbfb8aa3b, r132
.Ltmp264:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp265:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s0
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r4, r133, r4
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r4, r4, r137
.Ltmp266:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s6
	fmka_f32 r7, r132, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s6
	exp_f32 r7, r7
.Ltmp267:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r7, 0xbfb8aa3b, r131
.Ltmp268:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp269:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s0
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r6, r132, r6
.Ltmp270:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s6
	fmka_f32 r8, r131, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s6
	exp_f32 r8, r8
.Ltmp271:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r8, 0xbfb8aa3b, r130
.Ltmp272:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp273:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s0
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r7, r131, r7
.Ltmp274:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s6
	fmka_f32 r5, r130, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s6
	exp_f32 r5, r5
.Ltmp275:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r1, r130, r1
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r1, r1, r134
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r3, r7, r135
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r5, r6, r136
.Ltmp276:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp277:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp278:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp279:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp280:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r8, 0x60, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r9, 0
	shl_b64 r8, 1, r8
	add_co_u32 r8, s8, r8
	mov_b32 r4, s9
	addc_co_u32 r9, r4, r9
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_197
	bra LBB2_198
LBB2_214:                               ; %if.then487.8
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r117
.Ltmp281:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r117, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp282:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r116
.Ltmp283:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp284:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r117, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r121
.Ltmp285:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r116, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp286:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r115
.Ltmp287:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp288:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r116, r5
.Ltmp289:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r115, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp290:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r114
.Ltmp291:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp292:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r115, r6
.Ltmp293:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r114, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp294:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r114, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r118
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r119
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r120
.Ltmp295:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp296:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp297:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp298:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp299:
	.loc	2 301 172 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:172
	snop 0
	or_b32 r6, 0x8000, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_200
LBB2_215:                               ; %if.then487.9
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r109
.Ltmp300:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r109, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp301:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r108
.Ltmp302:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp303:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r109, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r113
.Ltmp304:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r108, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp305:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r107
.Ltmp306:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp307:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r108, r5
.Ltmp308:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r107, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp309:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r106
.Ltmp310:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp311:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r107, r6
.Ltmp312:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r106, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp313:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r106, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r110
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r111
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r112
.Ltmp314:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp315:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp316:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp317:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp318:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8010, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_201
LBB2_216:                               ; %if.then487.10
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r101
.Ltmp319:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r101, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp320:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r100
.Ltmp321:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp322:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r101, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r105
.Ltmp323:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r100, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp324:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r99
.Ltmp325:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp326:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r100, r5
.Ltmp327:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r99, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp328:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r98
.Ltmp329:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp330:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r99, r6
.Ltmp331:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r98, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp332:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r98, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r102
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r103
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r104
.Ltmp333:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp334:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp335:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp336:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp337:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8020, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_202
LBB2_217:                               ; %if.then487.11
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r93
.Ltmp338:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r93, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp339:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r92
.Ltmp340:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp341:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r93, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r97
.Ltmp342:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r92, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp343:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r91
.Ltmp344:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp345:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r92, r5
.Ltmp346:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r91, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp347:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r90
.Ltmp348:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp349:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r91, r6
.Ltmp350:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r90, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp351:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r90, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r94
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r95
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r96
.Ltmp352:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp353:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp354:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp355:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8030, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_203
LBB2_218:                               ; %if.then487.12
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r85
.Ltmp357:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r85, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp358:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r84
.Ltmp359:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp360:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r85, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r89
.Ltmp361:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r84, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp362:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r83
.Ltmp363:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp364:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r84, r5
.Ltmp365:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r83, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp366:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r82
.Ltmp367:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp368:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r83, r6
.Ltmp369:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r82, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp370:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r82, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r86
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r87
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r88
.Ltmp371:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp372:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp373:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp374:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp375:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8040, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_204
LBB2_219:                               ; %if.then487.13
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r77
.Ltmp376:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r77, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp377:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r76
.Ltmp378:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp379:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r77, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r81
.Ltmp380:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r76, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp381:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r75
.Ltmp382:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp383:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r76, r5
.Ltmp384:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r75, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp385:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r74
.Ltmp386:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp387:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r75, r6
.Ltmp388:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r74, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp389:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r74, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r78
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r79
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r80
.Ltmp390:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp391:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp392:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp393:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp394:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8050, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_205
LBB2_220:                               ; %if.then487.14
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r69
.Ltmp395:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r69, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp396:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_scale_f32 r5, r3, r3, s6
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r1
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s6, r3, s6
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r68
.Ltmp397:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp398:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s6
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r69, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r73
.Ltmp399:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r68, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp400:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_scale_f32 r6, r5, r5, s6
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r1
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s6, r5, s6
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r67
.Ltmp401:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp402:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s6
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r68, r5
.Ltmp403:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r67, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp404:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_scale_f32 r7, r6, r6, s6
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r1
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s6, r6, s6
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r66
.Ltmp405:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp406:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s6
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r67, r6
.Ltmp407:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r66, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp408:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
	div_scale_f32 r4, r0, r0, s6
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r1, neg(r4), r7
	fmac_f32 r7, r1, r7
	div_scale_f32 r1, s6, r0, s6
	mul_f32 r8, r1, r7
	fma_f32 r9, neg(r4), r8, r1
	fmac_f32 r8, r9, r7
	fmac_f32 r1, neg(r4), r8
	div_fmas_f32 r1, r1, r7, r8
	div_fixup_f32 r0, r1, r0, s6
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r66, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r70
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r71
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r72
.Ltmp409:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp410:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp411:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp412:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8060, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r3, s9
	addc_co_u32 r7, r3, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r3, 16, r4
	add_u16 r1_hi, 0, 0
	or_b32 r9, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r8, r1, r0
	snop 1
	stg_b64 r6, 0x0, r8 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 286 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:286:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_206
LBB2_221:                               ; %if.then487.15
	.loc	2 268 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:268:27
	mul_f32 r0, 0xbfb8aa3b, r61
.Ltmp414:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r61, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s0
	exp_f32 r5, r5
.Ltmp415:
	.loc	2 276 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:276:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
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
	.loc	2 267 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:267:27
	mul_f32 r5, 0xbfb8aa3b, r60
.Ltmp416:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp417:
	.loc	2 280 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:280:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 284 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:284:20
	mul_f32 r3, r61, r3
	.loc	2 298 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:298:32
	mul_f32 r3, r3, r65
.Ltmp418:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r60, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s0
	exp_f32 r6, r6
.Ltmp419:
	.loc	2 275 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:275:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
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
	.loc	2 266 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:266:27
	mul_f32 r6, 0xbfb8aa3b, r59
.Ltmp420:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp421:
	.loc	2 279 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:279:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 283 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:283:20
	mul_f32 r5, r60, r5
.Ltmp422:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r59, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s0
	exp_f32 r7, r7
.Ltmp423:
	.loc	2 274 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:274:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
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
	.loc	2 265 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:265:27
	mul_f32 r7, 0xbfb8aa3b, r58
.Ltmp424:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp425:
	.loc	2 278 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:278:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 282 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:282:20
	mul_f32 r6, r59, r6
.Ltmp426:
	.loc	5 285 49                        ; /opt/maca/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r58, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s0
	exp_f32 r4, r4
.Ltmp427:
	.loc	2 273 26                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:273:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 277 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:277:24
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
	.loc	2 281 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:281:20
	mul_f32 r0, r58, r0
	.loc	2 295 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:295:32
	mul_f32 r0, r0, r62
	.loc	2 296 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:296:32
	mul_f32 r1, r6, r63
	.loc	2 297 32                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:297:32
	mul_f32 r4, r5, r64
.Ltmp428:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp429:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp430:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp431:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp432:
	.loc	2 301 192 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:192
	snop 0
	or_b32 r6, 0x8070, r2
	.loc	2 301 35 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:35
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r6, s8, r6
	mov_b32 r2, s9
	addc_co_u32 r7, r2, r7
	.loc	2 301 235                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:301:235
	shl_b32 r2, 16, r3
	add_u16 r1_hi, 0, 0
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 308 1 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:308:1
	snop 2
	endk
.Ltmp433:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 27
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 32120
; NumMTRegsForWarps/PEU: 216
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 310 0                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:310:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp434:
	.loc	2 322 25 prologue_end           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:322:25
	scmp_gt_u32 s5, 31
	.loc	2 322 7 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:322:7
	snop 0
	bra_smskz LBB3_2
; %bb.1:                                ; %if.else
	.loc	2 327 48 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:327:48
	sand_b32 s0, 1, s5
	cmp_eq_u32 s2, s0, 1
	.loc	2 326 49                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:326:49
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 326 75 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:326:75
	sand_b32 s1, s4, 1
	.loc	2 326 54                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:326:54
	sor_b32 s16, s0, s1
	.loc	2 327 75 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:327:75
	sshr_b32 s0, 1, s4
	.loc	2 327 48 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:327:48
	csel_b32 r1, 14, 0, s2
	.loc	2 327 54                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:327:54
	add_u32 r1, r1, s0
	.loc	2 322 7 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:322:7
	bra_xmskz LBB3_3
	bra LBB3_4
LBB3_2:
                                        ; implicit-def: $mtreg_32bit_1
                                        ; implicit-def: $streg_32bit_16
LBB3_3:                                 ; %if.then
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
	mov_b32 r1, s4
	smov_b32 s16, s5
LBB3_4:                                 ; %if.end
	.loc	2 331 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:331:19
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
	.loc	2 347 150                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:150
	and_or_b32 r36, r4, s1, r3
	shr_b32 r2, 1, r0
	and_b32 r30, r2, 24
	or_b32 r28, 0x8000, r36
	.loc	2 347 209 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:209
	or_b32 r4, r28, r30
	or_b32 r3, r36, r30
	.loc	2 347 67                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:67
	mad_i32 r4, r4, 2, s14
	mad_i32 r6, r3, 2, s14
	shl_b32 r31, 19, r1
	.loc	2 347 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:45
	ldg_b128 r152, r4, 0x0
	.loc	2 347 209                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:209
	or_b32 r4, r3, 32
	or_b32 r3, 0x8020, r3
	.loc	2 347 67                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:67
	mad_i32 r8, r3, 2, s14
	shl_b32 r3, 8, r0
	and_b32 r32, 0x3f800, r3
	shl_b32 r3, 3, r0
	.loc	2 347 45                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:45
	ldg_b128 r148, r6, 0x0
	.loc	2 347 67                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:67
	mad_i32 r6, r4, 2, s14
	and_b32 r4, r3, 56
	arrive slcnt(0)
	smul_i32 s7, 0xe00000, s0
	or3_b32 r4, r4, r32, r31
	add_u32 r4, r4, s7
	.loc	2 351 356 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:356
	mad_i32 r4, r4, 2, s40
	add_co_u32 r10, 0x20000, r4
	addc_co_u32 r11, r5, 0
	.loc	2 351 339 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:339
	ldg_b128 r18, r4, 0x0
	.loc	2 347 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:45
	ldg_b128 r164, r6, 0x0
	.loc	2 351 339                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:339
	ldg_b128 r22, r10, 0x0
	.loc	2 351 356 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:356
	add_co_u32 r10, 0x40000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 351 339                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:339
	ldg_b128 r38, r10, 0x0
	.loc	2 347 45 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:347:45
	ldg_b128 r168, r8, 0x0
	.loc	2 351 339                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:339
	ldg_b128 r42, r4, 0x0
	.loc	2 331 19                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:331:19
	sashr_i32 s1, 31, s0
	.loc	2 332 20                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:332:20
	sshl_b64 s4, 2, s0
	sadd_co_u32 s0, s8, s4
	saddc_co_u32 s1, s9, s5
	ldu_b32 s2, s0, 0x0
	.loc	2 333 19                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:333:19
	sadd_co_u32 s0, s44, s4
	saddc_co_u32 s1, s45, s5
	.loc	2 334 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:334:22
	sadd_co_u32 s4, s46, s4
	saddc_co_u32 s5, s47, s5
	and_b32 r6, r3, 16
	and_b32 r16, r3, 32
	.loc	2 333 19                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:333:19
	ldu_b32 s1, s0, 0x0
	.loc	2 334 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:334:22
	ldu_b32 s0, s4, 0x0
	mul_u24 r4, r0, 9
	add_u32 r7, r16, r0
	add_u32 r6, r6, r0
	and_b32 r5, 0x1fc0, r3
	and_b32 r4, r4, 8
	and_b32 r7, r7, 32
	and_b32 r6, r6, 16
	.loc	2 351 47                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:47
	add_u32 r8, 0x800, r5
	add_u32 r9, 0x1000, r5
	add_u32 r10, 0x1800, r5
	.loc	2 351 83 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:83
	or_b32 r11, r7, r4
	.loc	2 351 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:27
	or_b32 r4, r6, r4
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 351 253                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:253
	or3_b32 r12, r11, r5, r6
	.loc	2 351 27                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:27
	or3_b32 r13, r11, r8, r6
	or3_b32 r6, r11, r9, r6
	mov_b32 r11, s3
	or3_b32 r4, r4, r10, r7
	shl_add_u32 r12, 1, r12, r11
	shl_add_u32 r13, 1, r13, r11
	shl_add_u32 r6, 1, r6, r11
	shl_add_u32 r4, 1, r4, r11
	.loc	2 351 339                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:351:339
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r18
	arrive gvmcnt(3)
	sts_b128 r13, 0x0, r22
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r38
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r42
.Ltmp435:
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
.Ltmp436:
	.loc	2 354 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:354:3
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
	.loc	2 0 0 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
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
	.loc	2 354 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:354:3
	add_co_u32 r184, 0x88, r28
	shl_add_u32 r4, 1, r4, 0
	or3_b32 r180, r31, r32, r33
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
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
	.loc	2 354 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:354:3
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
	.loc	2 354 31                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:354:31
	sadd_co_u32 s14, 0x80, s14
	add_co_u32 r178, 0x100, r178
	saddc_co_u32 s15, s15, 0
	addc_co_u32 r179, r179, 0
	add_co_u32 r184, 0x100, r184
	scmp_eq_u64 0x800, s14
	addc_co_u32 r185, r185, 0
	.loc	2 354 3                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:354:3
	bra_smsks LBB3_12
LBB3_6:                                 ; %for.cond147.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 356 487 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:356:487
	add_u32 r28, r180, s14
	mad_i32 r30, r28, 2, s8
.Ltmp437:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp438:
	.loc	2 356 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:356:487
	add_u32 r29, 0x10000, r28
.Ltmp439:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s7, md
.Ltmp440:
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	add_i32 r190, 0x4000, r9
.Ltmp441:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp442:
	.loc	2 356 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:356:487
	mad_i32 r30, r29, 2, s8
.Ltmp443:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp444:
	.loc	2 356 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:356:487
	add_u32 r30, 0x20000, r28
	mad_i32 r186, r30, 2, s8
	add_u32 r31, 0x30000, r28
.Ltmp445:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp446:
	.loc	2 356 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:356:487
	mad_i32 r186, r31, 2, s8
	.loc	2 360 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	add_co_u32 r183, r176, s14
.Ltmp447:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r186, 0x0 bsm
.Ltmp448:
	.loc	2 360 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	mov_b32 r186, s15
	addc_co_u32 r187, r177, r186
	add_co_u32 r188, r182, s14
	addc_co_u32 r189, r181, r186
	.loc	2 360 233 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:233
	or_b32 r188, r188, 32
	.loc	2 360 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	shl_b64 r204, 1, r188
	.loc	2 364 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	add_i32 r189, 0x4000, r8
	.loc	2 360 233                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:233
	or_b32 r186, r183, 32
	.loc	2 360 71 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	shl_b64 r202, 1, r186
	.loc	2 364 41 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r192, r189, 0x0
	lds_b128 r196, r190, 0x0
	.loc	2 360 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	add_co_u32 r186, s3, r202
	mov_b32 r183, s4
	addc_co_u32 r187, r183, r203
	add_co_u32 r188, s3, r204
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r172, r192, r148, r172
	.loc	2 360 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:71
	addc_co_u32 r189, r183, r205
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	add_i32 r183, 0x4000, r10
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	mma_16x16x16f16 r124, r192, r152, r124
	mma_16x16x16f16 r172, r194, r150, r172
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r206, r183, 0x0
	add_i32 r183, 0x4000, r11
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	mma_16x16x16f16 r124, r194, r154, r124
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r196, r148, r160
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	mma_16x16x16f16 r120, r196, r152, r120
	mma_16x16x16f16 r160, r198, r150, r160
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r13
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	mma_16x16x16f16 r120, r198, r154, r120
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r206, r148, r156
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	mma_16x16x16f16 r116, r206, r152, r116
	mma_16x16x16f16 r156, r208, r150, r156
	mma_16x16x16f16 r116, r208, r154, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r148, r144
	mma_16x16x16f16 r112, r190, r152, r112
	mma_16x16x16f16 r144, r192, r150, r144
	mma_16x16x16f16 r112, r192, r154, r112
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r15
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r148, r140
	mma_16x16x16f16 r108, r194, r152, r108
	mma_16x16x16f16 r140, r196, r150, r140
	mma_16x16x16f16 r108, r196, r154, r108
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r198, r148, r136
	mma_16x16x16f16 r104, r198, r152, r104
	mma_16x16x16f16 r136, r200, r150, r136
	mma_16x16x16f16 r104, r200, r154, r104
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r148, r132
	mma_16x16x16f16 r100, r190, r152, r100
	mma_16x16x16f16 r132, r192, r150, r132
	mma_16x16x16f16 r100, r192, r154, r100
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r148, r128
	mma_16x16x16f16 r96, r194, r152, r96
	mma_16x16x16f16 r128, r196, r150, r128
	mma_16x16x16f16 r96, r196, r154, r96
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r19
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r198, r164, r172
	mma_16x16x16f16 r124, r198, r168, r124
	mma_16x16x16f16 r172, r200, r166, r172
	mma_16x16x16f16 r124, r200, r170, r124
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r190, r164, r160
	mma_16x16x16f16 r120, r190, r168, r120
	mma_16x16x16f16 r160, r192, r166, r160
	mma_16x16x16f16 r120, r192, r170, r120
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r190, r183, 0x0
	add_i32 r183, 0x4000, r21
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r194, r164, r156
	mma_16x16x16f16 r116, r194, r168, r116
	mma_16x16x16f16 r156, r196, r166, r156
	mma_16x16x16f16 r116, r196, r170, r116
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r194, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r198, r164, r144
	mma_16x16x16f16 r112, r198, r168, r112
	mma_16x16x16f16 r144, r200, r166, r144
	mma_16x16x16f16 r112, r200, r170, r112
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r198, r183, 0x0
	add_i32 r183, 0x4000, r23
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r190, r164, r140
	mma_16x16x16f16 r108, r190, r168, r108
	mma_16x16x16f16 r140, r192, r166, r140
	mma_16x16x16f16 r108, r192, r170, r108
	.loc	2 364 41                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:364:41
	lds_b128 r190, r183, 0x0
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r194, r164, r136
	mma_16x16x16f16 r104, r194, r168, r104
	mma_16x16x16f16 r136, r196, r166, r136
	mma_16x16x16f16 r104, r196, r170, r104
	.loc	2 360 49                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:49
	ldg_b128 r194, r178, -0x8
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(1)
	mma_16x16x16f16 r132, r198, r164, r132
	mma_16x16x16f16 r100, r198, r168, r100
	mma_16x16x16f16 r132, r200, r166, r132
	mma_16x16x16f16 r100, r200, r170, r100
	.loc	2 360 49                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:49
	ldg_b128 r198, r184, -0x8
	.loc	2 370 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:370:58
	arrive bsmcnt(0)
	mma_16x16x16f16 r128, r190, r164, r128
	mma_16x16x16f16 r96, r190, r168, r96
	mma_16x16x16f16 r128, r192, r166, r128
	mma_16x16x16f16 r96, r192, r170, r96
	.loc	2 360 49                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:360:49
	ldg_b128 r190, r186, 0x0
	ldg_b128 r186, r188, 0x0
.Ltmp449:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp450:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp451:
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r8, 0x0
	lds_b128 r226, r9, 0x0
	lds_b128 r230, r10, 0x0
	.loc	2 383 488                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:383:488
	add_u32 r183, 0x10040, r28
	mad_i32 r210, r183, 2, s40
	add_u32 r183, 0x20040, r28
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r222, r148, r92
	.loc	2 383 488                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:383:488
	mad_i32 r214, r183, 2, s40
	add_u32 r183, 0x30040, r28
	mad_i32 r206, r28, 2, s40
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	mma_16x16x16f16 r60, r222, r152, r60
	.loc	2 383 488                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:383:488
	mad_i32 r218, r183, 2, s40
.Ltmp452:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:21:41
	ldg_b128 r206, r206, 0x80
	ldg_b128 r210, r210, 0x0
.Ltmp453:
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	mma_16x16x16f16 r92, r224, r150, r92
.Ltmp454:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:21:41
	ldg_b128 r214, r214, 0x0
	ldg_b128 r218, r218, 0x0
.Ltmp455:
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	mma_16x16x16f16 r60, r224, r154, r60
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r11, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r226, r148, r88
	mma_16x16x16f16 r56, r226, r152, r56
	mma_16x16x16f16 r88, r228, r150, r88
	mma_16x16x16f16 r56, r228, r154, r56
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r226, r12, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r230, r148, r84
	mma_16x16x16f16 r52, r230, r152, r52
	mma_16x16x16f16 r84, r232, r150, r84
	mma_16x16x16f16 r52, r232, r154, r52
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r230, r13, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r222, r148, r80
	mma_16x16x16f16 r48, r222, r152, r48
	mma_16x16x16f16 r80, r224, r150, r80
	mma_16x16x16f16 r48, r224, r154, r48
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r14, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r226, r148, r76
	mma_16x16x16f16 r44, r226, r152, r44
	mma_16x16x16f16 r76, r228, r150, r76
	mma_16x16x16f16 r44, r228, r154, r44
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r226, r15, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r230, r148, r72
	mma_16x16x16f16 r40, r230, r152, r40
	mma_16x16x16f16 r72, r232, r150, r72
	mma_16x16x16f16 r40, r232, r154, r40
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r230, r16, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r222, r148, r68
	mma_16x16x16f16 r36, r222, r152, r36
	mma_16x16x16f16 r68, r224, r150, r68
	mma_16x16x16f16 r36, r224, r154, r36
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r17, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r226, r148, r64
	mma_16x16x16f16 r32, r226, r152, r32
	mma_16x16x16f16 r64, r228, r150, r64
	mma_16x16x16f16 r32, r228, r154, r32
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r226, r18, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r230, r164, r92
	mma_16x16x16f16 r60, r230, r168, r60
	mma_16x16x16f16 r92, r232, r166, r92
	mma_16x16x16f16 r60, r232, r170, r60
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r230, r19, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r222, r164, r88
	mma_16x16x16f16 r56, r222, r168, r56
	mma_16x16x16f16 r88, r224, r166, r88
	mma_16x16x16f16 r56, r224, r170, r56
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r20, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r226, r164, r84
	mma_16x16x16f16 r52, r226, r168, r52
	mma_16x16x16f16 r84, r228, r166, r84
	mma_16x16x16f16 r52, r228, r170, r52
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r226, r21, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r230, r164, r80
	mma_16x16x16f16 r48, r230, r168, r48
	mma_16x16x16f16 r80, r232, r166, r80
	mma_16x16x16f16 r48, r232, r170, r48
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r230, r22, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r222, r164, r76
	mma_16x16x16f16 r44, r222, r168, r44
	mma_16x16x16f16 r76, r224, r166, r76
	mma_16x16x16f16 r44, r224, r170, r44
	.loc	2 387 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:387:43
	lds_b128 r222, r23, 0x0
	.loc	2 393 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:393:58
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
.Ltmp456:
	.loc	2 21 41                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:21:41
	arrive gvmcnt(3)
	sts_b128 r24, 0x0, r206
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r210
	arrive gvmcnt(1)
	sts_b128 r26, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r27, 0x0, r218
.Ltmp457:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp458:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s17, r4
.Ltmp459:
	.loc	2 403 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:403:487
	mad_i32 r206, r28, 2, s18
	.loc	2 405 16                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:405:16
	mov_b32 r208, 0x780
	mov_b32 r209, 0
	cmp_lg_u64 s22, s14, r208
.Ltmp460:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s17
	rfl_b32 s17, r5
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp461:
	.loc	2 403 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:403:487
	mad_i32 r206, r29, 2, s18
.Ltmp462:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r6
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp463:
	.loc	2 403 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:403:487
	mad_i32 r206, r30, 2, s18
.Ltmp464:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	rfl_b32 s17, r7
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp465:
	.loc	2 403 487                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:403:487
	mad_i32 r206, r31, 2, s18
.Ltmp466:
	.loc	4 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s17
	snop 0
	ldg_b128 r0, r206, 0x0 bsm
.Ltmp467:
	.loc	4 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s7
.Ltmp468:
	.loc	2 405 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:405:9
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmskz LBB3_8
; %bb.7:                                ; %for.cond630.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 408 71                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:408:71
	add_co_u32 r166, s5, r202
	mov_b32 r164, s6
	addc_co_u32 r167, r164, r203
	add_co_u32 r168, s5, r204
	addc_co_u32 r169, r164, r205
	.loc	2 408 49 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:408:49
	ldg_b128 r148, r178, 0x78
	ldg_b128 r152, r184, 0x78
	ldg_b128 r164, r166, 0x0
	ldg_b128 r168, r168, 0x0
LBB3_8:                                 ; %if.end666
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 413 43 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	add_i32 r183, 0x4000, r8
	add_i32 r202, 0x4000, r9
	snop 0
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r10
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r11
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r12
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r204, r194, r172
	mma_16x16x16f16 r124, r204, r198, r124
	mma_16x16x16f16 r172, r206, r196, r172
	mma_16x16x16f16 r124, r206, r200, r124
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r204, r202, 0x0
	add_i32 r202, 0x4000, r13
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r208, r194, r160
	mma_16x16x16f16 r120, r208, r198, r120
	mma_16x16x16f16 r160, r210, r196, r160
	mma_16x16x16f16 r120, r210, r200, r120
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r14
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r194, r156
	mma_16x16x16f16 r116, r212, r198, r116
	mma_16x16x16f16 r156, r214, r196, r156
	mma_16x16x16f16 r116, r214, r200, r116
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r15
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r194, r144
	mma_16x16x16f16 r112, r204, r198, r112
	mma_16x16x16f16 r144, r206, r196, r144
	mma_16x16x16f16 r112, r206, r200, r112
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r16
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r194, r140
	mma_16x16x16f16 r108, r208, r198, r108
	mma_16x16x16f16 r140, r210, r196, r140
	mma_16x16x16f16 r108, r210, r200, r108
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r19
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r194, r136
	mma_16x16x16f16 r104, r212, r198, r104
	mma_16x16x16f16 r136, r214, r196, r136
	mma_16x16x16f16 r104, r214, r200, r104
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r212, r183, 0x0
	add_i32 r183, 0x4000, r17
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r194, r132
	mma_16x16x16f16 r100, r204, r198, r100
	mma_16x16x16f16 r132, r206, r196, r132
	mma_16x16x16f16 r100, r206, r200, r100
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r18
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r208, r194, r128
	mma_16x16x16f16 r96, r208, r198, r96
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r96, r210, r200, r96
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r208, r183, 0x0
	add_i32 r183, 0x4000, r20
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r190, r172
	mma_16x16x16f16 r124, r212, r186, r124
	mma_16x16x16f16 r172, r214, r192, r172
	mma_16x16x16f16 r124, r214, r188, r124
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r212, r202, 0x0
	add_i32 r202, 0x4000, r21
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r204, r190, r160
	mma_16x16x16f16 r120, r204, r186, r120
	mma_16x16x16f16 r160, r206, r192, r160
	mma_16x16x16f16 r120, r206, r188, r120
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r204, r183, 0x0
	add_i32 r183, 0x4000, r22
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r208, r190, r156
	mma_16x16x16f16 r116, r208, r186, r116
	mma_16x16x16f16 r156, r210, r192, r156
	mma_16x16x16f16 r116, r210, r188, r116
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r208, r202, 0x0
	add_i32 r202, 0x4000, r23
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r190, r144
	mma_16x16x16f16 r112, r212, r186, r112
	mma_16x16x16f16 r144, r214, r192, r144
	mma_16x16x16f16 r112, r214, r188, r112
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r212, r183, 0x0
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r190, r140
	mma_16x16x16f16 r108, r204, r186, r108
	.loc	2 413 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:413:43
	lds_b128 r202, r202, 0x0
	.loc	2 419 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:419:58
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
.Ltmp469:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	arrive gvmcnt(7)
	barrier
	arrive gvmcnt(6)
	barrier
	arrive gvmcnt(5)
	barrier
	arrive gvmcnt(4)
	barrier
.Ltmp470:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp471:
	.loc	2 431 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond774.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp472:
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
.Ltmp473:
LBB3_10:                                ; %if.end857
                                        ;   in Loop: Header=BB3_6 Depth=1
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r8, 0x0
	lds_b128 r202, r9, 0x0
	lds_b128 r206, r10, 0x0
	.loc	2 452 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:452:9
	sandn_b64 cmsk, xmsk, s22
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r28, r194, r92
	mma_16x16x16f16 r60, r28, r198, r60
	mma_16x16x16f16 r92, r30, r196, r92
	mma_16x16x16f16 r60, r30, r200, r60
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r11, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r202, r194, r88
	mma_16x16x16f16 r56, r202, r198, r56
	mma_16x16x16f16 r88, r204, r196, r88
	mma_16x16x16f16 r56, r204, r200, r56
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r202, r12, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r206, r194, r84
	mma_16x16x16f16 r52, r206, r198, r52
	mma_16x16x16f16 r84, r208, r196, r84
	mma_16x16x16f16 r52, r208, r200, r52
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r206, r13, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r28, r194, r80
	mma_16x16x16f16 r48, r28, r198, r48
	mma_16x16x16f16 r80, r30, r196, r80
	mma_16x16x16f16 r48, r30, r200, r48
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r14, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r202, r194, r76
	mma_16x16x16f16 r44, r202, r198, r44
	mma_16x16x16f16 r76, r204, r196, r76
	mma_16x16x16f16 r44, r204, r200, r44
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r202, r15, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r206, r194, r72
	mma_16x16x16f16 r40, r206, r198, r40
	mma_16x16x16f16 r72, r208, r196, r72
	mma_16x16x16f16 r40, r208, r200, r40
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r206, r16, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r28, r194, r68
	mma_16x16x16f16 r36, r28, r198, r36
	mma_16x16x16f16 r68, r30, r196, r68
	mma_16x16x16f16 r36, r30, r200, r36
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r17, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r202, r194, r64
	mma_16x16x16f16 r32, r202, r198, r32
	mma_16x16x16f16 r64, r204, r196, r64
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r194, r18, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	mma_16x16x16f16 r32, r204, r200, r32
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r198, r19, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
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
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r20, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r194, r190, r84
	mma_16x16x16f16 r52, r194, r186, r52
	mma_16x16x16f16 r84, r196, r192, r84
	mma_16x16x16f16 r52, r196, r188, r52
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r194, r21, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r198, r190, r80
	mma_16x16x16f16 r48, r198, r186, r48
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r48, r200, r188, r48
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r198, r22, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r190, r76
	mma_16x16x16f16 r44, r28, r186, r44
	mma_16x16x16f16 r76, r30, r192, r76
	mma_16x16x16f16 r44, r30, r188, r44
	.loc	2 438 43                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:438:43
	lds_b128 r28, r23, 0x0
	.loc	2 444 58                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:444:58
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
	.loc	2 452 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:452:9
	bra_cmsks LBB3_5
; %bb.11:                               ; %for.body957.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
.Ltmp474:
	.loc	4 3834 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3834:10
	barrier
	barrier
	barrier
	barrier
.Ltmp475:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_5
.Ltmp476:
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
	.loc	2 461 92 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:461:92
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
	.loc	2 461 9 is_stmt 0               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:461:9
	and_xmsk s8, s6
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then985
	.loc	2 0 9                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sub_u32 r2, r6, s0
	.loc	2 463 15 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:463:15
	cmp_ge_i32 s14, r6, s0
	cmp_gt_i32 s18, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 463 148 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:463:148
	snop 2
	sand_b64 s18, s14, s18
	and_xmsk s14, s18
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1012
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r2, s13
	addc_co_u32 r11, r2, r11
	.loc	2 464 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:464:19
	snop 1
	ldg_b32 r4, r10, 0x0
LBB3_15:                                ; %Flow523
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_16:                                ; %for.inc1036
	sor_b64 xmsk, xmsk, s8
	.loc	2 461 63 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:461:63
	or_b32 r10, r14, 16
	mov_b32 r11, r7
	.loc	2 461 92 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:461:92
	cmp_lt_i64 s14, r10, s4
	.loc	2 0 0                           ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 461 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:461:9
	snop 2
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then985.1
	.loc	2 463 102 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:463:102
	add_u32 r2, r6, 16
	.loc	2 463 15 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:463:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 463 148                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:463:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1012.1
	.loc	2 0 148                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:148
	shl_b64 r6, 2, r8
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 464 19 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:464:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow522
	.loc	2 0 19 is_stmt 0                ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:19
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
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1056
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(0)
	mul_f32 r1, r172, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r173, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r174, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r6, r175, r4
.Ltmp477:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp478:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp479:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp480:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp481:
LBB3_22:                                ; %if.end1111
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 22 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r6, r0, 2, s10
	.loc	2 489 226 is_stmt 0             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1056.1
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(1)
	mul_f32 r1, r160, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r161, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r162, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r10, r163, r4
.Ltmp482:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp483:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp484:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp485:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp486:
LBB3_24:                                ; %if.end1111.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 16
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r18, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r18, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1056.2
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r157, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r158, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r10, r159, r4
.Ltmp487:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp488:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp489:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp490:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp491:
LBB3_26:                                ; %if.end1111.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 32
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r10, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1056.3
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(3)
	mul_f32 r1, r144, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r145, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r146, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r12, r147, r4
.Ltmp492:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp493:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp494:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp495:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp496:
LBB3_28:                                ; %if.end1111.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 48
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r24, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r24, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1056.4
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(4)
	mul_f32 r1, r140, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r141, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r142, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r12, r143, r4
.Ltmp497:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp498:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp499:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp500:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp501:
LBB3_30:                                ; %if.end1111.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 64
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r12, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r12, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1056.5
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(5)
	mul_f32 r1, r136, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r137, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r138, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r15, r139, r4
.Ltmp502:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp503:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp504:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp505:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp506:
LBB3_32:                                ; %if.end1111.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, 0x50, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 0
	stg_b64 r28, 0x0, r8 devc
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1056.6
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(6)
	mul_f32 r1, r132, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r133, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r134, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r8, r135, r4
.Ltmp507:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp508:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp509:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp510:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp511:
LBB3_34:                                ; %if.end1111.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, 0x60, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r8, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r8, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1056.7
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(7)
	mul_f32 r1, r128, r4
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r129, r4
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r130, r4
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r15, r131, r4
.Ltmp512:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp513:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp514:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp515:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r15
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp516:
LBB3_36:                                ; %if.end1111.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, 0x70, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r26, r1, 2, s10
	.loc	2 473 66 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:66
	or_b32 r1, r14, 16
	.loc	2 473 95 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:95
	cmp_ge_i32 s0, r1, s4
	cmp_lt_i32 s4, r1, s4
	.loc	2 489 226 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	stg_b64 r26, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 473 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	snop 1
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1056.8
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(8)
	mul_f32 r1, r124, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r125, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r126, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r14, r127, r2
.Ltmp517:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp518:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp519:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp520:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r14
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp521:
LBB3_38:                                ; %if.end1111.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 162 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:162
	add_u32 r0, 0x1c000, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r14, r0, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r14, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1056.9
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(9)
	mul_f32 r1, r120, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r121, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r122, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r20, r123, r2
.Ltmp522:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp523:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp524:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp525:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp526:
LBB3_40:                                ; %if.end1111.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 16
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1056.10
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(10)
	mul_f32 r1, r116, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r117, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r118, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r16, r119, r2
.Ltmp527:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp528:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp529:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp530:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp531:
LBB3_42:                                ; %if.end1111.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 32
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r16, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r16, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1056.11
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(11)
	mul_f32 r1, r112, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r113, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r114, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r22, r115, r2
.Ltmp532:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp533:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp534:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp535:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp536:
LBB3_44:                                ; %if.end1111.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 48
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r112, r1, 2, s10
	shl_b64 r22, 0, 0
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 0
	stg_b64 r112, 0x0, r20 devc
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1056.12
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(12)
	mul_f32 r1, r108, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r109, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r110, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r20, r111, r2
.Ltmp537:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp538:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp539:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp540:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp541:
LBB3_46:                                ; %if.end1111.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, r0, 64
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r20, r1, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r20, 0x0, r22 devc
	shl_b64 r22, 0, 0
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1056.13
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(13)
	mul_f32 r1, r104, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r105, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r106, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r104, r107, r2
.Ltmp542:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp543:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp544:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp545:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r104
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp546:
LBB3_48:                                ; %if.end1111.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, 0x50, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r104, r1, 2, s10
	shl_b64 r106, 0, 0
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 0
	stg_b64 r104, 0x0, r22 devc
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1056.14
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(14)
	mul_f32 r1, r100, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r101, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r102, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r22, r103, r2
.Ltmp547:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp548:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r106_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp549:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp550:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r107_hi, r22
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp551:
LBB3_50:                                ; %if.end1111.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r1, 0x60, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r100, 0, 0
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 0
	stg_b64 r22, 0x0, r106 devc
	.loc	2 473 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:473:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1056.15
	.loc	2 478 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:478:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 479 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:479:22
	mul_f32 r3, r97, r2
	.loc	2 480 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:480:22
	mul_f32 r5, r98, r2
	.loc	2 481 22                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:481:22
	mul_f32 r96, r99, r2
.Ltmp552:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp553:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r100_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp554:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp555:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r101_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp556:
LBB3_52:                                ; %if.end1111.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s6
	.loc	2 489 183 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:183
	or_b32 r0, 0x70, r0
	.loc	2 489 22 is_stmt 0              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:22
	mad_i32 r0, r0, 2, s10
	.loc	2 489 226                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:489:226
	snop 1
	stg_b64 r0, 0x0, r100 devc
	.loc	2 493 9 is_stmt 1               ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1219.1.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow521
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s4, s4
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1158
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	arrive gvmcnt(16)
	mul_f32 r3, r92, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r93, r4
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r92, r94, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r93, r95, r4
.Ltmp557:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp558:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r94_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp559:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_lo, r92
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp560:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r95_hi, r93
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp561:
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r6, 0x100, r94 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r88, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r89, r4
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r6, r90, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r91, r4
.Ltmp562:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp563:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp564:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp565:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp566:
LBB3_56:                                ; %if.end1219.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r18, 0x100, r96 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1219.3.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r10, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_10
LBB3_58:                                ; %Flow520
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1158.2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	arrive gvmcnt(17)
	mul_f32 r6, r86, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r87, r4
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r84, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r85, r4
.Ltmp567:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp568:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp569:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp570:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp571:
	.loc	2 500 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r10, 0x100, r18 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r80, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r81, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r10, r83, r4
.Ltmp572:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp573:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp574:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp575:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp576:
LBB3_60:                                ; %if.end1219.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s4, s2
	sxor_b64 s4, xmsk, s4
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1219.5.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r12, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_62:                                ; %Flow519
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s4, s4
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s4
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1158.4
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	arrive gvmcnt(18)
	mul_f32 r6, r78, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r79, r4
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r76, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r77, r4
.Ltmp577:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp578:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp579:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp580:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp581:
	.loc	2 500 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r12, 0x100, r10 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r72, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r73, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r10, r75, r4
.Ltmp582:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp583:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp584:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp585:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp586:
LBB3_64:                                ; %if.end1219.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s4
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s4, s2
	sxor_b64 s2, xmsk, s4
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1219.7.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r8, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_8
LBB3_66:                                ; %Flow518
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s2, s2
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1158.6
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	arrive gvmcnt(19)
	mul_f32 r6, r70, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r71, r4
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r68, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r69, r4
.Ltmp587:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp588:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp589:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp590:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp591:
	.loc	2 500 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	snop 0
	mul_f32 r7, r66, r4
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r8, 0x100, r10 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r64, r4
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r5, r65, r4
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r4, r67, r4
.Ltmp592:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp593:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp594:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp595:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp596:
LBB3_68:                                ; %if.end1219.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1219.9.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r14, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_70:                                ; %Flow517
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s2, s2
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1158.8
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r4, r61, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r5, r62, r2
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r60, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r6, r63, r2
.Ltmp597:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp598:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp599:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp600:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp601:
	.loc	2 499 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r14, 0x100, r8 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r56, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r6, r58, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r59, r2
.Ltmp602:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp603:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp604:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp605:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp606:
LBB3_72:                                ; %if.end1219.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1219.11.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow516
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1158.10
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r4, r53, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r5, r54, r2
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r52, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r6, r55, r2
.Ltmp607:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp608:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp609:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp610:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp611:
	.loc	2 499 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r16, 0x100, r8 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r48, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r6, r50, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r51, r2
.Ltmp612:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp613:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp614:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp615:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp616:
LBB3_76:                                ; %if.end1219.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r112, 0x100, r4 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	and_xmsk s2, s0
	sxor_b64 s2, xmsk, s2
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1219.13.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB3_78:                                ; %Flow515
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s2, s2
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s2
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1158.12
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r4, r45, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r5, r46, r2
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r44, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r6, r47, r2
.Ltmp617:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp618:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp619:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp620:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp621:
	.loc	2 499 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r20, 0x100, r8 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r40, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r6, r42, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r7, r43, r2
.Ltmp622:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp623:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp624:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp625:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp626:
LBB3_80:                                ; %if.end1219.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s2
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r104, 0x100, r4 devc
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 511 1                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:511:1
	snop 0
	endk
LBB3_83:                                ; %if.end1219.15.critedge
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r22, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_22
	.loc	2 493 9                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:493:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1158.14
	.loc	2 499 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	mul_f32 r4, r37, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r5, r38, r2
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r36, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r6, r39, r2
.Ltmp627:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp628:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp629:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp630:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp631:
	.loc	2 499 24 is_stmt 1              ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:499:24
	snop 0
	mul_f32 r5, r33, r2
	.loc	2 509 234                       ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	stg_b64 r22, 0x100, r8 devc
	.loc	2 498 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:498:24
	mul_f32 r3, r32, r2
	.loc	2 500 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:500:24
	mul_f32 r6, r34, r2
	.loc	2 501 24                        ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:501:24
	mul_f32 r2, r35, r2
.Ltmp632:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp633:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp634:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp635:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp636:
	.loc	2 509 234 is_stmt 1             ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:509:234
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 511 1                         ; /tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp:511:1
	snop 0
	endk
.Ltmp637:
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
	.byte	8                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x49f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x5a:0x18c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x6b:0x30 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	186                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x77:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	124                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x8f:0xb DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x9b:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp62                         ; DW_AT_low_pc
	.long	.Ltmp63-.Ltmp62                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	202                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0xaf:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp62                         ; DW_AT_low_pc
	.long	.Ltmp63-.Ltmp62                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xc4:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp64                         ; DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	234                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0xd8:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp64                         ; DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0xed:0x58 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp65                         ; DW_AT_low_pc
	.long	.Ltmp128-.Ltmp65                ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	238                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x101:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x10d:0x13 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp68                         ; DW_AT_low_pc
	.long	.Ltmp69-.Ltmp68                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	0                               ; DW_AT_call_line
	.byte	5                               ; Abbrev [5] 0x120:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	124                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x12c:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x138:0xc DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	129                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x145:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x152:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	271                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x15f:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	270                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x16c:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	269                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x179:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	299                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x186:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x193:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1a0:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x1af:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	300                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x1bc:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1c9:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x1d6:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1e6:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1ec:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1f2:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1f8:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1fe:0x6 DW_TAG_subprogram
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x204:0x2a5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string17                 ; DW_AT_name
	.byte	12                              ; Abbrev [12] 0x215:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp435                        ; DW_AT_low_pc
	.long	.Ltmp436-.Ltmp435               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	353                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x22a:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp435                        ; DW_AT_low_pc
	.long	.Ltmp436-.Ltmp435               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x23f:0x1a DW_TAG_inlined_subroutine
	.long	492                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	356                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x24c:0xc DW_TAG_inlined_subroutine
	.long	486                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x259:0x2a DW_TAG_inlined_subroutine
	.long	504                             ; DW_AT_abstract_origin
	.quad	.Ltmp449                        ; DW_AT_low_pc
	.long	.Ltmp450-.Ltmp449               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	379                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x26e:0x14 DW_TAG_inlined_subroutine
	.long	498                             ; DW_AT_abstract_origin
	.quad	.Ltmp449                        ; DW_AT_low_pc
	.long	.Ltmp450-.Ltmp449               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x283:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp450                        ; DW_AT_low_pc
	.long	.Ltmp451-.Ltmp450               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	381                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x298:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp450                        ; DW_AT_low_pc
	.long	.Ltmp451-.Ltmp450               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2ad:0xd DW_TAG_inlined_subroutine
	.long	510                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	383                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	12                              ; Abbrev [12] 0x2ba:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	401                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2cf:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2e4:0x1a DW_TAG_inlined_subroutine
	.long	492                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	403                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2f1:0xc DW_TAG_inlined_subroutine
	.long	486                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x2fe:0x2a DW_TAG_inlined_subroutine
	.long	504                             ; DW_AT_abstract_origin
	.quad	.Ltmp469                        ; DW_AT_low_pc
	.long	.Ltmp470-.Ltmp469               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	428                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x313:0x14 DW_TAG_inlined_subroutine
	.long	498                             ; DW_AT_abstract_origin
	.quad	.Ltmp469                        ; DW_AT_low_pc
	.long	.Ltmp470-.Ltmp469               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x328:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp470                        ; DW_AT_low_pc
	.long	.Ltmp471-.Ltmp470               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	430                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x33d:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp470                        ; DW_AT_low_pc
	.long	.Ltmp471-.Ltmp470               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x352:0x2a DW_TAG_inlined_subroutine
	.long	492                             ; DW_AT_abstract_origin
	.quad	.Ltmp472                        ; DW_AT_low_pc
	.long	.Ltmp473-.Ltmp472               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	433                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x367:0x14 DW_TAG_inlined_subroutine
	.long	486                             ; DW_AT_abstract_origin
	.quad	.Ltmp472                        ; DW_AT_low_pc
	.long	.Ltmp473-.Ltmp472               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x37c:0x2a DW_TAG_inlined_subroutine
	.long	504                             ; DW_AT_abstract_origin
	.quad	.Ltmp474                        ; DW_AT_low_pc
	.long	.Ltmp475-.Ltmp474               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	454                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x391:0x14 DW_TAG_inlined_subroutine
	.long	498                             ; DW_AT_abstract_origin
	.quad	.Ltmp474                        ; DW_AT_low_pc
	.long	.Ltmp475-.Ltmp474               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x3a6:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp475                        ; DW_AT_low_pc
	.long	.Ltmp476-.Ltmp475               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	456                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3bb:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp475                        ; DW_AT_low_pc
	.long	.Ltmp476-.Ltmp475               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x3d0:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	482                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x3dd:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3ea:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x3f7:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x406:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	483                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x413:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x420:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x42d:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x43c:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	502                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x449:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x456:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x463:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x472:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	503                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x47f:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x48c:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x499:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	0
	.quad	0
.Ldebug_ranges9:
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
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
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
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges11:
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
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges12:
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
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
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
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
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
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
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
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
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
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
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
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
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
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges33:
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
	.quad	0
	.quad	0
.Ldebug_ranges34:
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
	.quad	0
	.quad	0
.Ldebug_ranges35:
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
	.quad	0
	.quad	0
.Ldebug_ranges36:
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
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges40:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/tile-moe-scratch-20260814/v054-work/codegen_repair_case3/v054_repair_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=133
.Linfo_string3:
	.asciz	"moe_stage_gate_up_one_wave_2rows_7168" ; string offset=154
.Linfo_string4:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=192
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=231
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=241
.Linfo_string7:
	.asciz	"exp2f"                         ; string offset=255
.Linfo_string8:
	.asciz	"__float2half_rn"               ; string offset=261
.Linfo_string9:
	.asciz	"__floats2half2_rn"             ; string offset=277
.Linfo_string10:
	.asciz	"__float22half2_rn"             ; string offset=295
.Linfo_string11:
	.asciz	"memcpy_async<16, false>"       ; string offset=313
.Linfo_string12:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=337
.Linfo_string13:
	.asciz	"barrier_arrive_and_wait<unsigned int __attribute__((ext_vector_type(4))), (mxc_thread_scope)1>" ; string offset=364
.Linfo_string14:
	.asciz	"moe_select_wait_async_16"      ; string offset=459
.Linfo_string15:
	.asciz	"moe_memcpy_sync_16"            ; string offset=484
.Linfo_string16:
	.asciz	"kernel_kernel"                 ; string offset=503
.Linfo_string17:
	.asciz	"kernel_kernel_1"               ; string offset=517
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
    .mtreg_count:    216
    .name:           kernel_kernel
    .private_memory_size: 0
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
