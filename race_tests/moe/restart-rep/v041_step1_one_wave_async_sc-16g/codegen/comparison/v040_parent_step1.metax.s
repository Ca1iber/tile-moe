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
	.file	2 "/tmp/v040_codegen_fixed_case1" "v040_fixed_case1_generated_device.cpp"
	.loc	2 56 0                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:56:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s8, s5
.Ltmp4:
	.loc	2 62 19 prologue_end            ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:62:19
	smov_b32 s9, 0
	sshl_b64 s2, 2, s8
	and_b32 r0, 0x3ff, r0
	shl_b32 r1, 3, r0
	ldu_b128 s12, s0, 0x20
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s2, s2, 0x0
	xor_b32 r35, r1, r0
	ldu_b64 s6, s0, 0x30
	and_b32 r2, r35, 32
	add_u32 r2, r2, r0
	and_b32 r22, r2, 32
	and_b32 r2, r35, 16
	arrive slcnt(0)
	sashr_i32 s3, 31, s2
	.loc	2 63 20                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:63:20
	sshl_b64 s18, 2, s2
	sadd_co_u32 s0, s22, s18
	saddc_co_u32 s1, s23, s19
	.loc	2 64 22                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:64:22
	sadd_co_u32 s18, s20, s18
	saddc_co_u32 s19, s21, s19
	add_u32 r2, r2, r0
	.loc	2 63 20                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:63:20
	ldu_b32 s0, s0, 0x0
	.loc	2 64 22                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:64:22
	ldu_b32 s1, s18, 0x0
	.loc	2 75 3                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:75:3
	sadd_co_u32 s18, 0xffff0000, s14
	and_b32 r23, r2, 16
	and_b32 r2, r0, 8
	shl_b32 r4, 8, r0
	saddc_co_u32 s19, s15, -1
	xadd_u32 r2, r2, r1, r0
	cmp_lt_u32 s10, 0x7f, r0
	sshl_b32 s3, 18, s4
	and_b32 r37, 0x3f800, r4
	and_b32 r38, r35, 56
	and_b32 r24, r2, 8
	sshl_b32 s2, 24, s2
	or3_b32 r2, r37, s3, r38
	add_u32 r3, s2, r2
	sadd_co_i32 s2, s2, s3
	and_b32 r21, 0x1fc0, r1
	and_b32 r2, 0x3c0, r1
	and_b32 r1, 0x7800, r4
	sashr_i32 s3, 31, s2
	.loc	2 0 0 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
	or_b32 r19, r22, r24
	.loc	2 76 9 is_stmt 1                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_14
; %bb.1:                                ; %if.else
	.loc	2 79 387                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:387
	or3_b32 r4, r19, r21, r23
	.loc	2 79 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x3800, r4
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r3, 2, s18
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "maca_async.h"
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp6:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_15
LBB2_2:                                 ; %for.inc171
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_16
LBB2_3:                                 ; %if.else.1
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x4000, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x8000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp7:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp8:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_17
LBB2_4:                                 ; %for.inc171.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_18
LBB2_5:                                 ; %if.else.2
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x4800, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x10000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp9:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp10:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_19
LBB2_6:                                 ; %for.inc171.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_20
LBB2_7:                                 ; %if.else.3
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x5000, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x18000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp11:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp12:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_21
LBB2_8:                                 ; %for.inc171.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_22
LBB2_9:                                 ; %if.else.4
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x5800, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x20000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp13:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp14:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_23
LBB2_10:                                ; %for.inc171.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_24
LBB2_11:                                ; %if.else.5
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x6000, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x28000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp15:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp16:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmsks LBB2_25
LBB2_12:                                ; %for.inc171.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s20
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_26
LBB2_13:                                ; %if.else.6
	.loc	2 79 101 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r4, 0
	add_u32 r4, 0x6800, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r5, 0x30000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r5, 2, s18
.Ltmp17:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp18:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_28
	bra LBB2_27
LBB2_14:                                ; %Flow430
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_2
LBB2_15:                                ; %if.then
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, s2, r1, r38
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp19:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp20:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_3
LBB2_16:                                ; %Flow429
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_4
LBB2_17:                                ; %if.then.1
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x8000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x800, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp21:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp22:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_5
LBB2_18:                                ; %Flow428
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_6
LBB2_19:                                ; %if.then.2
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x10000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x1000, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp23:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp24:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_7
LBB2_20:                                ; %Flow427
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_8
LBB2_21:                                ; %if.then.3
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x18000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x1800, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp25:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp26:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_9
LBB2_22:                                ; %Flow426
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_10
LBB2_23:                                ; %if.then.4
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x20000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x2000, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp27:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp28:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_11
LBB2_24:                                ; %Flow425
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_12
LBB2_25:                                ; %if.then.5
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x28000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x2800, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp29:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s20
.Ltmp30:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmsks LBB2_13
LBB2_26:                                ; %Flow424
	or_xmsk s20, s20
	sxor_b64 xmsk, xmsk, s20
	snop 0
	bra_xmskz LBB2_28
LBB2_27:                                ; %if.then.6
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r4, r19, r2, r23
	.loc	2 77 41 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r4, 1, r4, 0
	.loc	2 77 611                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	or_b32 r5, s2, r1
	smov_b32 s5, 0x30000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r5, r5, r38, s5
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	add_u32 r4, 0x3000, r4
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r6, r5, 2, s16
.Ltmp31:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r6, 0x0 bsm
	smov_b32 md, s5
.Ltmp32:
LBB2_28:                                ; %for.inc171.6
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s20
                                        ; implicit-def: $mtreg_32bit_20
                                        ; implicit-def: $mtreg_64bits_40
                                        ; implicit-def: $mtreg_32bit_33
                                        ; implicit-def: $mtreg_32bit_34
	.loc	2 76 9 is_stmt 1                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	and_xmsk s20, s10
	sxor_b64 s20, xmsk, s20
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.else.7
	.loc	2 79 101                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:101
	add_u32 r4, r21, r22
	.loc	2 79 137 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:137
	add_u32 r4, r4, r23
	.loc	2 79 259                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:259
	add_u32 r4, r4, r24
	.loc	2 79 387                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:387
	add_u32 r33, 0x1c00, r4
	.loc	2 79 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:41
	shl_add_u32 r4, 1, r33, 0
	add_u32 r4, 0x3800, r4
	.loc	2 79 657                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:657
	add_u32 r3, 0x38000, r3
	.loc	2 79 522                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:79:522
	mad_i32 r6, r3, 2, s18
.Ltmp33:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r4
	smov_b32 s5, md
	or3_b32 r20, r19, r2, r23
	or_b32 r40, s2, r1
	mov_b32 r41, s3
	smov_b32 md, s9
	or_b32 r34, 0x1c00, r20
	ldg_b128 r0, r6, 0x0 bsm
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_32bit_1
	smov_b32 md, s5
.Ltmp34:
	.loc	2 76 9                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:76:9
	or_xmsk s18, s20
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_31
	bra LBB2_32
LBB2_30:                                ; %Flow423
	or_xmsk s18, s20
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_32
LBB2_31:                                ; %if.then.7
	.loc	2 77 386                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:386
	or3_b32 r20, r19, r2, r23
	or_b32 r34, 0x1c00, r20
	.loc	2 77 611 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:611
	mov_b32 r41, s3
	or_b32 r40, s2, r1
	smov_b32 s3, 0x38000
	.loc	2 77 649                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:649
	or3_b32 r1, r40, r38, s3
	.loc	2 77 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:41
	shl_add_u32 r2, 1, r34, 0
	.loc	2 77 513                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:77:513
	mad_i32 r4, r1, 2, s16
.Ltmp35:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r2
	smov_b32 s3, md
	smov_b32 s5, 0x1c00
	or3_b32 r1, r21, r22, r23
	or3_b32 r33, r1, r24, s5
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r4, 0x0 bsm
	smov_b32 md, s3
