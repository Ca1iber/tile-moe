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