.Ltmp36:
LBB2_32:                                ; %for.inc171.7
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s18
	sadd_co_u32 s14, 0xffff0080, s14
	.loc	2 82 3 is_stmt 1                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:82:3
	shl_b32 r35, 1, r35
	add_u32 r37, s2, r37
	shl_b32 r1, 10, r0
	or3_b32 r19, r19, r21, r23
	add_u32 r21, r21, r22
	add_u32 r21, r21, r23
	and_b32 r39, 0xf0000, r1
	saddc_co_u32 s15, s15, -1
	sadd_co_i32 s3, 0x3800, 0
	add_u32 r170, r37, r38
	mov_b32 r37, s8
	and_b32 r35, 0x70, r35
	shl_b64 r40, 1, r40
	mov_b32 r36, s3
	add_co_u32 r35, r35, r40
	shl_add_u32 r37, 18, r37, r39
	shl_b32 r42, 11, r0
	add_u32 r21, r21, r24
	smov_b32 s2, 0x7800
	shl_add_u32 r31, 1, r21, r36
	and_or_b32 r46, r42, s2, r37
	shl_add_u32 r19, 1, r19, r36
	shl_add_u32 r33, 1, r33, r36
	addc_co_u32 r36, 0, r41
	mov_b32 r45, 0
	add_co_u32 r35, s16, r35
	mov_b32 r40, s17
	or_b32 r44, 0x8000, r46
	shr_b32 r1, 1, r0
	shr_b32 r3, 5, r0
	addc_co_u32 r36, r40, r36
	and_b32 r39, r0, 48
	shl_b64 r40, 1, r44
	or_b32 r37, r39, r40
	and_b32 r43, r1, 24
	add_shl_u32 r3, r3, r1, 4
	shr_b32 r4, 4, r0
	mov_b32 r47, 0
	shl_b32 r2, 6, r0
	shl_b32 r5, 3, r0
	and_b32 r3, r3, 16
	add_shl_u32 r4, r4, r0, 3
	or_b32 r172, r43, r44
	add_co_u32 r37, s12, r37
	mov_b32 r40, s13
	or_b32 r174, r43, r46
	shl_b64 r42, 1, r46
	and_b32 r10, 0x3c0, r2
	and_b32 r11, r5, 32
	and_or_b32 r18, r4, 8, r3
	addc_co_u32 r38, r40, r41
	or_b32 r39, r39, r42
	add_co_u32 r39, s12, r39
	or_b32 r12, r18, r10
	or_b32 r13, 0x400, r10
	or_b32 r14, r18, r11
	or_b32 r15, 0x800, r10
	or_b32 r16, 0xc00, r10
	or_b32 r17, 0x1000, r10
	or_b32 r25, 0x1400, r10
	or_b32 r26, 0x1800, r10
	or_b32 r27, 0x1c00, r10
	xor_b32 r28, r11, 32
	.loc	2 0 0 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
	shl_b64 r106, 0, 0
	or_b32 r3, r12, r11
	or_b32 r11, r12, r28
	or_b32 r4, r14, r13
	or_b32 r5, r14, r15
	or_b32 r6, r14, r16
	or_b32 r7, r14, r17
	or_b32 r8, r14, r25
	or_b32 r9, r14, r26
	or_b32 r10, r14, r27
	or3_b32 r14, r18, r16, r28
	or3_b32 r16, r18, r25, r28
	or3_b32 r12, r18, r13, r28
	or3_b32 r13, r18, r15, r28
	or3_b32 r15, r18, r17, r28
	or3_b32 r17, r18, r26, r28
	or3_b32 r18, r18, r27, r28
	shl_add_u32 r20, 1, r20, 0
	.loc	2 82 3                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:82:3
	addc_co_u32 r40, r40, r43
	smov_b64 s2, 0
	.loc	2 0 0                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
	shl_b64 r108, 0, 0
	shl_b64 r114, 0, r106
	shl_b64 r122, 0, r106
	shl_b64 r130, 0, r106
	shl_b64 r138, 0, r106
	shl_b64 r146, 0, r106
	shl_b64 r154, 0, r106
	shl_b64 r162, 0, r106
	shl_b64 r42, 0, r106
	shl_b64 r50, 0, r106
	shl_b64 r58, 0, r106
	shl_b64 r66, 0, r106
	shl_b64 r74, 0, r106
	shl_b64 r82, 0, r106
	shl_b64 r90, 0, r106
	shl_b64 r98, 0, r106
	shl_b64 r110, 0, r106
	shl_b64 r118, 0, r106
	shl_b64 r126, 0, r106
	shl_b64 r134, 0, r106
	shl_b64 r142, 0, r106
	shl_b64 r150, 0, r106
	shl_b64 r158, 0, r106
	shl_b64 r166, 0, r106
	shl_b64 r102, 0, r106
	shl_b64 r94, 0, r106
	shl_b64 r86, 0, r106
	shl_b64 r78, 0, r106
	shl_b64 r70, 0, r106
	shl_b64 r62, 0, r106
	shl_b64 r54, 0, r106
	shl_b64 r46, 0, r106
	shr_b32 r2, 2, r0
	.loc	2 82 3                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:82:3
	mov_b32 r171, 0
	shl_add_u32 r3, 1, r3, 0
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
	add_u32 r21, 0x800, r31
	add_u32 r22, 0x800, r20
	add_u32 r23, 0x1000, r31
	add_u32 r24, 0x1000, r20
	add_u32 r25, 0x1800, r31
	add_u32 r26, 0x1800, r20
	add_u32 r27, 0x2000, r31
	add_u32 r28, 0x2000, r20
	add_u32 r29, 0x2800, r31
	add_u32 r30, 0x2800, r20
	add_u32 r31, 0x3000, r31
	add_u32 r32, 0x3000, r20
	shl_add_u32 r34, 1, r34, 0
	mov_b32 r173, 0
	smov_b64 s16, s2
	shl_b64 r116, 0, r108
	shl_b64 r124, 0, r108
	shl_b64 r132, 0, r108
	shl_b64 r140, 0, r108
	shl_b64 r148, 0, r108
	shl_b64 r156, 0, r108
	shl_b64 r164, 0, r108
	shl_b64 r44, 0, r108
	shl_b64 r52, 0, r108
	shl_b64 r60, 0, r108
	shl_b64 r68, 0, r108
	shl_b64 r76, 0, r108
	shl_b64 r84, 0, r108
	shl_b64 r92, 0, r108
	shl_b64 r100, 0, r108
	shl_b64 r112, 0, r108
	shl_b64 r120, 0, r108
	shl_b64 r128, 0, r108
	shl_b64 r136, 0, r108
	shl_b64 r144, 0, r108
	shl_b64 r152, 0, r108
	shl_b64 r160, 0, r108
	shl_b64 r168, 0, r108
	shl_b64 r104, 0, r108
	shl_b64 r96, 0, r108
	shl_b64 r88, 0, r108
	shl_b64 r80, 0, r108
	shl_b64 r72, 0, r108
	shl_b64 r64, 0, r108
	shl_b64 r56, 0, r108
	shl_b64 r48, 0, r108
	bra LBB2_35
	.p2align	5
LBB2_33:                                ; %Flow414
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 3                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s18
LBB2_34:                                ; %for.inc559
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 82 45                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:82:45
	sadd_co_u32 s16, 0x80, s16
	saddc_co_u32 s17, s17, 0
	sadd_co_u32 s2, s2, 64
	saddc_co_u32 s3, s3, 0
	scmp_eq_u64 0x1000, s16
	.loc	2 82 3                          ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:82:3
	snop 0
	bra_smsks LBB2_68
LBB2_35:                                ; %for.cond179.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 85 61 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:61
	add_co_u32 r176, r174, s2
	mov_b32 r41, s3
	addc_co_u32 r177, r173, r41
	.loc	2 85 43 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:43
	add_co_u32 r178, r39, s16
	mov_b32 r175, s17
	addc_co_u32 r179, r40, r175
	.loc	2 85 61                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:61
	add_co_u32 r180, r172, s2
	addc_co_u32 r181, r171, r41
	.loc	2 85 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:43
	add_co_u32 r182, r37, s16
	.loc	2 85 243                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:243
	shl_b64 r176, 1, r176
	.loc	2 85 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:43
	addc_co_u32 r183, r38, r175
	.loc	2 85 61                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:61
	or_b32 r41, r176, 64
	add_co_u32 r176, s12, r41
	mov_b32 r41, s13
	.loc	2 85 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:43
	ldg_b128 r184, r178, 0x0
	.loc	2 85 243                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:243
	shl_b64 r178, 1, r180
	.loc	2 85 61                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:61
	addc_co_u32 r177, r41, r177
	or_b32 r175, r178, 64
	add_co_u32 r180, s12, r175
	addc_co_u32 r181, r41, r179
	.loc	2 85 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:85:43
	ldg_b128 r188, r182, 0x0
	ldg_b128 r176, r176, 0x0
	ldg_b128 r180, r180, 0x0
.Ltmp37:
	.file	4 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	4 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive 0
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp38:
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r192, r3, 0x0
	lds_b128 r196, r4, 0x0
	lds_b128 r200, r5, 0x0
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	add_i32 r41, 0x4000, r3
	.loc	2 118 23                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:118:23
	scmp_ne_u64 0xf80, s16
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r192, r184, r162
	mma_16x16x16f16 r102, r192, r188, r102
	mma_16x16x16f16 r162, r194, r186, r162
	mma_16x16x16f16 r102, r194, r190, r102
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r192, r6, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r196, r184, r154
	mma_16x16x16f16 r94, r196, r188, r94
	mma_16x16x16f16 r154, r198, r186, r154
	mma_16x16x16f16 r94, r198, r190, r94
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r196, r7, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r200, r184, r146
	mma_16x16x16f16 r86, r200, r188, r86
	mma_16x16x16f16 r146, r202, r186, r146
	mma_16x16x16f16 r86, r202, r190, r86
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r200, r8, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r184, r138
	mma_16x16x16f16 r78, r192, r188, r78
	mma_16x16x16f16 r138, r194, r186, r138
	mma_16x16x16f16 r78, r194, r190, r78
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r192, r9, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r184, r130
	mma_16x16x16f16 r70, r196, r188, r70
	mma_16x16x16f16 r130, r198, r186, r130
	mma_16x16x16f16 r70, r198, r190, r70
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r196, r10, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r200, r184, r122
	mma_16x16x16f16 r62, r200, r188, r62
	mma_16x16x16f16 r122, r202, r186, r122
	mma_16x16x16f16 r62, r202, r190, r62
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r200, r41, 0x0
	add_i32 r41, 0x4000, r4
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r192, r184, r114
	mma_16x16x16f16 r54, r192, r188, r54
	mma_16x16x16f16 r114, r194, r186, r114
	mma_16x16x16f16 r54, r194, r190, r54
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r192, r41, 0x0
	add_i32 r41, 0x4000, r5
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r196, r184, r106
	mma_16x16x16f16 r46, r196, r188, r46
	mma_16x16x16f16 r106, r198, r186, r106
	mma_16x16x16f16 r46, r198, r190, r46
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r196, r41, 0x0
	add_i32 r41, 0x4000, r6
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r200, r184, r166
	mma_16x16x16f16 r98, r200, r188, r98
	mma_16x16x16f16 r166, r202, r186, r166
	mma_16x16x16f16 r98, r202, r190, r98
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r200, r41, 0x0
	add_i32 r41, 0x4000, r7
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r192, r184, r158
	mma_16x16x16f16 r90, r192, r188, r90
	mma_16x16x16f16 r158, r194, r186, r158
	mma_16x16x16f16 r90, r194, r190, r90
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r192, r41, 0x0
	add_i32 r41, 0x4000, r8
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r196, r184, r150
	mma_16x16x16f16 r82, r196, r188, r82
	mma_16x16x16f16 r150, r198, r186, r150
	mma_16x16x16f16 r82, r198, r190, r82
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r196, r41, 0x0
	add_i32 r41, 0x4000, r9
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r200, r184, r142
	mma_16x16x16f16 r74, r200, r188, r74
	mma_16x16x16f16 r142, r202, r186, r142
	mma_16x16x16f16 r74, r202, r190, r74
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r200, r41, 0x0
	add_i32 r41, 0x4000, r10
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r184, r134
	mma_16x16x16f16 r66, r192, r188, r66
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r66, r194, r190, r66
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r192, r41, 0x0
	add_i32 r41, 0x4000, r11
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r196, r184, r126
	mma_16x16x16f16 r58, r196, r188, r58
	mma_16x16x16f16 r126, r198, r186, r126
	mma_16x16x16f16 r58, r198, r190, r58
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r196, r11, 0x0
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r200, r184, r118
	mma_16x16x16f16 r50, r200, r188, r50
	mma_16x16x16f16 r118, r202, r186, r118
	mma_16x16x16f16 r50, r202, r190, r50
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r200, r12, 0x0
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r192, r184, r110
	mma_16x16x16f16 r42, r192, r188, r42
	mma_16x16x16f16 r110, r194, r186, r110
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r184, r13, 0x0
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	mma_16x16x16f16 r42, r194, r190, r42
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r188, r14, 0x0
	lds_b128 r192, r15, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(4)
	mma_16x16x16f16 r162, r196, r176, r162
	mma_16x16x16f16 r102, r196, r180, r102
	mma_16x16x16f16 r162, r198, r178, r162
	mma_16x16x16f16 r102, r198, r182, r102
	arrive bsmcnt(3)
	mma_16x16x16f16 r154, r200, r176, r154
	mma_16x16x16f16 r94, r200, r180, r94
	mma_16x16x16f16 r154, r202, r178, r154
	mma_16x16x16f16 r94, r202, r182, r94
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r184, r176, r146
	mma_16x16x16f16 r86, r184, r180, r86
	mma_16x16x16f16 r146, r186, r178, r146
	mma_16x16x16f16 r86, r186, r182, r86
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r184, r16, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r176, r138
	mma_16x16x16f16 r78, r188, r180, r78
	mma_16x16x16f16 r138, r190, r178, r138
	mma_16x16x16f16 r78, r190, r182, r78
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r188, r17, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r192, r176, r130
	mma_16x16x16f16 r70, r192, r180, r70
	mma_16x16x16f16 r130, r194, r178, r130
	mma_16x16x16f16 r70, r194, r182, r70
	.loc	2 90 43                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:90:43
	lds_b128 r192, r18, 0x0
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r184, r176, r122
	mma_16x16x16f16 r62, r184, r180, r62
	mma_16x16x16f16 r122, r186, r178, r122
	mma_16x16x16f16 r62, r186, r182, r62
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r184, r41, 0x0
	add_i32 r41, 0x4000, r12
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r188, r176, r114
	mma_16x16x16f16 r54, r188, r180, r54
	mma_16x16x16f16 r114, r190, r178, r114
	mma_16x16x16f16 r54, r190, r182, r54
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r188, r41, 0x0
	add_i32 r41, 0x4000, r13
	.loc	2 96 57                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:96:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r192, r176, r106
	mma_16x16x16f16 r46, r192, r180, r46
	mma_16x16x16f16 r106, r194, r178, r106
	mma_16x16x16f16 r46, r194, r182, r46
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r192, r41, 0x0
	add_i32 r41, 0x4000, r14
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r184, r176, r166
	mma_16x16x16f16 r98, r184, r180, r98
	mma_16x16x16f16 r166, r186, r178, r166
	mma_16x16x16f16 r98, r186, r182, r98
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r184, r41, 0x0
	add_i32 r41, 0x4000, r15
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r188, r176, r158
	mma_16x16x16f16 r90, r188, r180, r90
	mma_16x16x16f16 r158, r190, r178, r158
	mma_16x16x16f16 r90, r190, r182, r90
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r188, r41, 0x0
	add_i32 r41, 0x4000, r16
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r192, r176, r150
	mma_16x16x16f16 r82, r192, r180, r82
	mma_16x16x16f16 r150, r194, r178, r150
	mma_16x16x16f16 r82, r194, r182, r82
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r192, r41, 0x0
	add_i32 r41, 0x4000, r17
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r184, r176, r142
	mma_16x16x16f16 r74, r184, r180, r74
	mma_16x16x16f16 r142, r186, r178, r142
	mma_16x16x16f16 r74, r186, r182, r74
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r184, r41, 0x0
	add_i32 r41, 0x4000, r18
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r188, r176, r134
	mma_16x16x16f16 r66, r188, r180, r66
	mma_16x16x16f16 r134, r190, r178, r134
	mma_16x16x16f16 r66, r190, r182, r66
	.loc	2 104 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:104:45
	lds_b128 r188, r41, 0x0
	.loc	2 110 55                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:110:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r176, r126
	mma_16x16x16f16 r58, r192, r180, r58
	mma_16x16x16f16 r126, r194, r178, r126
	mma_16x16x16f16 r58, r194, r182, r58
	arrive bsmcnt(1)
	mma_16x16x16f16 r118, r184, r176, r118
	mma_16x16x16f16 r50, r184, r180, r50
	mma_16x16x16f16 r118, r186, r178, r118
	mma_16x16x16f16 r50, r186, r182, r50
	arrive bsmcnt(0)
	mma_16x16x16f16 r110, r188, r176, r110
	mma_16x16x16f16 r42, r188, r180, r42
	mma_16x16x16f16 r110, r190, r178, r110
	mma_16x16x16f16 r42, r190, r182, r42
	.loc	2 118 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:118:9
	bra_smskz LBB2_34
; %bb.36:                               ; %if.then398
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp39:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp40:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	add_co_u32 r41, r170, s2
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_52
; %bb.37:                               ; %if.else479
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	mad_i32 r176, r41, 2, s14
.Ltmp41:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r19
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp42:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_53
LBB2_38:                                ; %for.inc555
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_54
LBB2_39:                                ; %if.else479.1
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x8000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp43:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r21
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp44:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_55
LBB2_40:                                ; %for.inc555.1
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_56
LBB2_41:                                ; %if.else479.2
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x10000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp45:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r23
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp46:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_57
LBB2_42:                                ; %for.inc555.2
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_58
LBB2_43:                                ; %if.else479.3
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x18000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp47:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r25
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp48:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_59
LBB2_44:                                ; %for.inc555.3
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_60
LBB2_45:                                ; %if.else479.4
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x20000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp49:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r27
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp50:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_61
LBB2_46:                                ; %for.inc555.4
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_62
LBB2_47:                                ; %if.else479.5
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x28000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp51:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r29
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp52:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_63
LBB2_48:                                ; %for.inc555.5
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_64
LBB2_49:                                ; %if.else479.6
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r175, 0x30000, r41
	mad_i32 r176, r175, 2, s14
.Ltmp53:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r31
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp54:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmsks LBB2_65
LBB2_50:                                ; %for.inc555.6
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s18
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmskz LBB2_66
LBB2_51:                                ; %if.else479.7
                                        ;   in Loop: Header=BB2_35 Depth=1
	.loc	2 124 526 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:124:526
	add_u32 r41, 0x38000, r41
	mad_i32 r176, r41, 2, s14
.Ltmp55:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	rfl_b32 s9, r33
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
.Ltmp56:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_33
	bra LBB2_67
	.p2align	5
LBB2_52:                                ; %Flow421
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_38
LBB2_53:                                ; %if.then405
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp57:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x80, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r20
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp58:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_39
LBB2_54:                                ; %Flow420
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_40
LBB2_55:                                ; %if.then405.1
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp59:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x10080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r22
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp60:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_41
LBB2_56:                                ; %Flow419
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_42
LBB2_57:                                ; %if.then405.2
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp61:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x20080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r24
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp62:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_43
LBB2_58:                                ; %Flow418
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_44
LBB2_59:                                ; %if.then405.3
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp63:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x30080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r26
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp64:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_45
LBB2_60:                                ; %Flow417
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_46
LBB2_61:                                ; %if.then405.4
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp65:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x40080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r28
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp66:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_47
LBB2_62:                                ; %Flow416
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_48
LBB2_63:                                ; %if.then405.5
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp67:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x50080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r30
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp68:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_49
LBB2_64:                                ; %Flow415
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_50
LBB2_65:                                ; %if.then405.6
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp69:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r175, r35, s16
	mov_b32 r176, s17
	addc_co_u32 r176, r36, r176
	add_co_u32 r178, 0x60080, r175
	addc_co_u32 r179, r176, 0
	rfl_b32 s9, r32
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s5
	sor_b64 xmsk, xmsk, s18
.Ltmp70:
	.loc	2 121 13                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:121:13
	and_xmsk s18, s10
	sxor_b64 s18, xmsk, s18
	bra_xmsks LBB2_51
LBB2_66:                                ; %Flow
                                        ;   in Loop: Header=BB2_35 Depth=1
	or_xmsk s18, s18
	sxor_b64 xmsk, xmsk, s18
	snop 0
	bra_xmskz LBB2_33
LBB2_67:                                ; %if.then405.7
                                        ;   in Loop: Header=BB2_35 Depth=1
.Ltmp71:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	add_co_u32 r41, r35, s16
	mov_b32 r175, s17
	addc_co_u32 r175, r36, r175
	add_co_u32 r176, 0x70080, r41
	addc_co_u32 r177, r175, 0
	rfl_b32 s9, r34
	smov_b32 s5, md
	snop 2
	smov_b32 md, s9
	snop 0
	ldg_b128 r0, r176, 0x0 bsm
	smov_b32 md, s5
	bra LBB2_33
.Ltmp72:
LBB2_68:                                ; %for.cond562.preheader
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sshl_b32 s2, 7, s8
	ssub_co_i32 s0, s0, s2
	sadd_co_i32 s0, s0, s1
	sshl_b32 s1, 20, s8
	sshl_b32 s2, 7, s4
	shl_b32 r4, 12, r0
	sadd_co_i32 s1, s2, s1
	and_b32 r3, r0, 15
	shl_b32 r0, 13, r0
	smov_b32 s2, 0x1e0
	and_b32 r5, 0x1e000, r0
	.loc	2 171 65 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:65
	and_or_b32 r0, r1, s2, r3
	and_b32 r4, 0x3c0000, r4
	.loc	2 171 94 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:94
	cmp_lt_i32 s2, r0, s0
	add_u32 r1, s1, r4
	add_u32 r1, r1, r5
	and_or_b32 r2, r2, 12, r1
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	snop 0
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_76
; %bb.69:                               ; %if.then679
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r165
.Ltmp73:
	.file	5 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r165, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp74:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r164
.Ltmp75:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp76:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r165, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r169
.Ltmp77:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r164, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp78:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r163
.Ltmp79:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp80:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r164, r6
.Ltmp81:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r163, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp82:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r162
.Ltmp83:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp84:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r163, r7
.Ltmp85:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r162, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp86:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r162, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r166
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r167
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r168
.Ltmp87:
	.file	6 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp88:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp89:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp90:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp91:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r8, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r9, r3, r9
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r4
	add_u16 r5_hi, 0, 0
	or_b32 r5, r3, r5
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_77
LBB2_70:                                ; %if.end739.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_78
LBB2_71:                                ; %if.then679.2
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r149
.Ltmp92:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r149, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp93:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r148
.Ltmp94:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp95:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r149, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r153
.Ltmp96:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r148, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp97:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r147
.Ltmp98:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp99:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r148, r6
.Ltmp100:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r147, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp101:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r146
.Ltmp102:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp103:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r147, r7
.Ltmp104:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r146, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp105:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r146, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r150
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r151
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r152
.Ltmp106:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp107:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp108:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp109:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp110:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, r2, 32
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_79
LBB2_72:                                ; %if.end739.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_80
LBB2_73:                                ; %if.then679.4
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r133
.Ltmp111:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r133, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp112:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r132
.Ltmp113:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp114:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r133, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r137
.Ltmp115:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r132, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp116:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r131
.Ltmp117:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp118:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r132, r6
.Ltmp119:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r131, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp120:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r130
.Ltmp121:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp122:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r131, r7
.Ltmp123:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r130, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp124:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r130, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r134
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r135
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r136
.Ltmp125:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp126:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp127:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp128:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp129:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, r2, 64
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_81
LBB2_74:                                ; %if.end739.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_82
LBB2_75:                                ; %if.then679.6
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r117
.Ltmp130:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r117, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp131:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r116
.Ltmp132:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp133:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r117, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r121
.Ltmp134:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r116, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp135:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r115
.Ltmp136:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp137:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r116, r6
.Ltmp138:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r115, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp139:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r114
.Ltmp140:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp141:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r115, r7
.Ltmp142:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r114, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp143:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r114, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r118
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r119
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r120
.Ltmp144:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp145:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp146:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp147:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp148:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, 0x60, r2
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_83
	bra LBB2_84
LBB2_76:                                ; %if.end739
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_70
LBB2_77:                                ; %if.then679.1
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r157
.Ltmp149:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r157, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp150:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r156
.Ltmp151:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp152:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r157, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r161
.Ltmp153:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r156, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp154:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r155
.Ltmp155:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp156:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r156, r6
.Ltmp157:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r155, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp158:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r154
.Ltmp159:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp160:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r155, r7
.Ltmp161:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r154, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp162:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r154, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r158
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r159
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r160
.Ltmp163:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp164:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp165:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp166:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp167:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, r2, 16
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_71
LBB2_78:                                ; %if.end739.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_72
LBB2_79:                                ; %if.then679.3
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r141
.Ltmp168:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r141, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp169:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r140
.Ltmp170:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp171:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r141, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r145
.Ltmp172:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r140, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp173:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r139
.Ltmp174:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp175:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r140, r6
.Ltmp176:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r139, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp177:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r138
.Ltmp178:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp179:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r139, r7
.Ltmp180:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r138, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp181:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r138, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r142
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r143
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r144
.Ltmp182:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp183:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp184:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp185:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp186:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, r2, 48
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_73
LBB2_80:                                ; %if.end739.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_74
LBB2_81:                                ; %if.then679.5
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r125
.Ltmp187:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s8
	fmka_f32 r6, r125, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s8
	exp_f32 r6, r6
.Ltmp188:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r124
.Ltmp189:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp190:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r125, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r129
.Ltmp191:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s8
	fmka_f32 r7, r124, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s8
	exp_f32 r7, r7
.Ltmp192:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r123
.Ltmp193:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp194:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r124, r6
.Ltmp195:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s8
	fmka_f32 r8, r123, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s8
	exp_f32 r8, r8
.Ltmp196:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r122
.Ltmp197:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp198:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r123, r7
.Ltmp199:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s8
	fmka_f32 r5, r122, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s8
	exp_f32 r5, r5
.Ltmp200:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r122, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r126
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r127
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r128
.Ltmp201:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp202:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp203:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp204:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp205:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, 0x50, r2
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_75
LBB2_82:                                ; %if.end739.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_84
LBB2_83:                                ; %if.then679.7
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r1, 0xbfb8aa3b, r109
.Ltmp206:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r5, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r6, r5, 0, s2
	fmka_f32 r6, r109, 0xbfb8aa3b, r6
	csel_b32 r4, r1, r3, s2
	exp_f32 r6, r6
.Ltmp207:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r4, r4, r6, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r6, 0xbfb8aa3b, r108
.Ltmp208:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp209:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r4, r6, r4, s1
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r4, r109, r4
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r4, r4, r113
.Ltmp210:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r5, 0, s2
	fmka_f32 r7, r108, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r3, s2
	exp_f32 r7, r7
.Ltmp211:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r7, 0xbfb8aa3b, r107
.Ltmp212:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp213:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s1
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r6, r108, r6
.Ltmp214:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r5, 0, s2
	fmka_f32 r8, r107, 0xbfb8aa3b, r8
	csel_b32 r7, r1, r3, s2
	exp_f32 r8, r8
.Ltmp215:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r7, r7, r8, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r8, 0xbfb8aa3b, r106
.Ltmp216:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r8
.Ltmp217:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r7, r8, r7, s1
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r7, r107, r7
.Ltmp218:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r5, r5, 0, s2
	fmka_f32 r5, r106, 0xbfb8aa3b, r5
	csel_b32 r1, r1, r3, s2
	exp_f32 r5, r5
.Ltmp219:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r1, r1, r5, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
	div_scale_f32 r5, r1, r1, s1
	rcp_f32 r8, r5
	snop 0
	fmac_f32 r3, neg(r5), r8
	fmac_f32 r8, r3, r8
	div_scale_f32 r3, s1, r1, s1
	mul_f32 r9, r3, r8
	fma_f32 r10, neg(r5), r9, r3
	fmac_f32 r9, r10, r8
	fmac_f32 r3, neg(r5), r9
	div_fmas_f32 r3, r3, r8, r9
	div_fixup_f32 r1, r3, r1, s1
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r1, r106, r1
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r1, r1, r110
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r3, r7, r111
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r5, r6, r112
.Ltmp220:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp221:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp222:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp223:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp224:
	.loc	2 182 217 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:217
	snop 0
	or_b32 r4, 0x70, r2
	.loc	2 182 27 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	mad_i32 r8, r4, 2, s6
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r4, 16, r5
	add_u16 r3_hi, 0, 0
	or_b32 r5, r4, r3
	shl_b32 r3, 16, r6
	and_b32 r1, 0xffff, r1
	or_b32 r4, r3, r1
	snop 1
	stg_b64 r8, 0x0, r4 devc
LBB2_84:                                ; %if.end739.7
	.loc	2 0 260                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:260
	sor_b64 xmsk, xmsk, s4
	.loc	2 171 65 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:65
	or_b32 r0, r0, 16
	.loc	2 171 94 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:94
	cmp_lt_i32 s0, r0, s0
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_93
; %bb.85:                               ; %if.then679.8
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r105
.Ltmp225:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r105, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp226:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r104
.Ltmp227:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp228:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r105, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r101
.Ltmp229:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r104, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp230:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r103
.Ltmp231:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp232:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r104, r5
.Ltmp233:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r103, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp234:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r102
.Ltmp235:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp236:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r103, r6
.Ltmp237:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r102, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp238:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r102, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r98
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r99
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r100
.Ltmp239:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp240:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp241:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp242:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp243:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x40000, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_94
LBB2_86:                                ; %if.end739.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_95
LBB2_87:                                ; %if.then679.10
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r89
.Ltmp244:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r89, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp245:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r88
.Ltmp246:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp247:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r89, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r85
.Ltmp248:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r88, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp249:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r87
.Ltmp250:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp251:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r88, r5
.Ltmp252:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r87, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp253:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r86
.Ltmp254:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp255:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r87, r6
.Ltmp256:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r86, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp257:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r86, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r82
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r83
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r84
.Ltmp258:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp259:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp260:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp261:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp262:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x40040, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_96
LBB2_88:                                ; %if.end739.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_97
LBB2_89:                                ; %if.then679.12
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r73
.Ltmp263:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r73, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp264:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r72
.Ltmp265:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp266:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r73, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r69
.Ltmp267:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r72, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp268:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r71
.Ltmp269:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp270:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r72, r5
.Ltmp271:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r71, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp272:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r70
.Ltmp273:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp274:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r71, r6
.Ltmp275:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r70, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp276:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r70, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r66
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r67
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r68
.Ltmp277:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp278:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp279:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp280:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp281:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x40080, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_98
LBB2_90:                                ; %if.end739.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_99
LBB2_91:                                ; %if.then679.14
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r57
.Ltmp282:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r57, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp283:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r56
.Ltmp284:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp285:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r57, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r53
.Ltmp286:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r56, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp287:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r55
.Ltmp288:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp289:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r56, r5
.Ltmp290:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r55, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp291:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r54
.Ltmp292:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp293:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r55, r6
.Ltmp294:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r54, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp295:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r54, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r50
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r51
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r52
.Ltmp296:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp297:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp298:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp299:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp300:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x400c0, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_100
LBB2_92:                                ; %if.end739.15
	.loc	2 185 1                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:185:1
	endk
LBB2_93:                                ; %if.end739.8
	.loc	2 0 1 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:1
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_86
LBB2_94:                                ; %if.then679.9
	.loc	2 153 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r97
.Ltmp301:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r97, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp302:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r96
.Ltmp303:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp304:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r97, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r93
.Ltmp305:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r96, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp306:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r95
.Ltmp307:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp308:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r96, r5
.Ltmp309:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r95, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp310:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r94
.Ltmp311:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp312:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r95, r6
.Ltmp313:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r94, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp314:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r94, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r90
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r91
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r92
.Ltmp315:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp316:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp317:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp318:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp319:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x40020, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_87
LBB2_95:                                ; %if.end739.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_88
LBB2_96:                                ; %if.then679.11
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r81
.Ltmp320:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r81, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp321:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r80
.Ltmp322:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp323:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r81, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r77
.Ltmp324:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r80, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp325:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r79
.Ltmp326:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp327:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r80, r5
.Ltmp328:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r79, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp329:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r78
.Ltmp330:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp331:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r79, r6
.Ltmp332:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r78, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp333:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r78, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r74
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r75
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r76
.Ltmp334:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp335:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp336:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp337:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp338:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x40060, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_89
LBB2_97:                                ; %if.end739.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_90
LBB2_98:                                ; %if.then679.13
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r65
.Ltmp339:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s4
	fmka_f32 r5, r65, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s4
	exp_f32 r5, r5
.Ltmp340:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r64
.Ltmp341:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r5
.Ltmp342:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r65, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r61
.Ltmp343:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s4
	fmka_f32 r6, r64, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s4
	exp_f32 r6, r6
.Ltmp344:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r63
.Ltmp345:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r6
.Ltmp346:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r64, r5
.Ltmp347:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s4
	fmka_f32 r7, r63, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s4
	exp_f32 r7, r7
.Ltmp348:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r62
.Ltmp349:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r7
.Ltmp350:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r63, r6
.Ltmp351:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s4
	fmka_f32 r4, r62, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s4
	exp_f32 r4, r4
.Ltmp352:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r62, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r58
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r59
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r60
.Ltmp353:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp354:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp355:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp356:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp357:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r8, 1, r2
	add_co_u32 r3, s6, r8
	mov_b32 r4, s7
	addc_co_u32 r4, r4, r9
	add_co_u32 r8, 0x400a0, r3
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r3, 16, r6
	add_u16 r1_hi, 0, 0
	or_b32 r7, r3, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r9, r4, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r6, r1, r0
	snop 1
	stg_b64 r8, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_91
LBB2_99:                                ; %if.end739.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 171 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:171:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_92
LBB2_100:                               ; %if.then679.15
	.loc	2 153 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:153:27
	mul_f32 r0, 0xbfb8aa3b, r49
.Ltmp358:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r4, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r1, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r49, 0xbfb8aa3b, r5
	csel_b32 r3, r0, r1, s0
	exp_f32 r5, r5
.Ltmp359:
	.loc	2 161 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:161:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
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
	.loc	2 152 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:152:27
	mul_f32 r5, 0xbfb8aa3b, r48
.Ltmp360:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp361:
	.loc	2 165 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:165:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 169 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:169:20
	mul_f32 r3, r49, r3
	.loc	2 179 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:179:24
	mul_f32 r3, r3, r45
.Ltmp362:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r48, 0xbfb8aa3b, r6
	csel_b32 r5, r0, r1, s0
	exp_f32 r6, r6
.Ltmp363:
	.loc	2 160 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:160:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
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
	.loc	2 151 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:151:27
	mul_f32 r6, 0xbfb8aa3b, r47
.Ltmp364:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp365:
	.loc	2 164 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:164:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 168 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:168:20
	mul_f32 r5, r48, r5
.Ltmp366:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r47, 0xbfb8aa3b, r7
	csel_b32 r6, r0, r1, s0
	exp_f32 r7, r7
.Ltmp367:
	.loc	2 159 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:159:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
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
	.loc	2 150 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:150:27
	mul_f32 r7, 0xbfb8aa3b, r46
.Ltmp368:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp369:
	.loc	2 163 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:163:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 167 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:167:20
	mul_f32 r6, r47, r6
.Ltmp370:
	.loc	5 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r46, 0xbfb8aa3b, r4
	csel_b32 r0, r0, r1, s0
	exp_f32 r4, r4
.Ltmp371:
	.loc	2 158 26                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:158:26
	snop 0
	fmak_f32 r0, r0, r4, 0x3f800000
	.loc	2 162 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:162:24
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
	.loc	2 166 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:166:20
	mul_f32 r0, r46, r0
	.loc	2 176 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:176:24
	mul_f32 r0, r0, r42
	.loc	2 177 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:177:24
	mul_f32 r1, r6, r43
	.loc	2 178 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:178:24
	mul_f32 r4, r5, r44
.Ltmp372:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp373:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp374:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp375:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp376:
	.loc	2 182 27 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	snop 0
	mov_b32 r3, 0
	shl_b64 r6, 1, r2
	add_co_u32 r2, s6, r6
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r7
	add_co_u32 r6, 0x400e0, r2
	.loc	2 182 260 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	shl_b32 r2, 16, r4
	add_u16 r1_hi, 0, 0
	.loc	2 182 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:27
	addc_co_u32 r7, r3, 0
	.loc	2 182 260                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:182:260
	or_b32 r3, r2, r1
	shl_b32 r1, 16, r5
	and_b32 r0, 0xffff, r0
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 185 1 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:185:1
	snop 2
	endk
.Ltmp377:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 26792
; NumMTRegsForWarps/PEU: 204
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 187 0                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:187:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s16, s5
.Ltmp378:
	.loc	2 198 19 prologue_end           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:198:19
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
	.loc	2 199 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:199:20
	sshl_b64 s2, 2, s18
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 200 19                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:200:19
	sadd_co_u32 s6, s44, s2
	saddc_co_u32 s7, s45, s3
	.loc	2 201 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:201:22
	sadd_co_u32 s8, s46, s2
	smov_b32 s2, 0x1e000
	.loc	2 214 168                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:168
	and_or_b32 r35, r3, s2, r1
	.loc	2 214 227 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:227
	or_b32 r156, r35, r4
	.loc	2 214 67                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:67
	shl_b32 r1, 1, r156
	shl_b32 r8, 3, r0
	.loc	2 201 22 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:201:22
	saddc_co_u32 s9, s47, s3
	.loc	2 214 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:45
	ldg_b128 r160, s14, r1, 0x0
	shl_b32 r1, 10, r0
	sshl_b32 s19, 21, s4
	and_b32 r31, 0xfe000, r1
	and_b32 r7, r8, 56
	sshl_b32 s18, 24, s18
	or3_b32 r7, s19, r7, r31
	add_u32 r7, r7, s18
	.loc	2 218 356                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:356
	mad_i32 r10, r7, 2, s40
	add_co_u32 r12, 0x80000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 214 168                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:168
	or_b32 r33, 0x20000, r35
	.loc	2 218 339                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:339
	ldg_b128 r18, r10, 0x0
	ldg_b128 r22, r12, 0x0
	.loc	2 218 356 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:356
	add_co_u32 r12, 0x100000, r10
	addc_co_u32 r13, r11, 0
	.loc	2 214 227 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:227
	or_b32 r158, r33, r4
	.loc	2 218 356                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:356
	add_co_u32 r10, 0x180000, r10
	.loc	2 214 67                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:67
	shl_b32 r3, 1, r158
	.loc	2 214 227 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:227
	or_b32 r5, 0x20020, r156
	or_b32 r4, r156, 32
	.loc	2 214 67                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:67
	shl_b32 r6, 1, r5
	.loc	2 214 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:45
	ldg_b128 r164, s14, r3, 0x0
	.loc	2 214 67                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:67
	shl_b32 r3, 1, r4
	.loc	2 218 356 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:356
	addc_co_u32 r11, r11, 0
	.loc	2 214 45                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:214:45
	ldg_b128 r180, s14, r6, 0x0
	ldg_b128 r176, s14, r3, 0x0
	.loc	2 218 339                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:339
	ldg_b128 r36, r12, 0x0
	ldg_b128 r40, r10, 0x0
	and_b32 r6, r8, 16
	and_b32 r17, r8, 32
	.loc	2 199 20                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:199:20
	ldu_b32 s2, s0, 0x0
	.loc	2 200 19                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:200:19
	ldu_b32 s1, s6, 0x0
	.loc	2 201 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:201:22
	ldu_b32 s0, s8, 0x0
	mul_u24 r3, r0, 9
	add_u32 r9, r17, r0
	add_u32 r6, r6, r0
	and_b32 r7, 0x1fc0, r8
	and_b32 r3, r3, 8
	and_b32 r9, r9, 32
	and_b32 r6, r6, 16
	.loc	2 218 47                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:47
	add_u32 r27, 0x800, r7
	add_u32 r28, 0x1000, r7
	add_u32 r29, 0x1800, r7
	.loc	2 218 83 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:83
	or_b32 r10, r9, r3
	.loc	2 218 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:27
	or_b32 r3, r6, r3
	sadd_co_i32 s3, 0x4000, 0
	.loc	2 218 253                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:253
	or3_b32 r11, r10, r7, r6
	.loc	2 218 27                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:27
	or3_b32 r12, r10, r27, r6
	or3_b32 r6, r10, r28, r6
	mov_b32 r10, s3
	or3_b32 r3, r3, r29, r9
	shl_add_u32 r11, 1, r11, r10
	shl_add_u32 r12, 1, r12, r10
	shl_add_u32 r6, 1, r6, r10
	shl_add_u32 r3, 1, r3, r10
	.loc	2 218 339                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:218:339
	arrive gvmcnt(6)
	sts_b128 r11, 0x0, r18
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r22
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r36
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r40
.Ltmp379:
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
.Ltmp380:
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
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
	.loc	2 221 8 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:8
	sadd_co_u32 s18, 0x80080, s40
	or_b32 r18, r24, r16
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
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
	.loc	2 221 8                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:8
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
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
	addc_co_u32 r34, r34, r37
	shl_or_b32 r36, 1, r35, r36
	.loc	2 0 0                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
	shl_b64 r136, 0, 0
	shl_add_u32 r6, 1, r6, 0
	sadd_co_u32 s14, 0x100, s14
	or_b32 r12, r20, r22
	or_b32 r14, r20, r25
	or_b32 r16, r20, r41
	or3_b32 r20, r24, r22, r42
	or3_b32 r22, r24, r25, r42
	or3_b32 r24, r24, r41, r42
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
	add_co_u32 r35, s3, r36
	mov_b32 r36, s5
	smov_b64 s20, 0
	shl_add_u32 r8, 1, r8, 0
	add_u32 r26, 0x6000, r40
	add_u32 r30, 0x4000, r40
	.loc	2 0 0                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
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
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
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
	.loc	2 221 31                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:31
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	sadd_co_u32 s20, 0x80, s20
	saddc_co_u32 s21, s21, 0
	scmp_eq_u64 0x4000, s22
	.loc	2 221 3                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:221:3
	snop 0
	bra_smsks LBB3_12
LBB3_2:                                 ; %for.body127
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 222 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:222:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %for.cond130.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp381:
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
.Ltmp382:
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 229 71 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:71
	add_co_u32 r192, r156, s20
	mov_b32 r37, s21
	addc_co_u32 r193, r157, r37
	.loc	2 229 49 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	add_co_u32 r194, r35, s22
	mov_b32 r38, s23
	addc_co_u32 r195, r36, r38
	.loc	2 229 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:71
	add_co_u32 r196, r158, s20
	addc_co_u32 r197, r39, r37
	.loc	2 229 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	add_co_u32 r198, r33, s22
	.loc	2 229 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:251
	shl_b64 r192, 1, r192
	.loc	2 229 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	addc_co_u32 r199, r34, r38
	.loc	2 229 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:71
	or_b32 r37, r192, 64
	add_co_u32 r192, s3, r37
	mov_b32 r37, s5
	.loc	2 229 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	ldg_b128 r200, r194, 0x0
	.loc	2 229 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:251
	shl_b64 r194, 1, r196
	.loc	2 229 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:71
	addc_co_u32 r193, r37, r193
	or_b32 r38, r194, 64
	add_co_u32 r196, s3, r38
	addc_co_u32 r197, r37, r195
	.loc	2 233 41 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	add_i32 r37, 0x4000, r9
	add_i32 r38, 0x4000, r10
	.loc	2 229 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	ldg_b128 r204, r198, 0x0
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	lds_b128 r212, r38, 0x0
	add_i32 r37, 0x4000, r11
	.loc	2 229 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:229:49
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r216, r37, 0x0
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r208, r160, r184
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	add_i32 r37, 0x4000, r12
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	mma_16x16x16f16 r132, r208, r164, r132
	mma_16x16x16f16 r184, r210, r162, r184
	mma_16x16x16f16 r132, r210, r166, r132
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r13
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r212, r160, r172
	mma_16x16x16f16 r128, r212, r164, r128
	mma_16x16x16f16 r172, r214, r162, r172
	mma_16x16x16f16 r128, r214, r166, r128
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r14
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r216, r160, r168
	mma_16x16x16f16 r124, r216, r164, r124
	mma_16x16x16f16 r168, r218, r162, r168
	mma_16x16x16f16 r124, r218, r166, r124
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r15
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r208, r160, r152
	mma_16x16x16f16 r120, r208, r164, r120
	mma_16x16x16f16 r152, r210, r162, r152
	mma_16x16x16f16 r120, r210, r166, r120
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r16
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r212, r160, r148
	mma_16x16x16f16 r116, r212, r164, r116
	mma_16x16x16f16 r148, r214, r162, r148
	mma_16x16x16f16 r116, r214, r166, r116
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r17
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r216, r160, r144
	mma_16x16x16f16 r112, r216, r164, r112
	mma_16x16x16f16 r144, r218, r162, r144
	mma_16x16x16f16 r112, r218, r166, r112
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r18
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r160, r140
	mma_16x16x16f16 r108, r208, r164, r108
	mma_16x16x16f16 r140, r210, r162, r140
	mma_16x16x16f16 r108, r210, r166, r108
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r19
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r212, r160, r136
	mma_16x16x16f16 r104, r212, r164, r104
	mma_16x16x16f16 r136, r214, r162, r136
	mma_16x16x16f16 r104, r214, r166, r104
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r20
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r216, r176, r184
	mma_16x16x16f16 r132, r216, r180, r132
	mma_16x16x16f16 r184, r218, r178, r184
	mma_16x16x16f16 r132, r218, r182, r132
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r21
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r208, r176, r172
	mma_16x16x16f16 r128, r208, r180, r128
	mma_16x16x16f16 r172, r210, r178, r172
	mma_16x16x16f16 r128, r210, r182, r128
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r22
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r212, r176, r168
	mma_16x16x16f16 r124, r212, r180, r124
	mma_16x16x16f16 r168, r214, r178, r168
	mma_16x16x16f16 r124, r214, r182, r124
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r212, r37, 0x0
	add_i32 r37, 0x4000, r23
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r216, r176, r152
	mma_16x16x16f16 r120, r216, r180, r120
	mma_16x16x16f16 r152, r218, r178, r152
	mma_16x16x16f16 r120, r218, r182, r120
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r216, r37, 0x0
	add_i32 r37, 0x4000, r24
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r176, r148
	mma_16x16x16f16 r116, r208, r180, r116
	mma_16x16x16f16 r148, r210, r178, r148
	mma_16x16x16f16 r116, r210, r182, r116
	.loc	2 233 41                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:233:41
	lds_b128 r208, r37, 0x0
	.loc	2 239 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:239:58
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
.Ltmp383:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp384:
	.loc	2 248 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:248:9
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %for.cond347.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp385:
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
.Ltmp386:
LBB3_6:                                 ; %if.end431
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 5 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:0:5
	sor_b64 xmsk, xmsk, s6
	.loc	2 253 584 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:253:584
	or_b32 r37, r7, s20
	.loc	2 253 462 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:253:462
	mad_i32 r208, r37, 2, s18
.Ltmp387:
	.loc	3 268 5 is_stmt 1               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	mov_b32 r38, s23
	add_co_u32 r37, r190, s22
.Ltmp388:
	.loc	2 10 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:10:41
	ldg_b128 r208, r208, 0x0
.Ltmp389:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	addc_co_u32 r159, r191, r38
	add_co_u32 r212, 0x100000, r37
	addc_co_u32 r213, r159, 0
	add_co_u32 r214, 0x180000, r37
	rfl_b32 s7, r26
	smov_b32 s6, md
	addc_co_u32 r215, r159, 0
.Ltmp390:
	.loc	2 10 41                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:10:41
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r208
.Ltmp391:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	snop 0
	ldg_b128 r0, r212, 0x0 bsm
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r214, 0x0 bsm
.Ltmp392:
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r160, r100
	mma_16x16x16f16 r68, r208, r164, r68
	mma_16x16x16f16 r100, r210, r162, r100
	mma_16x16x16f16 r68, r210, r166, r68
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r12, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r160, r96
	mma_16x16x16f16 r64, r212, r164, r64
	mma_16x16x16f16 r96, r214, r162, r96
	mma_16x16x16f16 r64, r214, r166, r64
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r212, r13, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r160, r92
	mma_16x16x16f16 r60, r216, r164, r60
	mma_16x16x16f16 r92, r218, r162, r92
	mma_16x16x16f16 r60, r218, r166, r60
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r216, r14, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r160, r88
	mma_16x16x16f16 r56, r208, r164, r56
	mma_16x16x16f16 r88, r210, r162, r88
	mma_16x16x16f16 r56, r210, r166, r56
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r15, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r160, r84
	mma_16x16x16f16 r52, r212, r164, r52
	mma_16x16x16f16 r84, r214, r162, r84
	mma_16x16x16f16 r52, r214, r166, r52
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r212, r16, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r160, r80
	mma_16x16x16f16 r48, r216, r164, r48
	mma_16x16x16f16 r80, r218, r162, r80
	mma_16x16x16f16 r48, r218, r166, r48
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r216, r17, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r160, r76
	mma_16x16x16f16 r44, r208, r164, r44
	mma_16x16x16f16 r76, r210, r162, r76
	mma_16x16x16f16 r44, r210, r166, r44
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r18, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r160, r72
	mma_16x16x16f16 r40, r212, r164, r40
	mma_16x16x16f16 r72, r214, r162, r72
	mma_16x16x16f16 r40, r214, r166, r40
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r212, r19, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r216, r176, r100
	mma_16x16x16f16 r68, r216, r180, r68
	mma_16x16x16f16 r100, r218, r178, r100
	mma_16x16x16f16 r68, r218, r182, r68
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r216, r20, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r208, r176, r96
	mma_16x16x16f16 r64, r208, r180, r64
	mma_16x16x16f16 r96, r210, r178, r96
	mma_16x16x16f16 r64, r210, r182, r64
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r21, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r212, r176, r92
	mma_16x16x16f16 r60, r212, r180, r60
	mma_16x16x16f16 r92, r214, r178, r92
	mma_16x16x16f16 r60, r214, r182, r60
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r212, r22, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r216, r176, r88
	mma_16x16x16f16 r56, r216, r180, r56
	mma_16x16x16f16 r88, r218, r178, r88
	mma_16x16x16f16 r56, r218, r182, r56
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r216, r23, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r176, r84
	mma_16x16x16f16 r52, r208, r180, r52
	mma_16x16x16f16 r84, r210, r178, r84
	mma_16x16x16f16 r52, r210, r182, r52
	.loc	2 259 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:259:43
	lds_b128 r208, r24, 0x0
	.loc	2 265 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:265:58
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
.Ltmp393:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp394:
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
.Ltmp395:
	.loc	2 277 16                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:277:16
	mov_b32 r210, 0x3f00
.Ltmp396:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r28
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x300080, r37
	addc_co_u32 r209, r38, 0
.Ltmp397:
	.loc	2 277 16                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:277:16
	mov_b32 r211, 0
.Ltmp398:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
	rfl_b32 s7, r29
	ldg_b128 r0, r208, 0x0 bsm
	add_co_u32 r208, 0x380080, r37
	addc_co_u32 r209, r38, 0
.Ltmp399:
	.loc	2 277 16                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:277:16
	cmp_lg_u64 s24, s22, r210
.Ltmp400:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s7
.Ltmp401:
	.loc	2 277 16                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:277:16
	scmp_eq_u64 0x3f00, s22
.Ltmp402:
	.loc	3 268 5                         ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	ldg_b128 r0, r208, 0x0 bsm
.Ltmp403:
	.loc	3 268 5 is_stmt 0               ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/maca_async.h:268:5
	smov_b32 md, s6
.Ltmp404:
	.loc	2 277 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:277:9
	bra_smsks LBB3_8
; %bb.7:                                ; %for.body769.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 280 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:251
	or_b32 r159, r156, s20
	.loc	2 280 71 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:71
	mad_i32 r160, r159, 2, s14
	.loc	2 280 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:251
	or_b32 r159, r158, s20
	.loc	2 280 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:71
	mad_i32 r164, r159, 2, s14
	.loc	2 280 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:251
	or_b32 r159, r4, s20
	.loc	2 280 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:71
	mad_i32 r176, r159, 2, s14
	.loc	2 280 251                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:251
	or_b32 r159, r5, s20
	.loc	2 280 71                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:71
	mad_i32 r180, r159, 2, s14
	.loc	2 280 49                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:280:49
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
	ldg_b128 r176, r176, 0x0
	ldg_b128 r180, r180, 0x0
LBB3_8:                                 ; %if.end803
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 285 43 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	add_i32 r159, 0x4000, r9
	add_i32 r208, 0x4000, r10
	snop 0
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r11
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r12
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r13
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r210, r200, r184
	mma_16x16x16f16 r132, r210, r204, r132
	mma_16x16x16f16 r184, r212, r202, r184
	mma_16x16x16f16 r132, r212, r206, r132
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r210, r208, 0x0
	add_i32 r208, 0x4000, r14
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r214, r200, r172
	mma_16x16x16f16 r128, r214, r204, r128
	mma_16x16x16f16 r172, r216, r202, r172
	mma_16x16x16f16 r128, r216, r206, r128
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r15
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r218, r200, r168
	mma_16x16x16f16 r124, r218, r204, r124
	mma_16x16x16f16 r168, r220, r202, r168
	mma_16x16x16f16 r124, r220, r206, r124
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r16
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r210, r200, r152
	mma_16x16x16f16 r120, r210, r204, r120
	mma_16x16x16f16 r152, r212, r202, r152
	mma_16x16x16f16 r120, r212, r206, r120
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r17
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r214, r200, r148
	mma_16x16x16f16 r116, r214, r204, r116
	mma_16x16x16f16 r148, r216, r202, r148
	mma_16x16x16f16 r116, r216, r206, r116
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r20
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r218, r200, r144
	mma_16x16x16f16 r112, r218, r204, r112
	mma_16x16x16f16 r144, r220, r202, r144
	mma_16x16x16f16 r112, r220, r206, r112
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r218, r159, 0x0
	add_i32 r159, 0x4000, r18
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r210, r200, r140
	mma_16x16x16f16 r108, r210, r204, r108
	mma_16x16x16f16 r140, r212, r202, r140
	mma_16x16x16f16 r108, r212, r206, r108
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r19
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r214, r200, r136
	mma_16x16x16f16 r104, r214, r204, r104
	mma_16x16x16f16 r136, r216, r202, r136
	mma_16x16x16f16 r104, r216, r206, r104
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r214, r159, 0x0
	add_i32 r159, 0x4000, r21
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r218, r192, r184
	mma_16x16x16f16 r132, r218, r196, r132
	mma_16x16x16f16 r184, r220, r194, r184
	mma_16x16x16f16 r132, r220, r198, r132
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r218, r208, 0x0
	add_i32 r208, 0x4000, r22
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r210, r192, r172
	mma_16x16x16f16 r128, r210, r196, r128
	mma_16x16x16f16 r172, r212, r194, r172
	mma_16x16x16f16 r128, r212, r198, r128
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r210, r159, 0x0
	add_i32 r159, 0x4000, r23
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r214, r192, r168
	mma_16x16x16f16 r124, r214, r196, r124
	mma_16x16x16f16 r168, r216, r194, r168
	mma_16x16x16f16 r124, r216, r198, r124
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r214, r208, 0x0
	add_i32 r208, 0x4000, r24
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r218, r192, r152
	mma_16x16x16f16 r120, r218, r196, r120
	mma_16x16x16f16 r152, r220, r194, r152
	mma_16x16x16f16 r120, r220, r198, r120
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r218, r159, 0x0
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r210, r192, r148
	mma_16x16x16f16 r116, r210, r196, r116
	.loc	2 285 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:285:43
	lds_b128 r208, r208, 0x0
	.loc	2 291 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:291:58
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
.Ltmp405:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp406:
	.loc	2 300 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:300:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_10
; %bb.9:                                ; %for.cond901.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	add_co_u32 r208, 0x180100, r37
	addc_co_u32 r209, r38, 0
	add_co_u32 r210, 0x100100, r37
	addc_co_u32 r211, r38, 0
	add_co_u32 r212, 0x80100, r37
	addc_co_u32 r213, r38, 0
.Ltmp407:
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
.Ltmp408:
LBB3_10:                                ; %if.end985
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r9, 0x0
	lds_b128 r212, r10, 0x0
	lds_b128 r216, r11, 0x0
	.loc	2 321 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:321:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r200, r100
	mma_16x16x16f16 r68, r208, r204, r68
	mma_16x16x16f16 r100, r210, r202, r100
	mma_16x16x16f16 r68, r210, r206, r68
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r12, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r212, r200, r96
	mma_16x16x16f16 r64, r212, r204, r64
	mma_16x16x16f16 r96, r214, r202, r96
	mma_16x16x16f16 r64, r214, r206, r64
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r212, r13, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r216, r200, r92
	mma_16x16x16f16 r60, r216, r204, r60
	mma_16x16x16f16 r92, r218, r202, r92
	mma_16x16x16f16 r60, r218, r206, r60
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r216, r14, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r200, r88
	mma_16x16x16f16 r56, r208, r204, r56
	mma_16x16x16f16 r88, r210, r202, r88
	mma_16x16x16f16 r56, r210, r206, r56
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r15, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r200, r84
	mma_16x16x16f16 r52, r212, r204, r52
	mma_16x16x16f16 r84, r214, r202, r84
	mma_16x16x16f16 r52, r214, r206, r52
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r212, r16, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r216, r200, r80
	mma_16x16x16f16 r48, r216, r204, r48
	mma_16x16x16f16 r80, r218, r202, r80
	mma_16x16x16f16 r48, r218, r206, r48
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r216, r17, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r200, r76
	mma_16x16x16f16 r44, r208, r204, r44
	mma_16x16x16f16 r76, r210, r202, r76
	mma_16x16x16f16 r44, r210, r206, r44
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r18, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r200, r72
	mma_16x16x16f16 r40, r212, r204, r40
	mma_16x16x16f16 r72, r214, r202, r72
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r200, r19, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	mma_16x16x16f16 r40, r214, r206, r40
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r204, r20, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
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
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r21, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r200, r192, r92
	mma_16x16x16f16 r60, r200, r196, r60
	mma_16x16x16f16 r92, r202, r194, r92
	mma_16x16x16f16 r60, r202, r198, r60
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r200, r22, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r204, r192, r88
	mma_16x16x16f16 r56, r204, r196, r56
	mma_16x16x16f16 r88, r206, r194, r88
	mma_16x16x16f16 r56, r206, r198, r56
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r204, r23, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r208, r192, r84
	mma_16x16x16f16 r52, r208, r196, r52
	mma_16x16x16f16 r84, r210, r194, r84
	mma_16x16x16f16 r52, r210, r198, r52
	.loc	2 307 43                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:307:43
	lds_b128 r208, r24, 0x0
	.loc	2 313 58                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:313:58
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
	.loc	2 321 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:321:9
	bra_cmsks LBB3_1
; %bb.11:                               ; %if.then1081
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp409:
	.loc	4 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	4 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	4 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp410:
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
	.loc	2 327 92 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:327:92
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
	.loc	2 327 9 is_stmt 0               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:327:9
	and_xmsk s6, s14
	snop 0
	bra_xmskz LBB3_16
; %bb.13:                               ; %if.then1104
	.loc	2 0 9                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s20, 0x8e0, r4
	.loc	2 329 15 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:329:15
	cmp_ge_i32 s18, r5, s0
	mov_b32 r4, 0
	.loc	2 329 163 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:329:163
	snop 2
	sand_b64 s20, s18, s20
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB3_15
; %bb.14:                               ; %if.then1133
	.loc	2 0 163                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r4, s13
	addc_co_u32 r9, r4, r9
	.loc	2 330 19 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:330:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB3_15:                                ; %Flow558
	.loc	2 0 19 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s18
LBB3_16:                                ; %for.inc1157
	sor_b64 xmsk, xmsk, s6
	.loc	2 327 63 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:327:63
	or_b32 r2, r2, 16
	.loc	2 327 92 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:327:92
	cmp_ge_i32 s6, r2, s2
	cmp_lt_i32 s2, r2, s2
	.loc	2 0 0                           ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:0
	mov_b32 r2, 0
	.loc	2 327 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:327:9
	snop 2
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB3_20
; %bb.17:                               ; %if.then1104.1
	.loc	2 329 117 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:329:117
	add_u32 r2, r5, 16
	.loc	2 329 15 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:329:15
	cmp_ge_i32 s20, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x8e0, r2
	mov_b32 r2, 0
	.loc	2 329 163                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:329:163
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB3_19
; %bb.18:                               ; %if.then1133.1
	.loc	2 0 163                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 330 19 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:330:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB3_19:                                ; %Flow557
	.loc	2 0 19 is_stmt 0                ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:19
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
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then1178
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(0)
	mul_f32 r1, r184, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r185, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r186, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r6, r187, r4
.Ltmp411:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp412:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp413:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp414:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp415:
LBB3_22:                                ; %if.end1233
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 22 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 355 254 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then1178.1
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(1)
	mul_f32 r1, r172, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r173, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r174, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r10, r175, r4
.Ltmp416:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp417:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp418:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp419:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp420:
LBB3_24:                                ; %if.end1233.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 16
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %if.then1178.2
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(2)
	mul_f32 r1, r168, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r169, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r170, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r8, r171, r4
.Ltmp421:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp422:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp423:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp424:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp425:
LBB3_26:                                ; %if.end1233.2
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 32
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r8, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_28
; %bb.27:                               ; %if.then1178.3
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(3)
	mul_f32 r1, r152, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r153, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r154, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r12, r155, r4
.Ltmp426:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp427:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp428:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp429:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp430:
LBB3_28:                                ; %if.end1233.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 48
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r26, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then1178.4
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(4)
	mul_f32 r1, r148, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r149, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r150, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r12, r151, r4
.Ltmp431:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp432:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp433:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp434:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp435:
LBB3_30:                                ; %if.end1233.4
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 64
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r14, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_32
; %bb.31:                               ; %if.then1178.5
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(5)
	mul_f32 r1, r144, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r145, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r146, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r12, r147, r4
.Ltmp436:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp437:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp438:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp439:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp440:
LBB3_32:                                ; %if.end1233.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, 0x50, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_34
; %bb.33:                               ; %if.then1178.6
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(6)
	mul_f32 r1, r140, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r141, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r142, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r10, r143, r4
.Ltmp441:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp442:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp443:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp444:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp445:
LBB3_34:                                ; %if.end1233.6
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, 0x60, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r10, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then1178.7
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(7)
	mul_f32 r1, r136, r4
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r137, r4
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r138, r4
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r16, r139, r4
.Ltmp446:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp447:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp448:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp449:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp450:
LBB3_36:                                ; %if.end1233.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, 0x70, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %if.then1178.8
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(8)
	mul_f32 r1, r132, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r133, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r134, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r12, r135, r2
.Ltmp451:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp452:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp453:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp454:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp455:
LBB3_38:                                ; %if.end1233.8
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 22 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	add_co_u32 r12, 0x10000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 355 190 is_stmt 0             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:190
	add_u32 r0, 0x8000, r0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_40
; %bb.39:                               ; %if.then1178.9
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(9)
	mul_f32 r1, r128, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r129, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r130, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r18, r131, r2
.Ltmp456:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp457:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp458:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp459:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp460:
LBB3_40:                                ; %if.end1233.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 16
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then1178.10
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(10)
	mul_f32 r1, r124, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r125, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r126, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r16, r127, r2
.Ltmp461:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp462:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp463:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp464:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp465:
LBB3_42:                                ; %if.end1233.10
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 32
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r16, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then1178.11
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(11)
	mul_f32 r1, r120, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r121, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r122, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r20, r123, r2
.Ltmp466:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp467:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp468:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp469:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp470:
LBB3_44:                                ; %if.end1233.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 48
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r32, r1, 2, s10
	shl_b64 r20, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r32, 0x0, r18 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then1178.12
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(12)
	mul_f32 r1, r116, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r117, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r118, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r18, r119, r2
.Ltmp471:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp472:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp473:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp474:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp475:
LBB3_46:                                ; %if.end1233.12
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, r0, 64
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r18, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r18, 0x0, r20 devc
	shl_b64 r20, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then1178.13
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(13)
	mul_f32 r1, r112, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r113, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r114, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r34, r115, r2
.Ltmp476:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp477:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r20_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp478:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp479:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r21_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp480:
LBB3_48:                                ; %if.end1233.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, 0x50, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r34, r1, 2, s10
	shl_b64 r36, 0, 0
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 0
	stg_b64 r34, 0x0, r20 devc
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1178.14
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(14)
	mul_f32 r1, r108, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r109, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r110, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r20, r111, r2
.Ltmp481:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp482:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp483:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp484:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp485:
LBB3_50:                                ; %if.end1233.14
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r1, 0x60, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r20, r1, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r20, 0x0, r36 devc
	shl_b64 r36, 0, 0
	.loc	2 339 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:339:9
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then1178.15
	.loc	2 344 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:344:22
	arrive gvmcnt(15)
	mul_f32 r1, r104, r2
	.loc	2 345 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:345:22
	mul_f32 r3, r105, r2
	.loc	2 346 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:346:22
	mul_f32 r5, r106, r2
	.loc	2 347 22                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:347:22
	mul_f32 r38, r107, r2
.Ltmp486:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp488:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp489:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r38
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp490:
LBB3_52:                                ; %if.end1233.15
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 355 211 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:211
	or_b32 r0, 0x70, r0
	.loc	2 355 22 is_stmt 0              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:22
	mad_i32 r0, r0, 2, s10
	.loc	2 355 254                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:355:254
	snop 1
	stg_b64 r0, 0x0, r36 devc
	.loc	2 359 9 is_stmt 1               ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.end1344.1.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r36, 0, 0
	snop 1
	stg_b64 r6, 0x100, r36 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB3_54:                                ; %Flow556
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r36, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1283
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	arrive gvmcnt(16)
	mul_f32 r36, r102, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r37, r103, r4
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r100, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r101, r4
.Ltmp491:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp492:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r38_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp493:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_lo, r36
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp494:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r39_hi, r37
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp495:
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r6, 0x100, r38 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r96, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r97, r4
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r6, r98, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r99, r4
.Ltmp496:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp497:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp498:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp499:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp500:
LBB3_56:                                ; %if.end1344.1
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r22, 0x100, r36 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_58
; %bb.57:                               ; %if.end1344.3.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB3_58:                                ; %Flow555
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_60
; %bb.59:                               ; %if.then1283.2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	arrive gvmcnt(17)
	mul_f32 r6, r94, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r95, r4
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r92, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r93, r4
.Ltmp501:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp502:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp503:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp504:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp505:
	.loc	2 366 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	snop 0
	mul_f32 r7, r90, r4
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r88, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r89, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r8, r91, r4
.Ltmp506:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp507:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp508:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp509:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp510:
LBB3_60:                                ; %if.end1344.3
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.end1344.5.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB3_62:                                ; %Flow554
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then1283.4
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	arrive gvmcnt(18)
	mul_f32 r6, r86, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r87, r4
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r84, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r85, r4
.Ltmp511:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp512:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp513:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp514:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp515:
	.loc	2 366 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	snop 0
	mul_f32 r7, r82, r4
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r80, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r81, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r8, r83, r4
.Ltmp516:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp517:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp518:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp519:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp520:
LBB3_64:                                ; %if.end1344.5
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_66
; %bb.65:                               ; %if.end1344.7.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB3_66:                                ; %Flow553
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1283.6
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	arrive gvmcnt(19)
	mul_f32 r6, r78, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r79, r4
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r76, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r77, r4
.Ltmp521:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp522:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp523:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp524:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp525:
	.loc	2 366 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	snop 0
	mul_f32 r7, r74, r4
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r72, r4
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r5, r73, r4
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r4, r75, r4
.Ltmp526:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp527:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp528:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp529:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp530:
LBB3_68:                                ; %if.end1344.7
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.end1344.9.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB3_70:                                ; %Flow551
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_72
; %bb.71:                               ; %if.then1283.8
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r4, r69, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r5, r70, r2
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r68, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r6, r71, r2
.Ltmp531:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp532:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp533:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp534:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp535:
	.loc	2 365 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	snop 0
	mul_f32 r5, r65, r2
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r64, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r6, r66, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r67, r2
.Ltmp536:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp537:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp538:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp539:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp540:
LBB3_72:                                ; %if.end1344.9
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.end1344.11.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB3_74:                                ; %Flow550
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_76
; %bb.75:                               ; %if.then1283.10
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r4, r61, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r5, r62, r2
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r60, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r6, r63, r2
.Ltmp541:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp542:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp543:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp544:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp545:
	.loc	2 365 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	snop 0
	mul_f32 r5, r57, r2
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r56, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r6, r58, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r59, r2
.Ltmp546:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp547:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp548:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp549:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp550:
LBB3_76:                                ; %if.end1344.11
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB3_78
; %bb.77:                               ; %if.end1344.13.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r18, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_18
LBB3_78:                                ; %Flow549
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then1283.12
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r4, r53, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r5, r54, r2
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r52, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r6, r55, r2
.Ltmp551:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp552:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp553:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp554:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp555:
	.loc	2 365 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	snop 0
	mul_f32 r5, r49, r2
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r48, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r6, r50, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r7, r51, r2
.Ltmp556:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp557:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp558:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp559:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp560:
LBB3_80:                                ; %if.end1344.13
	.loc	6 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
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
	.loc	2 0 9 is_stmt 0                 ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 377 1                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:377:1
	snop 0
	endk
LBB3_83:                                ; %if.end1344.15.critedge
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r20, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_20
	.loc	2 359 9                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:359:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB3_82
LBB3_84:                                ; %if.then1283.14
	.loc	2 365 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	mul_f32 r4, r45, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r5, r46, r2
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r44, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r6, r47, r2
.Ltmp561:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp562:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp563:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp564:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp565:
	.loc	2 365 24 is_stmt 1              ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:365:24
	snop 0
	mul_f32 r5, r41, r2
	.loc	2 375 262                       ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 364 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:364:24
	mul_f32 r3, r40, r2
	.loc	2 366 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:366:24
	mul_f32 r6, r42, r2
	.loc	2 367 24                        ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:367:24
	mul_f32 r2, r43, r2
.Ltmp566:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp567:
	.loc	6 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp568:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp569:
	.loc	6 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp570:
	.loc	2 375 262 is_stmt 1             ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:375:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 377 1                         ; /tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp:377:1
	snop 0
	endk
.Ltmp571:
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
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x433 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x5a:0x162 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x6b:0x19 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	79                              ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x77:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	19                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x84:0x19 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	77                              ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x90:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	19                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x9d:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp37                         ; DW_AT_low_pc
	.long	.Ltmp38-.Ltmp37                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xb1:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp37                         ; DW_AT_low_pc
	.long	.Ltmp38-.Ltmp37                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xc6:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp39                         ; DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	119                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xda:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp39                         ; DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xef:0x19 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	124                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xfb:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	19                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x108:0x19 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	122                             ; DW_AT_call_line
	.byte	11                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x114:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	19                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x121:0xc DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	157                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x12d:0xc DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	156                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x139:0xc DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	155                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x145:0xc DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x151:0x35 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	180                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x15d:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x16a:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x177:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x186:0x35 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x192:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x19f:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1ac:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1bc:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1c2:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1c8:0x275 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	6                               ; Abbrev [6] 0x1d9:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp379                        ; DW_AT_low_pc
	.long	.Ltmp380-.Ltmp379               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	220                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x1ed:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp379                        ; DW_AT_low_pc
	.long	.Ltmp380-.Ltmp379               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x202:0x29 DW_TAG_inlined_subroutine
	.long	444                             ; DW_AT_abstract_origin
	.quad	.Ltmp381                        ; DW_AT_low_pc
	.long	.Ltmp382-.Ltmp381               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	224                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x216:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp381                        ; DW_AT_low_pc
	.long	.Ltmp382-.Ltmp381               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x22b:0x29 DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp383                        ; DW_AT_low_pc
	.long	.Ltmp384-.Ltmp383               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	247                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x23f:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp383                        ; DW_AT_low_pc
	.long	.Ltmp384-.Ltmp383               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x254:0x29 DW_TAG_inlined_subroutine
	.long	444                             ; DW_AT_abstract_origin
	.quad	.Ltmp385                        ; DW_AT_low_pc
	.long	.Ltmp386-.Ltmp385               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	250                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x268:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp385                        ; DW_AT_low_pc
	.long	.Ltmp386-.Ltmp385               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x27d:0x19 DW_TAG_inlined_subroutine
	.long	444                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	255                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x289:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x296:0xc DW_TAG_inlined_subroutine
	.long	450                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	253                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x2a2:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp393                        ; DW_AT_low_pc
	.long	.Ltmp394-.Ltmp393               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	273                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2b7:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp393                        ; DW_AT_low_pc
	.long	.Ltmp394-.Ltmp393               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2cc:0x1a DW_TAG_inlined_subroutine
	.long	444                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	275                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2d9:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x2e6:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp405                        ; DW_AT_low_pc
	.long	.Ltmp406-.Ltmp405               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	299                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x2fb:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp405                        ; DW_AT_low_pc
	.long	.Ltmp406-.Ltmp405               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x310:0x2a DW_TAG_inlined_subroutine
	.long	444                             ; DW_AT_abstract_origin
	.quad	.Ltmp407                        ; DW_AT_low_pc
	.long	.Ltmp408-.Ltmp407               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	302                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x325:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp407                        ; DW_AT_low_pc
	.long	.Ltmp408-.Ltmp407               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	30                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x33a:0x2a DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.quad	.Ltmp409                        ; DW_AT_low_pc
	.long	.Ltmp410-.Ltmp409               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	322                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x34f:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp409                        ; DW_AT_low_pc
	.long	.Ltmp410-.Ltmp409               ; DW_AT_high_pc
	.byte	4                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x364:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	348                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x371:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x37e:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x38b:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x39a:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	349                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3a7:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3b4:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3c1:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3d0:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	368                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3dd:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ea:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3f7:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x406:0x36 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	369                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x413:0x28 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x420:0xd DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	6                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x42d:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
	.quad	0
	.quad	0
.Ldebug_ranges17:
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
	.quad	0
	.quad	0
.Ldebug_ranges18:
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
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
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
.Ldebug_ranges35:
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
.Ldebug_ranges36:
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
.Ldebug_ranges37:
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
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
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
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
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v040_codegen_fixed_case1/v040_fixed_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=100
.Linfo_string3:
	.asciz	"continuous_pipeline_memcpy_async<16UL>" ; string offset=121
.Linfo_string4:
	.asciz	"moe_continuous_memcpy_async_16" ; string offset=160
.Linfo_string5:
	.asciz	"__barrier"                     ; string offset=191
.Linfo_string6:
	.asciz	"__syncthreads"                 ; string offset=201
.Linfo_string7:
	.asciz	"exp2f"                         ; string offset=215
.Linfo_string8:
	.asciz	"__float2half_rn"               ; string offset=221
.Linfo_string9:
	.asciz	"__floats2half2_rn"             ; string offset=237
.Linfo_string10:
	.asciz	"__float22half2_rn"             ; string offset=255
.Linfo_string11:
	.asciz	"moe_select_memcpy_async_16"    ; string offset=273
.Linfo_string12:
	.asciz	"moe_memcpy_sync_16"            ; string offset=300
.Linfo_string13:
	.asciz	"kernel_kernel"                 ; string offset=319
.Linfo_string14:
	.asciz	"kernel_kernel_1"               ; string offset=333
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
    .mtreg_count:    204
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    28
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
