; ModuleID = '/root/tilelang-metax/race_tests/moe/restart-rep/v004_step2_router_weight_register_reuse_sc-16g/codegen/v004_step2_router_weight_register_reuse_sc-16g_case2_optimized_device.mcir'
source_filename = "/root/tilelang-metax/race_tests/moe/restart-rep/v004_step2_router_weight_register_reuse_sc-16g/codegen/v004_step2_router_weight_register_reuse_sc-16g_case2_generated_device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.__half = type { i16 }
%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }

@buf_dyn_shmem = external protected local_unnamed_addr addrspace(3) global [0 x i8], align 1024
@routed_expert_down_shared = external protected local_unnamed_addr addrspace(3) global [0 x %struct.__half], align 1024
@mcDeviceMemoryInfo = weak protected addrspace(1) externally_initialized global [1 x %struct.mcDevMallocInfo.0] zeroinitializer, align 8
@llvm.compiler.used = appending addrspace(1) global [1 x ptr] [ptr addrspacecast (ptr addrspace(1) @mcDeviceMemoryInfo to ptr)], section "llvm.metadata"

; Function Attrs: mustprogress noreturn nounwind
define weak void @__cxa_pure_virtual() local_unnamed_addr #0 !dbg !5 {
entry:
  tail call void @llvm.trap(), !dbg !9
  unreachable, !dbg !10
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: mustprogress noreturn nounwind
define weak void @__cxa_deleted_virtual() local_unnamed_addr #0 !dbg !11 {
entry:
  tail call void @llvm.trap(), !dbg !12
  unreachable, !dbg !13
}

; Function Attrs: nounwind
define weak protected void @__mcImplicitDeviceSynchronize() local_unnamed_addr #2 !dbg !14 {
entry:
  %0 = tail call ptr addrspace(4) @llvm.mxc.implicitarg.ptr(), !dbg !16
  %arrayidx.i.i = getelementptr inbounds i8, ptr addrspace(4) %0, i64 32, !dbg !16
  %1 = load i64, ptr addrspace(4) %arrayidx.i.i, align 8, !dbg !16, !tbaa !17
  %2 = inttoptr i64 %1 to ptr, !dbg !16
  %arrayidx.i32.i = getelementptr inbounds i8, ptr addrspace(4) %0, i64 40, !dbg !16
  %3 = load i64, ptr addrspace(4) %arrayidx.i32.i, align 8, !dbg !16, !tbaa !17
  %4 = inttoptr i64 %3 to ptr, !dbg !16
  %current_counter.i = getelementptr inbounds i8, ptr %4, i64 12, !dbg !16
  %thread_counter.i = getelementptr inbounds i8, ptr %4, i64 16, !dbg !16
  %5 = load ptr, ptr %thread_counter.i, align 8, !dbg !16, !tbaa !21
  %cmp.not.i = icmp eq ptr %5, null, !dbg !16
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !16

if.then.i:                                        ; preds = %entry
  %6 = tail call align 4 dereferenceable(64) ptr addrspace(4) @llvm.mxc.dispatch.ptr(), !dbg !16
  %7 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 12, !dbg !16
  %8 = load i32, ptr addrspace(4) %7, align 4, !dbg !16, !range !28, !invariant.load !8
  %9 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 4, !dbg !16
  %10 = load i32, ptr addrspace(4) %9, align 4, !dbg !16, !invariant.load !8
  %conv.i14.i.i = and i32 %10, 65535, !dbg !16
  %div.i15.i.i = udiv i32 %8, %conv.i14.i.i, !dbg !16
  %mul.i16.i.i = mul i32 %div.i15.i.i, %conv.i14.i.i, !dbg !16
  %cmp.i17.i.i = icmp ugt i32 %8, %mul.i16.i.i, !dbg !16
  %conv2.i18.i.i = zext i1 %cmp.i17.i.i to i32, !dbg !16
  %add.i19.i.i = add nuw i32 %div.i15.i.i, %conv2.i18.i.i, !dbg !16
  %11 = getelementptr inbounds i8, ptr addrspace(4) %6, i64 16, !dbg !16
  %12 = load i32, ptr addrspace(4) %11, align 4, !dbg !16, !range !28, !invariant.load !8
  %13 = lshr i32 %10, 16, !dbg !16
  %div.i.i.i = udiv i32 %12, %13, !dbg !16
  %mul.i.i.i = mul i32 %div.i.i.i, %13, !dbg !16
  %cmp.i.i.i = icmp ugt i32 %12, %mul.i.i.i, !dbg !16
  %conv2.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !16
  %add.i.i.i = add nuw i32 %div.i.i.i, %conv2.i.i.i, !dbg !16
  %14 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.z(), !dbg !16, !range !29
  %mul.i.i = mul i32 %add.i.i.i, %14, !dbg !16
  %15 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !16, !range !29
  %mul320.i.i = add i32 %mul.i.i, %15, !dbg !16
  %add.i.i = mul i32 %mul320.i.i, %add.i19.i.i, !dbg !16
  %16 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !16, !range !29
  %add8.i.i = add i32 %add.i.i, %16, !dbg !16
  %conv.i.i = zext i32 %add8.i.i to i64, !dbg !16
  %arrayidx.i = getelementptr inbounds i32, ptr %5, i64 %conv.i.i, !dbg !16
  %17 = tail call i1 @llvm.mxc.is.private(ptr nonnull %arrayidx.i), !dbg !16
  br label %while.cond.i, !dbg !16

while.cond.i:                                     ; preds = %while.body.i, %if.then.i
  br i1 %17, label %if.then.i.i, label %if.end.i.i, !dbg !16

if.then.i.i:                                      ; preds = %while.cond.i
  %18 = load i32, ptr %arrayidx.i, align 4, !dbg !16, !tbaa !30
  br label %_Z9atomicAddPii.exit.i, !dbg !16

if.end.i.i:                                       ; preds = %while.cond.i
  %19 = atomicrmw or ptr %arrayidx.i, i32 0 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %_Z9atomicAddPii.exit.i, !dbg !16

_Z9atomicAddPii.exit.i:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %18, %if.then.i.i ], [ %19, %if.end.i.i ], !dbg !16
  %cmp6.i = icmp sgt i32 %retval.0.i.i, 0, !dbg !16
  br i1 %cmp6.i, label %while.body.i, label %if.end.i, !dbg !16

while.body.i:                                     ; preds = %_Z9atomicAddPii.exit.i
  tail call void @llvm.mxc.sleep(i32 1), !dbg !16
  br label %while.cond.i, !dbg !16, !llvm.loop !31

if.end.i:                                         ; preds = %_Z9atomicAddPii.exit.i, %entry
  %20 = tail call i1 @llvm.mxc.is.private(ptr nonnull %current_counter.i), !dbg !16
  br i1 %20, label %if.then.i36.i, label %if.end.i34.i, !dbg !16

if.then.i36.i:                                    ; preds = %if.end.i
  %21 = load i32, ptr %current_counter.i, align 4, !dbg !16, !tbaa !30
  %add.i37.i = add nsw i32 %21, -1, !dbg !16
  store i32 %add.i37.i, ptr %current_counter.i, align 4, !dbg !16, !tbaa !30
  br label %_Z9atomicAddPii.exit38.i, !dbg !16

if.end.i34.i:                                     ; preds = %if.end.i
  %22 = atomicrmw add ptr %current_counter.i, i32 -1 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %_Z9atomicAddPii.exit38.i, !dbg !16

_Z9atomicAddPii.exit38.i:                         ; preds = %if.end.i34.i, %if.then.i36.i
  %retval.0.i35.i = phi i32 [ %21, %if.then.i36.i ], [ %22, %if.end.i34.i ], !dbg !16
  fence syncscope("device") seq_cst, !dbg !16
  %call_deep.i = getelementptr inbounds i8, ptr %4, i64 4, !dbg !16
  %23 = load i32, ptr %call_deep.i, align 4, !dbg !16, !tbaa !33
  %cmp8.i = icmp eq i32 %23, 0, !dbg !16
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i, !dbg !16

if.then9.i:                                       ; preds = %_Z9atomicAddPii.exit38.i
  %cmp10.i = icmp slt i32 %retval.0.i35.i, 2, !dbg !16
  br i1 %cmp10.i, label %if.then11.i, label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.then11.i:                                      ; preds = %if.then9.i
  tail call void @llvm.mxc.sleep(i32 30), !dbg !16
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.else.i:                                        ; preds = %_Z9atomicAddPii.exit38.i
  %parent_wrap13.i = getelementptr inbounds i8, ptr %4, i64 24, !dbg !16
  %24 = load ptr, ptr %parent_wrap13.i, align 8, !dbg !16, !tbaa !34
  %25 = load i32, ptr %4, align 8, !dbg !16, !tbaa !35
  %thread_counter15.i = getelementptr inbounds i8, ptr %24, i64 16, !dbg !16
  %26 = load ptr, ptr %thread_counter15.i, align 8, !dbg !16, !tbaa !21
  %idxprom.i = zext i32 %25 to i64, !dbg !16
  %arrayidx16.i = getelementptr inbounds i32, ptr %26, i64 %idxprom.i, !dbg !16
  %cmp17.i = icmp slt i32 %retval.0.i35.i, 2, !dbg !16
  br i1 %cmp17.i, label %if.then18.i, label %if.end20.i, !dbg !16

if.then18.i:                                      ; preds = %if.else.i
  %mqlwrap_slots.i = getelementptr inbounds i8, ptr %2, i64 24, !dbg !16
  %27 = load ptr, ptr %mqlwrap_slots.i, align 8, !dbg !16, !tbaa !36
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i64, !dbg !16
  %sub.ptr.sub.i = sub i64 %3, %sub.ptr.rhs.cast.i, !dbg !16
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 96, !dbg !16
  %mqlwrap_slot_mask.i = getelementptr inbounds i8, ptr %2, i64 80, !dbg !16
  %28 = load i64, ptr %mqlwrap_slot_mask.i, align 8, !dbg !16, !tbaa !38
  %29 = inttoptr i64 %28 to ptr, !dbg !16
  %idx.ext.i.i = and i64 %sub.ptr.div.i, 4294967295, !dbg !16
  %add.ptr.i.i = getelementptr inbounds i32, ptr %29, i64 %idx.ext.i.i, !dbg !16
  %30 = tail call i1 @llvm.mxc.is.private(ptr %add.ptr.i.i), !dbg !16
  br i1 %30, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !16

if.then.i.i.i:                                    ; preds = %if.then18.i
  %31 = load i32, ptr %add.ptr.i.i, align 4, !dbg !16, !tbaa !30
  %and.i.i.i = and i32 %31, 2147483647, !dbg !16
  store i32 %and.i.i.i, ptr %add.ptr.i.i, align 4, !dbg !16, !tbaa !30
  br label %if.end20.i, !dbg !16

if.end.i.i.i:                                     ; preds = %if.then18.i
  %32 = atomicrmw and ptr %add.ptr.i.i, i32 2147483647 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %if.end20.i, !dbg !16

if.end20.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.i, %if.else.i
  %33 = tail call i1 @llvm.mxc.is.private(ptr %arrayidx16.i), !dbg !16
  br i1 %33, label %if.then.i41.i, label %if.end.i39.i, !dbg !16

if.then.i41.i:                                    ; preds = %if.end20.i
  %34 = load i32, ptr %arrayidx16.i, align 4, !dbg !16, !tbaa !30
  %add.i42.i = add nsw i32 %34, -1, !dbg !16
  store i32 %add.i42.i, ptr %arrayidx16.i, align 4, !dbg !16, !tbaa !30
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

if.end.i39.i:                                     ; preds = %if.end20.i
  %35 = atomicrmw add ptr %arrayidx16.i, i32 -1 syncscope("device-one-as") monotonic, align 4, !dbg !16
  br label %__mcImplicitDeviceSynchronizeImpl.exit, !dbg !16

__mcImplicitDeviceSynchronizeImpl.exit:           ; preds = %if.then9.i, %if.then11.i, %if.then.i41.i, %if.end.i39.i
  ret void, !dbg !39
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected metaxgpu_kernel void @kernel_kernel(ptr addrspace(1) noalias nocapture noundef readonly %group_idx_for_bx.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_offsets.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_padded_offsets.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_sizes.coerce, ptr addrspace(4) noalias nocapture noundef readonly %input.coerce, ptr addrspace(4) noalias nocapture noundef readonly %routed_expert_gate.coerce, ptr addrspace(4) noalias nocapture noundef readonly %routed_expert_up.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %up_logits.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !42, !range !29
  %idxprom = zext nneg i32 %0 to i64, !dbg !46
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %group_idx_for_bx.coerce, i64 %idxprom, !dbg !46
  %1 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !46, !tbaa !30
  %idxprom9 = sext i32 %1 to i64, !dbg !47
  %arrayidx10 = getelementptr inbounds i32, ptr addrspace(1) %group_sizes.coerce, i64 %idxprom9, !dbg !47
  %2 = load i32, ptr addrspace(1) %arrayidx10, align 4, !dbg !47, !tbaa !30
  %mul = shl nsw i32 %0, 7, !dbg !48
  %arrayidx13 = getelementptr inbounds i32, ptr addrspace(1) %group_offsets.coerce, i64 %idxprom9, !dbg !49
  %3 = load i32, ptr addrspace(1) %arrayidx13, align 4, !dbg !49, !tbaa !30
  %arrayidx15 = getelementptr inbounds i32, ptr addrspace(1) %group_padded_offsets.coerce, i64 %idxprom9, !dbg !50
  %4 = load i32, ptr addrspace(1) %arrayidx15, align 4, !dbg !50, !tbaa !30
  %add18 = sub i32 %2, %mul, !dbg !51
  %sub21 = add i32 %add18, %4, !dbg !52
  %add = add nsw i32 %3, %mul, !dbg !53
  %sub = sub i32 %add, %4, !dbg !54
  %mul45 = mul nsw i32 %1, 14680064
  %5 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul47 = mul nuw nsw i32 %5, 917504
  %6 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %shr = lshr i32 %6, 3
  %mul52 = mul nuw nsw i32 %shr, 7168
  %add48 = add nuw i32 %mul52, %mul47
  %and = shl nuw nsw i32 %6, 3
  %mul55 = and i32 %and, 56
  %add50 = or disjoint i32 %add48, %mul55
  %add53 = add i32 %add50, %mul45
  %mul62 = and i32 %and, 8128
  %add701214 = and i32 %and, 32
  %and651215 = add nuw nsw i32 %add701214, %6
  %mul72 = and i32 %and651215, 32
  %add801216 = and i32 %and, 16
  %and751217 = add nuw nsw i32 %add801216, %6
  %mul82 = and i32 %and751217, 16
  %and851219 = mul nuw nsw i32 %6, 9
  %mul91 = and i32 %and851219, 8
  %idx.ext57 = sext i32 %add53 to i64, !dbg !56
  %add.ptr58 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_gate.coerce, i64 %idx.ext57, !dbg !56
  %7 = or disjoint i32 %mul62, %mul72, !dbg !57
  %8 = or disjoint i32 %7, %mul82, !dbg !58
  %9 = or disjoint i32 %8, %mul91, !dbg !59
  %add.ptr94 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %9, !dbg !60
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr58, i64 16, i1 false), !dbg !61, !tbaa.struct !62, !call_argsrelate !63
  %add56.1 = add i32 %add53, 229376, !dbg !64
  %idx.ext57.1 = sext i32 %add56.1 to i64, !dbg !56
  %add.ptr58.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_gate.coerce, i64 %idx.ext57.1, !dbg !56
  %10 = add nuw nsw i32 %mul62, 2048, !dbg !65
  %11 = or disjoint i32 %10, %mul72, !dbg !57
  %12 = or disjoint i32 %11, %mul82, !dbg !58
  %13 = or disjoint i32 %12, %mul91, !dbg !59
  %add.ptr94.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %13, !dbg !60
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr58.1, i64 16, i1 false), !dbg !61, !tbaa.struct !62, !call_argsrelate !63
  %add56.2 = add i32 %add53, 458752, !dbg !64
  %idx.ext57.2 = sext i32 %add56.2 to i64, !dbg !56
  %add.ptr58.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_gate.coerce, i64 %idx.ext57.2, !dbg !56
  %14 = add nuw nsw i32 %mul62, 4096, !dbg !65
  %15 = or disjoint i32 %14, %mul72, !dbg !57
  %16 = or disjoint i32 %15, %mul82, !dbg !58
  %17 = or disjoint i32 %16, %mul91, !dbg !59
  %add.ptr94.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %17, !dbg !60
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr58.2, i64 16, i1 false), !dbg !61, !tbaa.struct !62, !call_argsrelate !63
  %add56.3 = add i32 %add53, 688128, !dbg !64
  %idx.ext57.3 = sext i32 %add56.3 to i64, !dbg !56
  %add.ptr58.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_gate.coerce, i64 %idx.ext57.3, !dbg !56
  %narrow = add nuw nsw i32 %mul62, 6144, !dbg !65
  %18 = or disjoint i32 %narrow, %mul72, !dbg !57
  %19 = or disjoint i32 %18, %mul82, !dbg !58
  %20 = or disjoint i32 %19, %mul91, !dbg !59
  %add.ptr94.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %20, !dbg !60
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr58.3, i64 16, i1 false), !dbg !61, !tbaa.struct !62, !call_argsrelate !63
  %add.ptr118 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_up.coerce, i64 %idx.ext57, !dbg !66
  %gep = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %9, !dbg !67
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr118, i64 16, i1 false), !dbg !68, !tbaa.struct !62, !call_argsrelate !69
  %add.ptr118.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_up.coerce, i64 %idx.ext57.1, !dbg !66
  %gep.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %13, !dbg !67
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr118.1, i64 16, i1 false), !dbg !68, !tbaa.struct !62, !call_argsrelate !69
  %add.ptr118.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_up.coerce, i64 %idx.ext57.2, !dbg !66
  %gep.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %17, !dbg !67
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr118.2, i64 16, i1 false), !dbg !68, !tbaa.struct !62, !call_argsrelate !69
  %add.ptr118.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_up.coerce, i64 %idx.ext57.3, !dbg !66
  %gep.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) getelementptr inbounds (i8, ptr addrspace(3) @buf_dyn_shmem, i32 16384), i32 %20, !dbg !67
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr118.3, i64 16, i1 false), !dbg !68, !tbaa.struct !62, !call_argsrelate !69
  %21 = lshr i32 %6, 1
  %mul170 = and i32 %21, 480
  %and176 = and i32 %6, 15
  %add173 = or disjoint i32 %mul170, %and176
  %add174 = add i32 %add173, %sub
  %22 = lshr i32 %6, 6
  %narrow1206 = mul nuw nsw i32 %22, 229376
  %conv197 = sext i32 %sub to i64
  %mul198 = mul nsw i64 %conv197, 7168
  %narrow1207 = mul nuw nsw i32 %and176, 7168
  %narrow1319 = add nuw nsw i32 %narrow1207, %narrow1206
  %add196 = zext nneg i32 %narrow1319 to i64
  %add199 = add nsw i64 %mul198, %add196
  %23 = and i32 %21, 24
  %mul216 = zext nneg i32 %23 to i64
  %invariant.gep = getelementptr %struct.__half, ptr addrspace(4) %input.coerce, i64 %mul216
  %and256 = shl nuw nsw i32 %6, 6
  %mul257 = and i32 %and256, 960
  %and260 = lshr i32 %6, 2
  %and267 = lshr i32 %6, 5
  %add272 = add nuw nsw i32 %and267, %21
  %and273 = shl nuw nsw i32 %add272, 4
  %mul274 = and i32 %and273, 16
  %and277 = lshr i32 %6, 4
  %add281 = add nuw nsw i32 %and277, %6
  %and282 = shl nuw nsw i32 %add281, 3
  %mul283 = and i32 %and282, 8
  %invariant.gep1297 = getelementptr i8, ptr addrspace(4) %routed_expert_gate.coerce, i64 128
  %invariant.gep1300 = getelementptr i8, ptr addrspace(4) %routed_expert_up.coerce, i64 128
  %or.cond = icmp ult i32 %add174, 4544
  %add177.1 = add i32 %add174, 16
  %or.cond.1 = icmp ult i32 %add177.1, 4544
  %and263 = shl nuw nsw i32 %and260, 5
  %mul264 = and i32 %and263, 32
  %add265 = or disjoint i32 %mul257, %mul264
  %add275 = or disjoint i32 %add265, %mul274
  %add284 = or disjoint i32 %add275, %mul283
  %add.ptr286 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284
  %expert_weight_local.sroa.26.0.add.ptr286.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 8
  %add258.1 = or disjoint i32 %mul257, 1024
  %add265.1 = or disjoint i32 %add258.1, %mul264
  %add275.1 = or disjoint i32 %add265.1, %mul274
  %add284.1 = or disjoint i32 %add275.1, %mul283
  %add.ptr286.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.1
  %expert_weight_local.sroa.66.16.add.ptr286.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 8
  %add258.2 = or disjoint i32 %mul257, 2048
  %add265.2 = or disjoint i32 %add258.2, %mul264
  %add275.2 = or disjoint i32 %add265.2, %mul274
  %add284.2 = or disjoint i32 %add275.2, %mul283
  %add.ptr286.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.2
  %expert_weight_local.sroa.106.32.add.ptr286.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 8
  %add258.3 = or disjoint i32 %mul257, 3072
  %add265.3 = or disjoint i32 %add258.3, %mul264
  %add275.3 = or disjoint i32 %add265.3, %mul274
  %add284.3 = or disjoint i32 %add275.3, %mul283
  %add.ptr286.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.3
  %expert_weight_local.sroa.146.48.add.ptr286.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 8
  %add258.4 = or disjoint i32 %mul257, 4096
  %add265.4 = or disjoint i32 %add258.4, %mul264
  %add275.4 = or disjoint i32 %add265.4, %mul274
  %add284.4 = or disjoint i32 %add275.4, %mul283
  %add.ptr286.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.4
  %expert_weight_local.sroa.186.64.add.ptr286.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 8
  %add258.5 = or disjoint i32 %mul257, 5120
  %add265.5 = or disjoint i32 %add258.5, %mul264
  %add275.5 = or disjoint i32 %add265.5, %mul274
  %add284.5 = or disjoint i32 %add275.5, %mul283
  %add.ptr286.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.5
  %expert_weight_local.sroa.226.80.add.ptr286.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 8
  %add258.6 = or disjoint i32 %mul257, 6144
  %add265.6 = or disjoint i32 %add258.6, %mul264
  %add275.6 = or disjoint i32 %add265.6, %mul274
  %add284.6 = or disjoint i32 %add275.6, %mul283
  %add.ptr286.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.6
  %expert_weight_local.sroa.266.96.add.ptr286.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 8
  %add258.7 = or disjoint i32 %mul257, 7168
  %add265.7 = or disjoint i32 %add258.7, %mul264
  %add275.7 = or disjoint i32 %add265.7, %mul274
  %add284.7 = or disjoint i32 %add275.7, %mul283
  %add.ptr286.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.7
  %expert_weight_local.sroa.306.112.add.ptr286.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 8
  %add.ptr374 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 16384
  %expert_weight_local.sroa.26.0.add.ptr374.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 16392
  %add.ptr374.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 16384
  %expert_weight_local.sroa.66.16.add.ptr374.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 16392
  %add.ptr374.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 16384
  %expert_weight_local.sroa.106.32.add.ptr374.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 16392
  %add.ptr374.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 16384
  %expert_weight_local.sroa.146.48.add.ptr374.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 16392
  %add.ptr374.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 16384
  %expert_weight_local.sroa.186.64.add.ptr374.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 16392
  %add.ptr374.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 16384
  %expert_weight_local.sroa.226.80.add.ptr374.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 16392
  %add.ptr374.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 16384
  %expert_weight_local.sroa.266.96.add.ptr374.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 16392
  %add.ptr374.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 16384
  %expert_weight_local.sroa.306.112.add.ptr374.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 16392
  %add262.1 = shl nuw nsw i32 %and260, 5
  %24 = and i32 %add262.1, 32
  %mul264.1 = xor i32 %24, 32
  %add265.11375 = or disjoint i32 %mul257, %mul264.1
  %add275.11376 = or disjoint i32 %add265.11375, %mul274
  %add284.11377 = or disjoint i32 %add275.11376, %mul283
  %add.ptr286.11378 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.11377
  %expert_weight_local.sroa.26.0.add.ptr286.11378.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 8
  %add265.1.1 = or disjoint i32 %add258.1, %mul264.1
  %add275.1.1 = or disjoint i32 %add265.1.1, %mul274
  %add284.1.1 = or disjoint i32 %add275.1.1, %mul283
  %add.ptr286.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.1.1
  %expert_weight_local.sroa.66.16.add.ptr286.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 8
  %add265.2.1 = or disjoint i32 %add258.2, %mul264.1
  %add275.2.1 = or disjoint i32 %add265.2.1, %mul274
  %add284.2.1 = or disjoint i32 %add275.2.1, %mul283
  %add.ptr286.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.2.1
  %expert_weight_local.sroa.106.32.add.ptr286.2.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 8
  %add265.3.1 = or disjoint i32 %add258.3, %mul264.1
  %add275.3.1 = or disjoint i32 %add265.3.1, %mul274
  %add284.3.1 = or disjoint i32 %add275.3.1, %mul283
  %add.ptr286.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.3.1
  %expert_weight_local.sroa.146.48.add.ptr286.3.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 8
  %add265.4.1 = or disjoint i32 %add258.4, %mul264.1
  %add275.4.1 = or disjoint i32 %add265.4.1, %mul274
  %add284.4.1 = or disjoint i32 %add275.4.1, %mul283
  %add.ptr286.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.4.1
  %expert_weight_local.sroa.186.64.add.ptr286.4.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 8
  %add265.5.1 = or disjoint i32 %add258.5, %mul264.1
  %add275.5.1 = or disjoint i32 %add265.5.1, %mul274
  %add284.5.1 = or disjoint i32 %add275.5.1, %mul283
  %add.ptr286.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.5.1
  %expert_weight_local.sroa.226.80.add.ptr286.5.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 8
  %add265.6.1 = or disjoint i32 %add258.6, %mul264.1
  %add275.6.1 = or disjoint i32 %add265.6.1, %mul274
  %add284.6.1 = or disjoint i32 %add275.6.1, %mul283
  %add.ptr286.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.6.1
  %expert_weight_local.sroa.266.96.add.ptr286.6.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 8
  %add265.7.1 = or disjoint i32 %add258.7, %mul264.1
  %add275.7.1 = or disjoint i32 %add265.7.1, %mul274
  %add284.7.1 = or disjoint i32 %add275.7.1, %mul283
  %add.ptr286.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add284.7.1
  %expert_weight_local.sroa.306.112.add.ptr286.7.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 8
  %add.ptr374.11395 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 16384
  %expert_weight_local.sroa.26.0.add.ptr374.11395.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 16392
  %add.ptr374.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 16384
  %expert_weight_local.sroa.66.16.add.ptr374.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 16392
  %add.ptr374.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 16384
  %expert_weight_local.sroa.106.32.add.ptr374.2.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 16392
  %add.ptr374.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 16384
  %expert_weight_local.sroa.146.48.add.ptr374.3.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 16392
  %add.ptr374.4.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 16384
  %expert_weight_local.sroa.186.64.add.ptr374.4.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 16392
  %add.ptr374.5.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 16384
  %expert_weight_local.sroa.226.80.add.ptr374.5.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 16392
  %add.ptr374.6.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 16384
  %expert_weight_local.sroa.266.96.add.ptr374.6.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 16392
  %add.ptr374.7.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 16384
  %expert_weight_local.sroa.306.112.add.ptr374.7.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 16392
  br label %for.cond164.preheader, !dbg !70

for.cond164.preheader:                            ; preds = %entry, %if.end.3
  %gate_logits_local.sroa.422.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %131, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.394.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %130, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.366.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %129, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.338.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %128, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.310.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %127, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.282.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %126, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.254.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %125, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.226.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %124, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.198.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %122, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.170.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %121, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.142.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %120, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.114.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %119, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.86.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %118, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.58.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %117, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.30.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %116, %if.end.3 ], !dbg !71
  %gate_logits_local.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %115, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.362.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %163, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.338.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %162, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.314.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %161, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %160, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.266.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %159, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.242.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %158, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.218.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %157, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %156, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.170.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %155, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.146.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %154, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.122.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %153, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %152, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %151, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.50.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %150, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.26.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %149, %if.end.3 ], !dbg !71
  %up_logits_local.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %148, %if.end.3 ], !dbg !71
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end.3 ]
  %25 = shl nuw nsw i64 %indvars.iv, 6
  %add204 = add nsw i64 %add199, %25
  br i1 %or.cond, label %if.then, label %if.end, !dbg !72

for.cond556.preheader:                            ; preds = %if.end.3
  %expert_weight_local.sroa.26.0.add.ptr286.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 8
  %expert_weight_local.sroa.66.16.add.ptr286.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 8
  %expert_weight_local.sroa.106.32.add.ptr286.2.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 8
  %expert_weight_local.sroa.146.48.add.ptr286.3.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 8
  %expert_weight_local.sroa.186.64.add.ptr286.4.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 8
  %expert_weight_local.sroa.226.80.add.ptr286.5.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 8
  %expert_weight_local.sroa.266.96.add.ptr286.6.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 8
  %expert_weight_local.sroa.306.112.add.ptr286.7.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 8
  %add.ptr374.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 16384
  %expert_weight_local.sroa.26.0.add.ptr374.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286, i32 16392
  %add.ptr374.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 16384
  %expert_weight_local.sroa.66.16.add.ptr374.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1, i32 16392
  %add.ptr374.2.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 16384
  %expert_weight_local.sroa.106.32.add.ptr374.2.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2, i32 16392
  %add.ptr374.3.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 16384
  %expert_weight_local.sroa.146.48.add.ptr374.3.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3, i32 16392
  %add.ptr374.4.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 16384
  %expert_weight_local.sroa.186.64.add.ptr374.4.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4, i32 16392
  %add.ptr374.5.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 16384
  %expert_weight_local.sroa.226.80.add.ptr374.5.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5, i32 16392
  %add.ptr374.6.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 16384
  %expert_weight_local.sroa.266.96.add.ptr374.6.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6, i32 16392
  %add.ptr374.7.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 16384
  %expert_weight_local.sroa.306.112.add.ptr374.7.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7, i32 16392
  %expert_weight_local.sroa.26.0.add.ptr286.11378.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 8
  %expert_weight_local.sroa.66.16.add.ptr286.1.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 8
  %expert_weight_local.sroa.106.32.add.ptr286.2.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 8
  %expert_weight_local.sroa.146.48.add.ptr286.3.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 8
  %expert_weight_local.sroa.186.64.add.ptr286.4.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 8
  %expert_weight_local.sroa.226.80.add.ptr286.5.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 8
  %expert_weight_local.sroa.266.96.add.ptr286.6.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 8
  %expert_weight_local.sroa.306.112.add.ptr286.7.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 8
  %add.ptr374.11395.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 16384
  %expert_weight_local.sroa.26.0.add.ptr374.11395.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.11378, i32 16392
  %add.ptr374.1.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 16384
  %expert_weight_local.sroa.66.16.add.ptr374.1.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.1.1, i32 16392
  %add.ptr374.2.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 16384
  %expert_weight_local.sroa.106.32.add.ptr374.2.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.2.1, i32 16392
  %add.ptr374.3.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 16384
  %expert_weight_local.sroa.146.48.add.ptr374.3.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.3.1, i32 16392
  %add.ptr374.4.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 16384
  %expert_weight_local.sroa.186.64.add.ptr374.4.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.4.1, i32 16392
  %add.ptr374.5.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 16384
  %expert_weight_local.sroa.226.80.add.ptr374.5.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.5.1, i32 16392
  %add.ptr374.6.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 16384
  %expert_weight_local.sroa.266.96.add.ptr374.6.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.6.1, i32 16392
  %add.ptr374.7.1.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 16384
  %expert_weight_local.sroa.306.112.add.ptr374.7.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr286.7.1, i32 16392
  %add5941326 = or disjoint i32 %narrow1319, %23
  %add594 = zext nneg i32 %add5941326 to i64
  %add599 = add nsw i64 %mul198, %add594
  br i1 %or.cond, label %if.then583, label %if.end635, !dbg !73

if.then:                                          ; preds = %for.cond164.preheader
  %gep1287 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add204, !dbg !74
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1287, align 16, !dbg !75, !tbaa !30
  %condval.sroa.5.0.add.ptr218.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1287, i64 4, !dbg !75
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr218.sroa_idx, align 4, !dbg !75, !tbaa !30
  %condval.sroa.6.0.add.ptr218.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1287, i64 8, !dbg !75
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr218.sroa_idx, align 8, !dbg !75, !tbaa !30
  %condval.sroa.7.0.add.ptr218.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1287, i64 12, !dbg !75
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr218.sroa_idx, align 4, !dbg !75, !tbaa !30
  br label %if.end, !dbg !76

if.end:                                           ; preds = %for.cond164.preheader, %if.then
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then ], [ 0, %for.cond164.preheader ], !dbg !71
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then ], [ 0, %for.cond164.preheader ], !dbg !71
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then ], [ 0, %for.cond164.preheader ], !dbg !71
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then ], [ 0, %for.cond164.preheader ], !dbg !71
  %input_shared.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0, i64 0, !dbg !77
  %input_shared.sroa.0.4.vec.insert = insertelement <2 x i32> %input_shared.sroa.0.0.vec.insert, i32 %condval.sroa.5.0, i64 1, !dbg !77
  %input_shared.sroa.10.8.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0, i64 0, !dbg !77
  %input_shared.sroa.10.12.vec.insert = insertelement <2 x i32> %input_shared.sroa.10.8.vec.insert, i32 %condval.sroa.7.0, i64 1, !dbg !77
  br i1 %or.cond.1, label %if.then.1, label %if.end.1, !dbg !72

if.then.1:                                        ; preds = %if.end
  %26 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add204, !dbg !74
  %gep1287.1 = getelementptr i8, ptr addrspace(4) %26, i64 229376, !dbg !74
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1287.1, align 16, !dbg !75, !tbaa !30
  %condval.sroa.5.0.add.ptr218.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %26, i64 229380, !dbg !75
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr218.sroa_idx.1, align 4, !dbg !75, !tbaa !30
  %condval.sroa.6.0.add.ptr218.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %26, i64 229384, !dbg !75
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr218.sroa_idx.1, align 8, !dbg !75, !tbaa !30
  %condval.sroa.7.0.add.ptr218.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %26, i64 229388, !dbg !75
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr218.sroa_idx.1, align 4, !dbg !75, !tbaa !30
  br label %if.end.1, !dbg !76

if.end.1:                                         ; preds = %if.then.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !71
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !71
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !71
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !71
  %input_shared.sroa.18.16.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.1, i64 0, !dbg !77
  %input_shared.sroa.18.20.vec.insert = insertelement <2 x i32> %input_shared.sroa.18.16.vec.insert, i32 %condval.sroa.5.0.1, i64 1, !dbg !77
  %input_shared.sroa.26.24.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.1, i64 0, !dbg !77
  %input_shared.sroa.26.28.vec.insert = insertelement <2 x i32> %input_shared.sroa.26.24.vec.insert, i32 %condval.sroa.7.0.1, i64 1, !dbg !77
  br i1 %or.cond, label %if.then.2, label %if.end.2, !dbg !72

if.then.2:                                        ; preds = %if.end.1
  %add211.2 = or disjoint i64 %add204, 32, !dbg !78
  %gep1287.2 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add211.2, !dbg !74
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1287.2, align 16, !dbg !75, !tbaa !30
  %condval.sroa.5.0.add.ptr218.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1287.2, i64 4, !dbg !75
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr218.sroa_idx.2, align 4, !dbg !75, !tbaa !30
  %condval.sroa.6.0.add.ptr218.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1287.2, i64 8, !dbg !75
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr218.sroa_idx.2, align 8, !dbg !75, !tbaa !30
  %condval.sroa.7.0.add.ptr218.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1287.2, i64 12, !dbg !75
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr218.sroa_idx.2, align 4, !dbg !75, !tbaa !30
  br label %if.end.2, !dbg !76

if.end.2:                                         ; preds = %if.then.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !71
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !71
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !71
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !71
  %input_shared.sroa.34.32.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.2, i64 0, !dbg !77
  %input_shared.sroa.34.36.vec.insert = insertelement <2 x i32> %input_shared.sroa.34.32.vec.insert, i32 %condval.sroa.5.0.2, i64 1, !dbg !77
  %input_shared.sroa.42.40.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.2, i64 0, !dbg !77
  %input_shared.sroa.42.44.vec.insert = insertelement <2 x i32> %input_shared.sroa.42.40.vec.insert, i32 %condval.sroa.7.0.2, i64 1, !dbg !77
  br i1 %or.cond.1, label %if.then.3, label %if.end.3, !dbg !72

if.then.3:                                        ; preds = %if.end.2
  %27 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add204, !dbg !74
  %gep1287.3 = getelementptr i8, ptr addrspace(4) %27, i64 229440, !dbg !74
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1287.3, align 16, !dbg !75, !tbaa !30
  %condval.sroa.5.0.add.ptr218.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %27, i64 229444, !dbg !75
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr218.sroa_idx.3, align 4, !dbg !75, !tbaa !30
  %condval.sroa.6.0.add.ptr218.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %27, i64 229448, !dbg !75
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr218.sroa_idx.3, align 8, !dbg !75, !tbaa !30
  %condval.sroa.7.0.add.ptr218.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %27, i64 229452, !dbg !75
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr218.sroa_idx.3, align 4, !dbg !75, !tbaa !30
  br label %if.end.3, !dbg !76

if.end.3:                                         ; preds = %if.then.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !71
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !71
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !71
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !71
  %input_shared.sroa.50.48.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.3, i64 0, !dbg !77
  %input_shared.sroa.50.52.vec.insert = insertelement <2 x i32> %input_shared.sroa.50.48.vec.insert, i32 %condval.sroa.5.0.3, i64 1, !dbg !77
  %input_shared.sroa.58.56.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.3, i64 0, !dbg !77
  %input_shared.sroa.58.60.vec.insert = insertelement <2 x i32> %input_shared.sroa.58.56.vec.insert, i32 %condval.sroa.7.0.3, i64 1, !dbg !77
  fence syncscope("block") release, !dbg !79
  tail call void @llvm.mxc.barrier(), !dbg !85
  fence syncscope("block") acquire, !dbg !86
  %expert_weight_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286, align 16, !dbg !87
  %expert_weight_local.sroa.26.0.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr286.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.42.16.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.1, align 16, !dbg !87
  %expert_weight_local.sroa.66.16.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr286.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.82.32.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.2, align 16, !dbg !87
  %expert_weight_local.sroa.106.32.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr286.2.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.122.48.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.3, align 16, !dbg !87
  %expert_weight_local.sroa.146.48.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr286.3.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.162.64.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.4, align 16, !dbg !87
  %expert_weight_local.sroa.186.64.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr286.4.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.202.80.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.5, align 16, !dbg !87
  %expert_weight_local.sroa.226.80.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr286.5.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.242.96.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.6, align 16, !dbg !87
  %expert_weight_local.sroa.266.96.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr286.6.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.282.112.copyload = load <4 x half>, ptr addrspace(3) %add.ptr286.7, align 16, !dbg !87
  %expert_weight_local.sroa.306.112.copyload = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr286.7.sroa_idx, align 8, !dbg !87
  %28 = bitcast <2 x i32> %input_shared.sroa.0.4.vec.insert to <4 x half>
  %29 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.0.0), !dbg !88
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.30.0), !dbg !88
  %31 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.58.0), !dbg !88
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.86.0), !dbg !88
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.114.0), !dbg !88
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.142.0), !dbg !88
  %35 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.170.0), !dbg !88
  %36 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload, <4 x half> %28, <4 x float> %gate_logits_local.sroa.198.0), !dbg !88
  %37 = bitcast <2 x i32> %input_shared.sroa.18.20.vec.insert to <4 x half>
  %38 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.226.0), !dbg !88
  %39 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.254.0), !dbg !88
  %40 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.282.0), !dbg !88
  %41 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.310.0), !dbg !88
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.338.0), !dbg !88
  %43 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.366.0), !dbg !88
  %44 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.394.0), !dbg !88
  %45 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload, <4 x half> %37, <4 x float> %gate_logits_local.sroa.422.0), !dbg !88
  %46 = bitcast <2 x i32> %input_shared.sroa.10.12.vec.insert to <4 x half>
  %47 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload, <4 x half> %46, <4 x float> %29), !dbg !88
  %48 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload, <4 x half> %46, <4 x float> %30), !dbg !88
  %49 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload, <4 x half> %46, <4 x float> %31), !dbg !88
  %50 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload, <4 x half> %46, <4 x float> %32), !dbg !88
  %51 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload, <4 x half> %46, <4 x float> %33), !dbg !88
  %52 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload, <4 x half> %46, <4 x float> %34), !dbg !88
  %53 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload, <4 x half> %46, <4 x float> %35), !dbg !88
  %54 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload, <4 x half> %46, <4 x float> %36), !dbg !88
  %55 = bitcast <2 x i32> %input_shared.sroa.26.28.vec.insert to <4 x half>
  %56 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload, <4 x half> %55, <4 x float> %38), !dbg !88
  %57 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload, <4 x half> %55, <4 x float> %39), !dbg !88
  %58 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload, <4 x half> %55, <4 x float> %40), !dbg !88
  %59 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload, <4 x half> %55, <4 x float> %41), !dbg !88
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload, <4 x half> %55, <4 x float> %42), !dbg !88
  %61 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload, <4 x half> %55, <4 x float> %43), !dbg !88
  %62 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload, <4 x half> %55, <4 x float> %44), !dbg !88
  %63 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload, <4 x half> %55, <4 x float> %45), !dbg !88
  %expert_weight_local.sroa.0.0.copyload1513 = load <4 x half>, ptr addrspace(3) %add.ptr374, align 16, !dbg !89
  %expert_weight_local.sroa.26.0.copyload1520 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr374.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.42.16.copyload1557 = load <4 x half>, ptr addrspace(3) %add.ptr374.1, align 16, !dbg !89
  %expert_weight_local.sroa.66.16.copyload1564 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr374.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.82.32.copyload1601 = load <4 x half>, ptr addrspace(3) %add.ptr374.2, align 16, !dbg !89
  %expert_weight_local.sroa.106.32.copyload1608 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr374.2.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.122.48.copyload1645 = load <4 x half>, ptr addrspace(3) %add.ptr374.3, align 16, !dbg !89
  %expert_weight_local.sroa.146.48.copyload1652 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr374.3.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.162.64.copyload1689 = load <4 x half>, ptr addrspace(3) %add.ptr374.4, align 16, !dbg !89
  %expert_weight_local.sroa.186.64.copyload1696 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr374.4.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.202.80.copyload1733 = load <4 x half>, ptr addrspace(3) %add.ptr374.5, align 16, !dbg !89
  %expert_weight_local.sroa.226.80.copyload1740 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr374.5.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.242.96.copyload1777 = load <4 x half>, ptr addrspace(3) %add.ptr374.6, align 16, !dbg !89
  %expert_weight_local.sroa.266.96.copyload1784 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr374.6.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.282.112.copyload1821 = load <4 x half>, ptr addrspace(3) %add.ptr374.7, align 16, !dbg !89
  %expert_weight_local.sroa.306.112.copyload1828 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr374.7.sroa_idx, align 8, !dbg !89
  %64 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1513, <4 x half> %28, <4 x float> %up_logits_local.sroa.0.0), !dbg !90
  %65 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1557, <4 x half> %28, <4 x float> %up_logits_local.sroa.26.0), !dbg !90
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1601, <4 x half> %28, <4 x float> %up_logits_local.sroa.50.0), !dbg !90
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1645, <4 x half> %28, <4 x float> %up_logits_local.sroa.74.0), !dbg !90
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1689, <4 x half> %28, <4 x float> %up_logits_local.sroa.98.0), !dbg !90
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1733, <4 x half> %28, <4 x float> %up_logits_local.sroa.122.0), !dbg !90
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1777, <4 x half> %28, <4 x float> %up_logits_local.sroa.146.0), !dbg !90
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1821, <4 x half> %28, <4 x float> %up_logits_local.sroa.170.0), !dbg !90
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1513, <4 x half> %37, <4 x float> %up_logits_local.sroa.194.0), !dbg !90
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1557, <4 x half> %37, <4 x float> %up_logits_local.sroa.218.0), !dbg !90
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1601, <4 x half> %37, <4 x float> %up_logits_local.sroa.242.0), !dbg !90
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1645, <4 x half> %37, <4 x float> %up_logits_local.sroa.266.0), !dbg !90
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1689, <4 x half> %37, <4 x float> %up_logits_local.sroa.290.0), !dbg !90
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1733, <4 x half> %37, <4 x float> %up_logits_local.sroa.314.0), !dbg !90
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1777, <4 x half> %37, <4 x float> %up_logits_local.sroa.338.0), !dbg !90
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1821, <4 x half> %37, <4 x float> %up_logits_local.sroa.362.0), !dbg !90
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1520, <4 x half> %46, <4 x float> %64), !dbg !90
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1564, <4 x half> %46, <4 x float> %65), !dbg !90
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1608, <4 x half> %46, <4 x float> %66), !dbg !90
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1652, <4 x half> %46, <4 x float> %67), !dbg !90
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1696, <4 x half> %46, <4 x float> %68), !dbg !90
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1740, <4 x half> %46, <4 x float> %69), !dbg !90
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1784, <4 x half> %46, <4 x float> %70), !dbg !90
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1828, <4 x half> %46, <4 x float> %71), !dbg !90
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1520, <4 x half> %55, <4 x float> %72), !dbg !90
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1564, <4 x half> %55, <4 x float> %73), !dbg !90
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1608, <4 x half> %55, <4 x float> %74), !dbg !90
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1652, <4 x half> %55, <4 x float> %75), !dbg !90
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1696, <4 x half> %55, <4 x float> %76), !dbg !90
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1740, <4 x half> %55, <4 x float> %77), !dbg !90
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1784, <4 x half> %55, <4 x float> %78), !dbg !90
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1828, <4 x half> %55, <4 x float> %79), !dbg !90
  %expert_weight_local.sroa.0.0.copyload1514 = load <4 x half>, ptr addrspace(3) %add.ptr286.11378, align 16, !dbg !87
  %expert_weight_local.sroa.26.0.copyload1521 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr286.11378.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.42.16.copyload1558 = load <4 x half>, ptr addrspace(3) %add.ptr286.1.1, align 16, !dbg !87
  %expert_weight_local.sroa.66.16.copyload1565 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr286.1.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.82.32.copyload1602 = load <4 x half>, ptr addrspace(3) %add.ptr286.2.1, align 16, !dbg !87
  %expert_weight_local.sroa.106.32.copyload1609 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr286.2.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.122.48.copyload1646 = load <4 x half>, ptr addrspace(3) %add.ptr286.3.1, align 16, !dbg !87
  %expert_weight_local.sroa.146.48.copyload1653 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr286.3.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.162.64.copyload1690 = load <4 x half>, ptr addrspace(3) %add.ptr286.4.1, align 16, !dbg !87
  %expert_weight_local.sroa.186.64.copyload1697 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr286.4.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.202.80.copyload1734 = load <4 x half>, ptr addrspace(3) %add.ptr286.5.1, align 16, !dbg !87
  %expert_weight_local.sroa.226.80.copyload1741 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr286.5.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.242.96.copyload1778 = load <4 x half>, ptr addrspace(3) %add.ptr286.6.1, align 16, !dbg !87
  %expert_weight_local.sroa.266.96.copyload1785 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr286.6.1.sroa_idx, align 8, !dbg !87
  %expert_weight_local.sroa.282.112.copyload1822 = load <4 x half>, ptr addrspace(3) %add.ptr286.7.1, align 16, !dbg !87
  %expert_weight_local.sroa.306.112.copyload1829 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr286.7.1.sroa_idx, align 8, !dbg !87
  %96 = bitcast <2 x i32> %input_shared.sroa.34.36.vec.insert to <4 x half>
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1514, <4 x half> %96, <4 x float> %47), !dbg !88
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1558, <4 x half> %96, <4 x float> %48), !dbg !88
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1602, <4 x half> %96, <4 x float> %49), !dbg !88
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1646, <4 x half> %96, <4 x float> %50), !dbg !88
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1690, <4 x half> %96, <4 x float> %51), !dbg !88
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1734, <4 x half> %96, <4 x float> %52), !dbg !88
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1778, <4 x half> %96, <4 x float> %53), !dbg !88
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1822, <4 x half> %96, <4 x float> %54), !dbg !88
  %105 = bitcast <2 x i32> %input_shared.sroa.50.52.vec.insert to <4 x half>
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1514, <4 x half> %105, <4 x float> %56), !dbg !88
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1558, <4 x half> %105, <4 x float> %57), !dbg !88
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1602, <4 x half> %105, <4 x float> %58), !dbg !88
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1646, <4 x half> %105, <4 x float> %59), !dbg !88
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1690, <4 x half> %105, <4 x float> %60), !dbg !88
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1734, <4 x half> %105, <4 x float> %61), !dbg !88
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1778, <4 x half> %105, <4 x float> %62), !dbg !88
  %113 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1822, <4 x half> %105, <4 x float> %63), !dbg !88
  %114 = bitcast <2 x i32> %input_shared.sroa.42.44.vec.insert to <4 x half>
  %115 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1521, <4 x half> %114, <4 x float> %97), !dbg !88
  %116 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1565, <4 x half> %114, <4 x float> %98), !dbg !88
  %117 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1609, <4 x half> %114, <4 x float> %99), !dbg !88
  %118 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1653, <4 x half> %114, <4 x float> %100), !dbg !88
  %119 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1697, <4 x half> %114, <4 x float> %101), !dbg !88
  %120 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1741, <4 x half> %114, <4 x float> %102), !dbg !88
  %121 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1785, <4 x half> %114, <4 x float> %103), !dbg !88
  %122 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1829, <4 x half> %114, <4 x float> %104), !dbg !88
  %123 = bitcast <2 x i32> %input_shared.sroa.58.60.vec.insert to <4 x half>
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1521, <4 x half> %123, <4 x float> %106), !dbg !88
  %125 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1565, <4 x half> %123, <4 x float> %107), !dbg !88
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1609, <4 x half> %123, <4 x float> %108), !dbg !88
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1653, <4 x half> %123, <4 x float> %109), !dbg !88
  %128 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1697, <4 x half> %123, <4 x float> %110), !dbg !88
  %129 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1741, <4 x half> %123, <4 x float> %111), !dbg !88
  %130 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1785, <4 x half> %123, <4 x float> %112), !dbg !88
  %131 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1829, <4 x half> %123, <4 x float> %113), !dbg !88
  %expert_weight_local.sroa.0.0.copyload1515 = load <4 x half>, ptr addrspace(3) %add.ptr374.11395, align 16, !dbg !89
  %expert_weight_local.sroa.26.0.copyload1522 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr374.11395.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.42.16.copyload1559 = load <4 x half>, ptr addrspace(3) %add.ptr374.1.1, align 16, !dbg !89
  %expert_weight_local.sroa.66.16.copyload1566 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr374.1.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.82.32.copyload1603 = load <4 x half>, ptr addrspace(3) %add.ptr374.2.1, align 16, !dbg !89
  %expert_weight_local.sroa.106.32.copyload1610 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr374.2.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.122.48.copyload1647 = load <4 x half>, ptr addrspace(3) %add.ptr374.3.1, align 16, !dbg !89
  %expert_weight_local.sroa.146.48.copyload1654 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr374.3.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.162.64.copyload1691 = load <4 x half>, ptr addrspace(3) %add.ptr374.4.1, align 16, !dbg !89
  %expert_weight_local.sroa.186.64.copyload1698 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr374.4.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.202.80.copyload1735 = load <4 x half>, ptr addrspace(3) %add.ptr374.5.1, align 16, !dbg !89
  %expert_weight_local.sroa.226.80.copyload1742 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr374.5.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.242.96.copyload1779 = load <4 x half>, ptr addrspace(3) %add.ptr374.6.1, align 16, !dbg !89
  %expert_weight_local.sroa.266.96.copyload1786 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr374.6.1.sroa_idx, align 8, !dbg !89
  %expert_weight_local.sroa.282.112.copyload1823 = load <4 x half>, ptr addrspace(3) %add.ptr374.7.1, align 16, !dbg !89
  %expert_weight_local.sroa.306.112.copyload1830 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr374.7.1.sroa_idx, align 8, !dbg !89
  %132 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1515, <4 x half> %96, <4 x float> %80), !dbg !90
  %133 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1559, <4 x half> %96, <4 x float> %81), !dbg !90
  %134 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1603, <4 x half> %96, <4 x float> %82), !dbg !90
  %135 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1647, <4 x half> %96, <4 x float> %83), !dbg !90
  %136 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1691, <4 x half> %96, <4 x float> %84), !dbg !90
  %137 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1735, <4 x half> %96, <4 x float> %85), !dbg !90
  %138 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1779, <4 x half> %96, <4 x float> %86), !dbg !90
  %139 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1823, <4 x half> %96, <4 x float> %87), !dbg !90
  %140 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1515, <4 x half> %105, <4 x float> %88), !dbg !90
  %141 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1559, <4 x half> %105, <4 x float> %89), !dbg !90
  %142 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1603, <4 x half> %105, <4 x float> %90), !dbg !90
  %143 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1647, <4 x half> %105, <4 x float> %91), !dbg !90
  %144 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1691, <4 x half> %105, <4 x float> %92), !dbg !90
  %145 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1735, <4 x half> %105, <4 x float> %93), !dbg !90
  %146 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1779, <4 x half> %105, <4 x float> %94), !dbg !90
  %147 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1823, <4 x half> %105, <4 x float> %95), !dbg !90
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1522, <4 x half> %114, <4 x float> %132), !dbg !90
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1566, <4 x half> %114, <4 x float> %133), !dbg !90
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1610, <4 x half> %114, <4 x float> %134), !dbg !90
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1654, <4 x half> %114, <4 x float> %135), !dbg !90
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1698, <4 x half> %114, <4 x float> %136), !dbg !90
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1742, <4 x half> %114, <4 x float> %137), !dbg !90
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1786, <4 x half> %114, <4 x float> %138), !dbg !90
  %155 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1830, <4 x half> %114, <4 x float> %139), !dbg !90
  %156 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1522, <4 x half> %123, <4 x float> %140), !dbg !90
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1566, <4 x half> %123, <4 x float> %141), !dbg !90
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1610, <4 x half> %123, <4 x float> %142), !dbg !90
  %159 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1654, <4 x half> %123, <4 x float> %143), !dbg !90
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1698, <4 x half> %123, <4 x float> %144), !dbg !90
  %161 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1742, <4 x half> %123, <4 x float> %145), !dbg !90
  %162 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1786, <4 x half> %123, <4 x float> %146), !dbg !90
  %163 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1830, <4 x half> %123, <4 x float> %147), !dbg !90
  fence syncscope("block") release, !dbg !91
  tail call void @llvm.mxc.barrier(), !dbg !94
  fence syncscope("block") acquire, !dbg !95
  %164 = trunc nsw i64 %25 to i32
  %add443 = add i32 %add53, %164
  %165 = sext i32 %add443 to i64, !dbg !96
  %gep1298 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1297, i64 %165, !dbg !96
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1298, i64 16, i1 false), !dbg !97, !tbaa.struct !62, !call_argsrelate !63
  %add447.1 = add i32 %add443, 229376, !dbg !98
  %166 = sext i32 %add447.1 to i64, !dbg !96
  %gep1298.1 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1297, i64 %166, !dbg !96
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1298.1, i64 16, i1 false), !dbg !97, !tbaa.struct !62, !call_argsrelate !63
  %add447.2 = add i32 %add443, 458752, !dbg !98
  %167 = sext i32 %add447.2 to i64, !dbg !96
  %gep1298.2 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1297, i64 %167, !dbg !96
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1298.2, i64 16, i1 false), !dbg !97, !tbaa.struct !62, !call_argsrelate !63
  %add447.3 = add i32 %add443, 688128, !dbg !98
  %168 = sext i32 %add447.3 to i64, !dbg !96
  %gep1298.3 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1297, i64 %168, !dbg !96
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr94.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1298.3, i64 16, i1 false), !dbg !97, !tbaa.struct !62, !call_argsrelate !63
  %gep1301 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1300, i64 %165, !dbg !99
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1301, i64 16, i1 false), !dbg !100, !tbaa.struct !62, !call_argsrelate !69
  %gep1301.1 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1300, i64 %166, !dbg !99
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1301.1, i64 16, i1 false), !dbg !100, !tbaa.struct !62, !call_argsrelate !69
  %gep1301.2 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1300, i64 %167, !dbg !99
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1301.2, i64 16, i1 false), !dbg !100, !tbaa.struct !62, !call_argsrelate !69
  %gep1301.3 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep1300, i64 %168, !dbg !99
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep1301.3, i64 16, i1 false), !dbg !100, !tbaa.struct !62, !call_argsrelate !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !101
  %exitcond.not = icmp eq i64 %indvars.iv.next, 111, !dbg !102
  br i1 %exitcond.not, label %for.cond556.preheader, label %for.cond164.preheader, !dbg !70, !llvm.loop !103

if.then583:                                       ; preds = %for.cond556.preheader
  %169 = getelementptr %struct.__half, ptr addrspace(4) %input.coerce, i64 %add599, !dbg !105
  %add.ptr611 = getelementptr i8, ptr addrspace(4) %169, i64 14208, !dbg !105
  %condval_1.sroa.0.0.copyload = load i32, ptr addrspace(4) %add.ptr611, align 16, !dbg !106, !tbaa !30
  %condval_1.sroa.5.0.add.ptr611.sroa_idx = getelementptr i8, ptr addrspace(4) %169, i64 14212, !dbg !106
  %condval_1.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr611.sroa_idx, align 4, !dbg !106, !tbaa !30
  %condval_1.sroa.6.0.add.ptr611.sroa_idx = getelementptr i8, ptr addrspace(4) %169, i64 14216, !dbg !106
  %condval_1.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr611.sroa_idx, align 8, !dbg !106, !tbaa !30
  %condval_1.sroa.7.0.add.ptr611.sroa_idx = getelementptr i8, ptr addrspace(4) %169, i64 14220, !dbg !106
  %condval_1.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr611.sroa_idx, align 4, !dbg !106, !tbaa !30
  br label %if.end635, !dbg !107

if.end635:                                        ; preds = %for.cond556.preheader, %if.then583
  %condval_1.sroa.0.0 = phi i32 [ %condval_1.sroa.0.0.copyload, %if.then583 ], [ 0, %for.cond556.preheader ], !dbg !71
  %condval_1.sroa.5.0 = phi i32 [ %condval_1.sroa.5.0.copyload, %if.then583 ], [ 0, %for.cond556.preheader ], !dbg !71
  %condval_1.sroa.6.0 = phi i32 [ %condval_1.sroa.6.0.copyload, %if.then583 ], [ 0, %for.cond556.preheader ], !dbg !71
  %condval_1.sroa.7.0 = phi i32 [ %condval_1.sroa.7.0.copyload, %if.then583 ], [ 0, %for.cond556.preheader ], !dbg !71
  %input_shared.sroa.0.0.vec.insert1855 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0, i64 0, !dbg !108
  %input_shared.sroa.0.4.vec.insert1857 = insertelement <2 x i32> %input_shared.sroa.0.0.vec.insert1855, i32 %condval_1.sroa.5.0, i64 1, !dbg !108
  %input_shared.sroa.10.8.vec.insert1863 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0, i64 0, !dbg !108
  %input_shared.sroa.10.12.vec.insert1865 = insertelement <2 x i32> %input_shared.sroa.10.8.vec.insert1863, i32 %condval_1.sroa.7.0, i64 1, !dbg !108
  br i1 %or.cond.1, label %if.then583.1, label %if.end635.1, !dbg !73

if.then583.1:                                     ; preds = %if.end635
  %170 = getelementptr %struct.__half, ptr addrspace(4) %input.coerce, i64 %add599, !dbg !105
  %add.ptr611.1 = getelementptr i8, ptr addrspace(4) %170, i64 243584, !dbg !105
  %condval_1.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr611.1, align 16, !dbg !106, !tbaa !30
  %condval_1.sroa.5.0.add.ptr611.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %170, i64 243588, !dbg !106
  %condval_1.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr611.sroa_idx.1, align 4, !dbg !106, !tbaa !30
  %condval_1.sroa.6.0.add.ptr611.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %170, i64 243592, !dbg !106
  %condval_1.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr611.sroa_idx.1, align 8, !dbg !106, !tbaa !30
  %condval_1.sroa.7.0.add.ptr611.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %170, i64 243596, !dbg !106
  %condval_1.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr611.sroa_idx.1, align 4, !dbg !106, !tbaa !30
  br label %if.end635.1, !dbg !107

if.end635.1:                                      ; preds = %if.then583.1, %if.end635
  %condval_1.sroa.0.0.1 = phi i32 [ %condval_1.sroa.0.0.copyload.1, %if.then583.1 ], [ 0, %if.end635 ], !dbg !71
  %condval_1.sroa.5.0.1 = phi i32 [ %condval_1.sroa.5.0.copyload.1, %if.then583.1 ], [ 0, %if.end635 ], !dbg !71
  %condval_1.sroa.6.0.1 = phi i32 [ %condval_1.sroa.6.0.copyload.1, %if.then583.1 ], [ 0, %if.end635 ], !dbg !71
  %condval_1.sroa.7.0.1 = phi i32 [ %condval_1.sroa.7.0.copyload.1, %if.then583.1 ], [ 0, %if.end635 ], !dbg !71
  %input_shared.sroa.18.16.vec.insert1871 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.1, i64 0, !dbg !108
  %input_shared.sroa.18.20.vec.insert1873 = insertelement <2 x i32> %input_shared.sroa.18.16.vec.insert1871, i32 %condval_1.sroa.5.0.1, i64 1, !dbg !108
  %input_shared.sroa.26.24.vec.insert1879 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.1, i64 0, !dbg !108
  %input_shared.sroa.26.28.vec.insert1881 = insertelement <2 x i32> %input_shared.sroa.26.24.vec.insert1879, i32 %condval_1.sroa.7.0.1, i64 1, !dbg !108
  br i1 %or.cond, label %if.then583.2, label %if.end635.2, !dbg !73

if.then583.2:                                     ; preds = %if.end635.1
  %add609.2 = or disjoint i64 %add599, 32, !dbg !109
  %171 = getelementptr %struct.__half, ptr addrspace(4) %input.coerce, i64 %add609.2, !dbg !105
  %add.ptr611.2 = getelementptr i8, ptr addrspace(4) %171, i64 14208, !dbg !105
  %condval_1.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr611.2, align 16, !dbg !106, !tbaa !30
  %condval_1.sroa.5.0.add.ptr611.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %171, i64 14212, !dbg !106
  %condval_1.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr611.sroa_idx.2, align 4, !dbg !106, !tbaa !30
  %condval_1.sroa.6.0.add.ptr611.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %171, i64 14216, !dbg !106
  %condval_1.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr611.sroa_idx.2, align 8, !dbg !106, !tbaa !30
  %condval_1.sroa.7.0.add.ptr611.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %171, i64 14220, !dbg !106
  %condval_1.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr611.sroa_idx.2, align 4, !dbg !106, !tbaa !30
  br label %if.end635.2, !dbg !107

if.end635.2:                                      ; preds = %if.then583.2, %if.end635.1
  %condval_1.sroa.0.0.2 = phi i32 [ %condval_1.sroa.0.0.copyload.2, %if.then583.2 ], [ 0, %if.end635.1 ], !dbg !71
  %condval_1.sroa.5.0.2 = phi i32 [ %condval_1.sroa.5.0.copyload.2, %if.then583.2 ], [ 0, %if.end635.1 ], !dbg !71
  %condval_1.sroa.6.0.2 = phi i32 [ %condval_1.sroa.6.0.copyload.2, %if.then583.2 ], [ 0, %if.end635.1 ], !dbg !71
  %condval_1.sroa.7.0.2 = phi i32 [ %condval_1.sroa.7.0.copyload.2, %if.then583.2 ], [ 0, %if.end635.1 ], !dbg !71
  %input_shared.sroa.34.32.vec.insert1887 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.2, i64 0, !dbg !108
  %input_shared.sroa.34.36.vec.insert1889 = insertelement <2 x i32> %input_shared.sroa.34.32.vec.insert1887, i32 %condval_1.sroa.5.0.2, i64 1, !dbg !108
  %input_shared.sroa.42.40.vec.insert1895 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.2, i64 0, !dbg !108
  %input_shared.sroa.42.44.vec.insert1897 = insertelement <2 x i32> %input_shared.sroa.42.40.vec.insert1895, i32 %condval_1.sroa.7.0.2, i64 1, !dbg !108
  br i1 %or.cond.1, label %if.then583.3, label %if.end635.3, !dbg !73

if.then583.3:                                     ; preds = %if.end635.2
  %172 = getelementptr %struct.__half, ptr addrspace(4) %input.coerce, i64 %add599, !dbg !105
  %add.ptr611.3 = getelementptr i8, ptr addrspace(4) %172, i64 243648, !dbg !105
  %condval_1.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr611.3, align 16, !dbg !106, !tbaa !30
  %condval_1.sroa.5.0.add.ptr611.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %172, i64 243652, !dbg !106
  %condval_1.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr611.sroa_idx.3, align 4, !dbg !106, !tbaa !30
  %condval_1.sroa.6.0.add.ptr611.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %172, i64 243656, !dbg !106
  %condval_1.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr611.sroa_idx.3, align 8, !dbg !106, !tbaa !30
  %condval_1.sroa.7.0.add.ptr611.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %172, i64 243660, !dbg !106
  %condval_1.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr611.sroa_idx.3, align 4, !dbg !106, !tbaa !30
  br label %if.end635.3, !dbg !107

if.end635.3:                                      ; preds = %if.then583.3, %if.end635.2
  %condval_1.sroa.0.0.3 = phi i32 [ %condval_1.sroa.0.0.copyload.3, %if.then583.3 ], [ 0, %if.end635.2 ], !dbg !71
  %condval_1.sroa.5.0.3 = phi i32 [ %condval_1.sroa.5.0.copyload.3, %if.then583.3 ], [ 0, %if.end635.2 ], !dbg !71
  %condval_1.sroa.6.0.3 = phi i32 [ %condval_1.sroa.6.0.copyload.3, %if.then583.3 ], [ 0, %if.end635.2 ], !dbg !71
  %condval_1.sroa.7.0.3 = phi i32 [ %condval_1.sroa.7.0.copyload.3, %if.then583.3 ], [ 0, %if.end635.2 ], !dbg !71
  %input_shared.sroa.50.48.vec.insert1903 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.3, i64 0, !dbg !108
  %input_shared.sroa.50.52.vec.insert1905 = insertelement <2 x i32> %input_shared.sroa.50.48.vec.insert1903, i32 %condval_1.sroa.5.0.3, i64 1, !dbg !108
  %input_shared.sroa.58.56.vec.insert1911 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.3, i64 0, !dbg !108
  %input_shared.sroa.58.60.vec.insert1913 = insertelement <2 x i32> %input_shared.sroa.58.56.vec.insert1911, i32 %condval_1.sroa.7.0.3, i64 1, !dbg !108
  fence syncscope("block") release, !dbg !110
  tail call void @llvm.mxc.barrier(), !dbg !113
  fence syncscope("block") acquire, !dbg !114
  %expert_weight_local.sroa.0.0.copyload1516 = load <4 x half>, ptr addrspace(3) %add.ptr286, align 16, !dbg !115
  %expert_weight_local.sroa.26.0.copyload1523 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr286.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.42.16.copyload1560 = load <4 x half>, ptr addrspace(3) %add.ptr286.1, align 16, !dbg !115
  %expert_weight_local.sroa.66.16.copyload1567 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr286.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.82.32.copyload1604 = load <4 x half>, ptr addrspace(3) %add.ptr286.2, align 16, !dbg !115
  %expert_weight_local.sroa.106.32.copyload1611 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr286.2.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.122.48.copyload1648 = load <4 x half>, ptr addrspace(3) %add.ptr286.3, align 16, !dbg !115
  %expert_weight_local.sroa.146.48.copyload1655 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr286.3.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.162.64.copyload1692 = load <4 x half>, ptr addrspace(3) %add.ptr286.4, align 16, !dbg !115
  %expert_weight_local.sroa.186.64.copyload1699 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr286.4.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.202.80.copyload1736 = load <4 x half>, ptr addrspace(3) %add.ptr286.5, align 16, !dbg !115
  %expert_weight_local.sroa.226.80.copyload1743 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr286.5.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.242.96.copyload1780 = load <4 x half>, ptr addrspace(3) %add.ptr286.6, align 16, !dbg !115
  %expert_weight_local.sroa.266.96.copyload1787 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr286.6.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.282.112.copyload1824 = load <4 x half>, ptr addrspace(3) %add.ptr286.7, align 16, !dbg !115
  %expert_weight_local.sroa.306.112.copyload1831 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr286.7.sroa_idx.le, align 8, !dbg !115
  %173 = bitcast <2 x i32> %input_shared.sroa.0.4.vec.insert1857 to <4 x half>
  %174 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1516, <4 x half> %173, <4 x float> %115), !dbg !116
  %175 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1560, <4 x half> %173, <4 x float> %116), !dbg !116
  %176 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1604, <4 x half> %173, <4 x float> %117), !dbg !116
  %177 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1648, <4 x half> %173, <4 x float> %118), !dbg !116
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1692, <4 x half> %173, <4 x float> %119), !dbg !116
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1736, <4 x half> %173, <4 x float> %120), !dbg !116
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1780, <4 x half> %173, <4 x float> %121), !dbg !116
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1824, <4 x half> %173, <4 x float> %122), !dbg !116
  %182 = bitcast <2 x i32> %input_shared.sroa.18.20.vec.insert1873 to <4 x half>
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1516, <4 x half> %182, <4 x float> %124), !dbg !116
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1560, <4 x half> %182, <4 x float> %125), !dbg !116
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1604, <4 x half> %182, <4 x float> %126), !dbg !116
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1648, <4 x half> %182, <4 x float> %127), !dbg !116
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1692, <4 x half> %182, <4 x float> %128), !dbg !116
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1736, <4 x half> %182, <4 x float> %129), !dbg !116
  %189 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1780, <4 x half> %182, <4 x float> %130), !dbg !116
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1824, <4 x half> %182, <4 x float> %131), !dbg !116
  %191 = bitcast <2 x i32> %input_shared.sroa.10.12.vec.insert1865 to <4 x half>
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1523, <4 x half> %191, <4 x float> %174), !dbg !116
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1567, <4 x half> %191, <4 x float> %175), !dbg !116
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1611, <4 x half> %191, <4 x float> %176), !dbg !116
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1655, <4 x half> %191, <4 x float> %177), !dbg !116
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1699, <4 x half> %191, <4 x float> %178), !dbg !116
  %197 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1743, <4 x half> %191, <4 x float> %179), !dbg !116
  %198 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1787, <4 x half> %191, <4 x float> %180), !dbg !116
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1831, <4 x half> %191, <4 x float> %181), !dbg !116
  %200 = bitcast <2 x i32> %input_shared.sroa.26.28.vec.insert1881 to <4 x half>
  %201 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1523, <4 x half> %200, <4 x float> %183), !dbg !116
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1567, <4 x half> %200, <4 x float> %184), !dbg !116
  %203 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1611, <4 x half> %200, <4 x float> %185), !dbg !116
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1655, <4 x half> %200, <4 x float> %186), !dbg !116
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1699, <4 x half> %200, <4 x float> %187), !dbg !116
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1743, <4 x half> %200, <4 x float> %188), !dbg !116
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1787, <4 x half> %200, <4 x float> %189), !dbg !116
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1831, <4 x half> %200, <4 x float> %190), !dbg !116
  %expert_weight_local.sroa.0.0.copyload1517 = load <4 x half>, ptr addrspace(3) %add.ptr374.le, align 16, !dbg !117
  %expert_weight_local.sroa.26.0.copyload1524 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr374.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.42.16.copyload1561 = load <4 x half>, ptr addrspace(3) %add.ptr374.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.66.16.copyload1568 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr374.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.82.32.copyload1605 = load <4 x half>, ptr addrspace(3) %add.ptr374.2.le, align 16, !dbg !117
  %expert_weight_local.sroa.106.32.copyload1612 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr374.2.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.122.48.copyload1649 = load <4 x half>, ptr addrspace(3) %add.ptr374.3.le, align 16, !dbg !117
  %expert_weight_local.sroa.146.48.copyload1656 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr374.3.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.162.64.copyload1693 = load <4 x half>, ptr addrspace(3) %add.ptr374.4.le, align 16, !dbg !117
  %expert_weight_local.sroa.186.64.copyload1700 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr374.4.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.202.80.copyload1737 = load <4 x half>, ptr addrspace(3) %add.ptr374.5.le, align 16, !dbg !117
  %expert_weight_local.sroa.226.80.copyload1744 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr374.5.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.242.96.copyload1781 = load <4 x half>, ptr addrspace(3) %add.ptr374.6.le, align 16, !dbg !117
  %expert_weight_local.sroa.266.96.copyload1788 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr374.6.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.282.112.copyload1825 = load <4 x half>, ptr addrspace(3) %add.ptr374.7.le, align 16, !dbg !117
  %expert_weight_local.sroa.306.112.copyload1832 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr374.7.sroa_idx.le, align 8, !dbg !117
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1517, <4 x half> %173, <4 x float> %148), !dbg !118
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1561, <4 x half> %173, <4 x float> %149), !dbg !118
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1605, <4 x half> %173, <4 x float> %150), !dbg !118
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1649, <4 x half> %173, <4 x float> %151), !dbg !118
  %213 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1693, <4 x half> %173, <4 x float> %152), !dbg !118
  %214 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1737, <4 x half> %173, <4 x float> %153), !dbg !118
  %215 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1781, <4 x half> %173, <4 x float> %154), !dbg !118
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1825, <4 x half> %173, <4 x float> %155), !dbg !118
  %217 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1517, <4 x half> %182, <4 x float> %156), !dbg !118
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1561, <4 x half> %182, <4 x float> %157), !dbg !118
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1605, <4 x half> %182, <4 x float> %158), !dbg !118
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1649, <4 x half> %182, <4 x float> %159), !dbg !118
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1693, <4 x half> %182, <4 x float> %160), !dbg !118
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1737, <4 x half> %182, <4 x float> %161), !dbg !118
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1781, <4 x half> %182, <4 x float> %162), !dbg !118
  %224 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1825, <4 x half> %182, <4 x float> %163), !dbg !118
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1524, <4 x half> %191, <4 x float> %209), !dbg !118
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1568, <4 x half> %191, <4 x float> %210), !dbg !118
  %227 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1612, <4 x half> %191, <4 x float> %211), !dbg !118
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1656, <4 x half> %191, <4 x float> %212), !dbg !118
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1700, <4 x half> %191, <4 x float> %213), !dbg !118
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1744, <4 x half> %191, <4 x float> %214), !dbg !118
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1788, <4 x half> %191, <4 x float> %215), !dbg !118
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1832, <4 x half> %191, <4 x float> %216), !dbg !118
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1524, <4 x half> %200, <4 x float> %217), !dbg !118
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1568, <4 x half> %200, <4 x float> %218), !dbg !118
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1612, <4 x half> %200, <4 x float> %219), !dbg !118
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1656, <4 x half> %200, <4 x float> %220), !dbg !118
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1700, <4 x half> %200, <4 x float> %221), !dbg !118
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1744, <4 x half> %200, <4 x float> %222), !dbg !118
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1788, <4 x half> %200, <4 x float> %223), !dbg !118
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1832, <4 x half> %200, <4 x float> %224), !dbg !118
  %expert_weight_local.sroa.0.0.copyload1518 = load <4 x half>, ptr addrspace(3) %add.ptr286.11378, align 16, !dbg !115
  %expert_weight_local.sroa.26.0.copyload1525 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr286.11378.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.42.16.copyload1562 = load <4 x half>, ptr addrspace(3) %add.ptr286.1.1, align 16, !dbg !115
  %expert_weight_local.sroa.66.16.copyload1569 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr286.1.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.82.32.copyload1606 = load <4 x half>, ptr addrspace(3) %add.ptr286.2.1, align 16, !dbg !115
  %expert_weight_local.sroa.106.32.copyload1613 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr286.2.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.122.48.copyload1650 = load <4 x half>, ptr addrspace(3) %add.ptr286.3.1, align 16, !dbg !115
  %expert_weight_local.sroa.146.48.copyload1657 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr286.3.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.162.64.copyload1694 = load <4 x half>, ptr addrspace(3) %add.ptr286.4.1, align 16, !dbg !115
  %expert_weight_local.sroa.186.64.copyload1701 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr286.4.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.202.80.copyload1738 = load <4 x half>, ptr addrspace(3) %add.ptr286.5.1, align 16, !dbg !115
  %expert_weight_local.sroa.226.80.copyload1745 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr286.5.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.242.96.copyload1782 = load <4 x half>, ptr addrspace(3) %add.ptr286.6.1, align 16, !dbg !115
  %expert_weight_local.sroa.266.96.copyload1789 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr286.6.1.sroa_idx.le, align 8, !dbg !115
  %expert_weight_local.sroa.282.112.copyload1826 = load <4 x half>, ptr addrspace(3) %add.ptr286.7.1, align 16, !dbg !115
  %expert_weight_local.sroa.306.112.copyload1833 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr286.7.1.sroa_idx.le, align 8, !dbg !115
  %241 = bitcast <2 x i32> %input_shared.sroa.34.36.vec.insert1889 to <4 x half>
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1518, <4 x half> %241, <4 x float> %192), !dbg !116
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1562, <4 x half> %241, <4 x float> %193), !dbg !116
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1606, <4 x half> %241, <4 x float> %194), !dbg !116
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1650, <4 x half> %241, <4 x float> %195), !dbg !116
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1694, <4 x half> %241, <4 x float> %196), !dbg !116
  %247 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1738, <4 x half> %241, <4 x float> %197), !dbg !116
  %248 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1782, <4 x half> %241, <4 x float> %198), !dbg !116
  %249 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1826, <4 x half> %241, <4 x float> %199), !dbg !116
  %250 = bitcast <2 x i32> %input_shared.sroa.50.52.vec.insert1905 to <4 x half>
  %251 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1518, <4 x half> %250, <4 x float> %201), !dbg !116
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1562, <4 x half> %250, <4 x float> %202), !dbg !116
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1606, <4 x half> %250, <4 x float> %203), !dbg !116
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1650, <4 x half> %250, <4 x float> %204), !dbg !116
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1694, <4 x half> %250, <4 x float> %205), !dbg !116
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1738, <4 x half> %250, <4 x float> %206), !dbg !116
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1782, <4 x half> %250, <4 x float> %207), !dbg !116
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1826, <4 x half> %250, <4 x float> %208), !dbg !116
  %259 = bitcast <2 x i32> %input_shared.sroa.42.44.vec.insert1897 to <4 x half>
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1525, <4 x half> %259, <4 x float> %242), !dbg !116
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1569, <4 x half> %259, <4 x float> %243), !dbg !116
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1613, <4 x half> %259, <4 x float> %244), !dbg !116
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1657, <4 x half> %259, <4 x float> %245), !dbg !116
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1701, <4 x half> %259, <4 x float> %246), !dbg !116
  %265 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1745, <4 x half> %259, <4 x float> %247), !dbg !116
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1789, <4 x half> %259, <4 x float> %248), !dbg !116
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1833, <4 x half> %259, <4 x float> %249), !dbg !116
  %268 = bitcast <2 x i32> %input_shared.sroa.58.60.vec.insert1913 to <4 x half>
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1525, <4 x half> %268, <4 x float> %251), !dbg !116
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1569, <4 x half> %268, <4 x float> %252), !dbg !116
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1613, <4 x half> %268, <4 x float> %253), !dbg !116
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1657, <4 x half> %268, <4 x float> %254), !dbg !116
  %273 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1701, <4 x half> %268, <4 x float> %255), !dbg !116
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1745, <4 x half> %268, <4 x float> %256), !dbg !116
  %275 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1789, <4 x half> %268, <4 x float> %257), !dbg !116
  %276 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1833, <4 x half> %268, <4 x float> %258), !dbg !116
  %expert_weight_local.sroa.0.0.copyload1519 = load <4 x half>, ptr addrspace(3) %add.ptr374.11395.le, align 16, !dbg !117
  %expert_weight_local.sroa.26.0.copyload1526 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.26.0.add.ptr374.11395.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.42.16.copyload1563 = load <4 x half>, ptr addrspace(3) %add.ptr374.1.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.66.16.copyload1570 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.66.16.add.ptr374.1.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.82.32.copyload1607 = load <4 x half>, ptr addrspace(3) %add.ptr374.2.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.106.32.copyload1614 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.106.32.add.ptr374.2.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.122.48.copyload1651 = load <4 x half>, ptr addrspace(3) %add.ptr374.3.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.146.48.copyload1658 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.146.48.add.ptr374.3.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.162.64.copyload1695 = load <4 x half>, ptr addrspace(3) %add.ptr374.4.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.186.64.copyload1702 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.186.64.add.ptr374.4.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.202.80.copyload1739 = load <4 x half>, ptr addrspace(3) %add.ptr374.5.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.226.80.copyload1746 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.226.80.add.ptr374.5.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.242.96.copyload1783 = load <4 x half>, ptr addrspace(3) %add.ptr374.6.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.266.96.copyload1790 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.266.96.add.ptr374.6.1.sroa_idx.le, align 8, !dbg !117
  %expert_weight_local.sroa.282.112.copyload1827 = load <4 x half>, ptr addrspace(3) %add.ptr374.7.1.le, align 16, !dbg !117
  %expert_weight_local.sroa.306.112.copyload1834 = load <4 x half>, ptr addrspace(3) %expert_weight_local.sroa.306.112.add.ptr374.7.1.sroa_idx.le, align 8, !dbg !117
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1519, <4 x half> %241, <4 x float> %225), !dbg !118
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1563, <4 x half> %241, <4 x float> %226), !dbg !118
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1607, <4 x half> %241, <4 x float> %227), !dbg !118
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1651, <4 x half> %241, <4 x float> %228), !dbg !118
  %281 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1695, <4 x half> %241, <4 x float> %229), !dbg !118
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1739, <4 x half> %241, <4 x float> %230), !dbg !118
  %283 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1783, <4 x half> %241, <4 x float> %231), !dbg !118
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1827, <4 x half> %241, <4 x float> %232), !dbg !118
  %285 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.0.0.copyload1519, <4 x half> %250, <4 x float> %233), !dbg !118
  %286 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.42.16.copyload1563, <4 x half> %250, <4 x float> %234), !dbg !118
  %287 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.82.32.copyload1607, <4 x half> %250, <4 x float> %235), !dbg !118
  %288 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.122.48.copyload1651, <4 x half> %250, <4 x float> %236), !dbg !118
  %289 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.162.64.copyload1695, <4 x half> %250, <4 x float> %237), !dbg !118
  %290 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.202.80.copyload1739, <4 x half> %250, <4 x float> %238), !dbg !118
  %291 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.242.96.copyload1783, <4 x half> %250, <4 x float> %239), !dbg !118
  %292 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.282.112.copyload1827, <4 x half> %250, <4 x float> %240), !dbg !118
  %293 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1526, <4 x half> %259, <4 x float> %277), !dbg !118
  %294 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1570, <4 x half> %259, <4 x float> %278), !dbg !118
  %295 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1614, <4 x half> %259, <4 x float> %279), !dbg !118
  %296 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1658, <4 x half> %259, <4 x float> %280), !dbg !118
  %297 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1702, <4 x half> %259, <4 x float> %281), !dbg !118
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1746, <4 x half> %259, <4 x float> %282), !dbg !118
  %299 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1790, <4 x half> %259, <4 x float> %283), !dbg !118
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1834, <4 x half> %259, <4 x float> %284), !dbg !118
  %301 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.26.0.copyload1526, <4 x half> %268, <4 x float> %285), !dbg !118
  %302 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.66.16.copyload1570, <4 x half> %268, <4 x float> %286), !dbg !118
  %303 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.106.32.copyload1614, <4 x half> %268, <4 x float> %287), !dbg !118
  %304 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.146.48.copyload1658, <4 x half> %268, <4 x float> %288), !dbg !118
  %305 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.186.64.copyload1702, <4 x half> %268, <4 x float> %289), !dbg !118
  %306 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.226.80.copyload1746, <4 x half> %268, <4 x float> %290), !dbg !118
  %307 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.266.96.copyload1790, <4 x half> %268, <4 x float> %291), !dbg !118
  %308 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %expert_weight_local.sroa.306.112.copyload1834, <4 x half> %268, <4 x float> %292), !dbg !118
  %cond.i.i = tail call noundef range(i32 -2147483648, 129) i32 @llvm.smin.i32(i32 %sub21, i32 128), !dbg !119
  %309 = shl nuw nsw i32 %6, 10
  %310 = and i32 %309, 983040
  %mul1000 = zext nneg i32 %310 to i64
  %mul1006 = shl nsw i64 %conv197, 11
  %311 = shl nuw nsw i32 %6, 11
  %312 = and i32 %311, 30720
  %mul1011 = zext nneg i32 %312 to i64
  %conv1014 = zext nneg i32 %5 to i64
  %mul1015 = shl nuw nsw i64 %conv1014, 7
  %add1004 = add nuw nsw i64 %mul1015, %mul1000
  %add1007 = add nuw nsw i64 %add1004, %mul1011
  %add1012 = add nsw i64 %add1007, %mul1006
  %313 = and i32 %and260, 12
  %mul1025 = zext nneg i32 %313 to i64
  %invariant.gep1316 = getelementptr %struct.__half, ptr addrspace(1) %up_logits.coerce, i64 %mul1025, !dbg !123
  %cmp937 = icmp sgt i32 %cond.i.i, %add173, !dbg !124
  %or.cond1318 = and i1 %cmp937, %or.cond, !dbg !125
  br i1 %or.cond1318, label %if.then962, label %if.end1030, !dbg !125

if.then962:                                       ; preds = %if.end635.3
  %gate_logits_local.sroa.0.12.vec.extract = extractelement <4 x float> %260, i64 3, !dbg !126
  %mul863 = fmul contract float %gate_logits_local.sroa.0.12.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264 = fcmp contract olt float %mul863, -1.260000e+02, !dbg !128
  %cond2.i.i1267 = select contract i1 %cmp.i.i1264, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265 = select contract i1 %cmp.i.i1264, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266 = fadd contract float %mul863, %cond.i.i1265, !dbg !128
  %314 = tail call contract float @llvm.exp2.f32(float %add.i.i1266), !dbg !128
  %mul.i.i1268 = fmul contract float %cond2.i.i1267, %314, !dbg !128
  %add891 = fadd contract float %mul.i.i1268, 1.000000e+00, !dbg !131
  %div906 = fdiv contract float 1.000000e+00, %add891, !dbg !132
  %mul922 = fmul contract float %gate_logits_local.sroa.0.12.vec.extract, %div906, !dbg !133
  %gate_logits_local.sroa.0.8.vec.extract = extractelement <4 x float> %260, i64 2, !dbg !126
  %mul859 = fmul contract float %gate_logits_local.sroa.0.8.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259 = fcmp contract olt float %mul859, -1.260000e+02, !dbg !135
  %cond2.i.i1262 = select contract i1 %cmp.i.i1259, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260 = select contract i1 %cmp.i.i1259, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261 = fadd contract float %mul859, %cond.i.i1260, !dbg !135
  %315 = tail call contract float @llvm.exp2.f32(float %add.i.i1261), !dbg !135
  %mul.i.i1263 = fmul contract float %cond2.i.i1262, %315, !dbg !135
  %add887 = fadd contract float %mul.i.i1263, 1.000000e+00, !dbg !137
  %div902 = fdiv contract float 1.000000e+00, %add887, !dbg !138
  %mul918 = fmul contract float %gate_logits_local.sroa.0.8.vec.extract, %div902, !dbg !139
  %gate_logits_local.sroa.0.4.vec.extract = extractelement <4 x float> %260, i64 1, !dbg !126
  %mul855 = fmul contract float %gate_logits_local.sroa.0.4.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254 = fcmp contract olt float %mul855, -1.260000e+02, !dbg !141
  %cond2.i.i1257 = select contract i1 %cmp.i.i1254, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255 = select contract i1 %cmp.i.i1254, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256 = fadd contract float %mul855, %cond.i.i1255, !dbg !141
  %316 = tail call contract float @llvm.exp2.f32(float %add.i.i1256), !dbg !141
  %mul.i.i1258 = fmul contract float %cond2.i.i1257, %316, !dbg !141
  %add883 = fadd contract float %mul.i.i1258, 1.000000e+00, !dbg !143
  %div898 = fdiv contract float 1.000000e+00, %add883, !dbg !144
  %mul914 = fmul contract float %gate_logits_local.sroa.0.4.vec.extract, %div898, !dbg !145
  %gate_logits_local.sroa.0.0.vec.extract = extractelement <4 x float> %260, i64 0, !dbg !126
  %mul851 = fmul contract float %gate_logits_local.sroa.0.0.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i = fcmp contract olt float %mul851, -1.260000e+02, !dbg !147
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i = fadd contract float %mul851, %cond.i.i1253, !dbg !147
  %317 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !147
  %mul.i.i = fmul contract float %cond2.i.i, %317, !dbg !147
  %add879 = fadd contract float %mul.i.i, 1.000000e+00, !dbg !149
  %div = fdiv contract float 1.000000e+00, %add879, !dbg !150
  %mul910 = fmul contract float %gate_logits_local.sroa.0.0.vec.extract, %div, !dbg !151
  %up_logits_local.sroa.0.0.vec.extract = extractelement <4 x float> %293, i64 0, !dbg !152
  %up_logits_local.sroa.0.4.vec.extract = extractelement <4 x float> %293, i64 1, !dbg !152
  %up_logits_local.sroa.0.8.vec.extract = extractelement <4 x float> %293, i64 2, !dbg !152
  %up_logits_local.sroa.0.12.vec.extract = extractelement <4 x float> %293, i64 3, !dbg !152
  %mul973 = fmul contract float %mul910, %up_logits_local.sroa.0.0.vec.extract, !dbg !153
  %mul977 = fmul contract float %mul914, %up_logits_local.sroa.0.4.vec.extract, !dbg !154
  %mul981 = fmul contract float %mul918, %up_logits_local.sroa.0.8.vec.extract, !dbg !155
  %mul985 = fmul contract float %mul922, %up_logits_local.sroa.0.12.vec.extract, !dbg !156
  %318 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %319 = fptrunc float %mul973 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %318), !dbg !157, !noalias !165
  %320 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %321 = fptrunc float %mul977 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %320), !dbg !170, !noalias !165
  %322 = bitcast half %319 to i16, !dbg !172
  %323 = bitcast half %321 to i16, !dbg !175
  %324 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %325 = fptrunc float %mul981 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %324), !dbg !176, !noalias !180
  %326 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %327 = fptrunc float %mul985 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %326), !dbg !185, !noalias !180
  %328 = bitcast half %325 to i16, !dbg !187
  %329 = bitcast half %327 to i16, !dbg !189
  %gep1317 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %__7.sroa.6.0.insert.ext = zext i16 %329 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !191
  %__7.sroa.5.0.insert.ext = zext i16 %328 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !191
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !191
  %__7.sroa.4.0.insert.ext = zext i16 %323 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !191
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !191
  %__7.sroa.0.0.insert.ext = zext i16 %322 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(1) %gep1317, align 8, !dbg !191
  br label %if.end1030, !dbg !192

if.end1030:                                       ; preds = %if.then962, %if.end635.3
  br i1 %or.cond1318, label %if.then962.1, label %if.end1030.1, !dbg !125

if.then962.1:                                     ; preds = %if.end1030
  %gate_logits_local.sroa.30.28.vec.extract = extractelement <4 x float> %261, i64 3, !dbg !126
  %mul863.1 = fmul contract float %gate_logits_local.sroa.30.28.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.1 = fcmp contract olt float %mul863.1, -1.260000e+02, !dbg !128
  %cond2.i.i1267.1 = select contract i1 %cmp.i.i1264.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.1 = select contract i1 %cmp.i.i1264.1, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.1 = fadd contract float %mul863.1, %cond.i.i1265.1, !dbg !128
  %330 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.1), !dbg !128
  %mul.i.i1268.1 = fmul contract float %cond2.i.i1267.1, %330, !dbg !128
  %add891.1 = fadd contract float %mul.i.i1268.1, 1.000000e+00, !dbg !131
  %div906.1 = fdiv contract float 1.000000e+00, %add891.1, !dbg !132
  %mul922.1 = fmul contract float %gate_logits_local.sroa.30.28.vec.extract, %div906.1, !dbg !133
  %gate_logits_local.sroa.30.24.vec.extract = extractelement <4 x float> %261, i64 2, !dbg !126
  %mul859.1 = fmul contract float %gate_logits_local.sroa.30.24.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.1 = fcmp contract olt float %mul859.1, -1.260000e+02, !dbg !135
  %cond2.i.i1262.1 = select contract i1 %cmp.i.i1259.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.1 = select contract i1 %cmp.i.i1259.1, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.1 = fadd contract float %mul859.1, %cond.i.i1260.1, !dbg !135
  %331 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.1), !dbg !135
  %mul.i.i1263.1 = fmul contract float %cond2.i.i1262.1, %331, !dbg !135
  %add887.1 = fadd contract float %mul.i.i1263.1, 1.000000e+00, !dbg !137
  %div902.1 = fdiv contract float 1.000000e+00, %add887.1, !dbg !138
  %mul918.1 = fmul contract float %gate_logits_local.sroa.30.24.vec.extract, %div902.1, !dbg !139
  %gate_logits_local.sroa.30.20.vec.extract = extractelement <4 x float> %261, i64 1, !dbg !126
  %mul855.1 = fmul contract float %gate_logits_local.sroa.30.20.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.1 = fcmp contract olt float %mul855.1, -1.260000e+02, !dbg !141
  %cond2.i.i1257.1 = select contract i1 %cmp.i.i1254.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.1 = select contract i1 %cmp.i.i1254.1, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.1 = fadd contract float %mul855.1, %cond.i.i1255.1, !dbg !141
  %332 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.1), !dbg !141
  %mul.i.i1258.1 = fmul contract float %cond2.i.i1257.1, %332, !dbg !141
  %add883.1 = fadd contract float %mul.i.i1258.1, 1.000000e+00, !dbg !143
  %div898.1 = fdiv contract float 1.000000e+00, %add883.1, !dbg !144
  %mul914.1 = fmul contract float %gate_logits_local.sroa.30.20.vec.extract, %div898.1, !dbg !145
  %gate_logits_local.sroa.30.16.vec.extract = extractelement <4 x float> %261, i64 0, !dbg !126
  %mul851.1 = fmul contract float %gate_logits_local.sroa.30.16.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.1 = fcmp contract olt float %mul851.1, -1.260000e+02, !dbg !147
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.1 = fadd contract float %mul851.1, %cond.i.i1253.1, !dbg !147
  %333 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !147
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %333, !dbg !147
  %add879.1 = fadd contract float %mul.i.i.1, 1.000000e+00, !dbg !149
  %div.1 = fdiv contract float 1.000000e+00, %add879.1, !dbg !150
  %mul910.1 = fmul contract float %gate_logits_local.sroa.30.16.vec.extract, %div.1, !dbg !151
  %up_logits_local.sroa.26.16.vec.extract = extractelement <4 x float> %294, i64 0, !dbg !152
  %up_logits_local.sroa.26.20.vec.extract = extractelement <4 x float> %294, i64 1, !dbg !152
  %up_logits_local.sroa.26.24.vec.extract = extractelement <4 x float> %294, i64 2, !dbg !152
  %up_logits_local.sroa.26.28.vec.extract = extractelement <4 x float> %294, i64 3, !dbg !152
  %mul973.1 = fmul contract float %mul910.1, %up_logits_local.sroa.26.16.vec.extract, !dbg !153
  %mul977.1 = fmul contract float %mul914.1, %up_logits_local.sroa.26.20.vec.extract, !dbg !154
  %mul981.1 = fmul contract float %mul918.1, %up_logits_local.sroa.26.24.vec.extract, !dbg !155
  %mul985.1 = fmul contract float %mul922.1, %up_logits_local.sroa.26.28.vec.extract, !dbg !156
  %334 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %335 = fptrunc float %mul973.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %334), !dbg !157, !noalias !165
  %336 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %337 = fptrunc float %mul977.1 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %336), !dbg !170, !noalias !165
  %338 = bitcast half %335 to i16, !dbg !172
  %339 = bitcast half %337 to i16, !dbg !175
  %340 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %341 = fptrunc float %mul981.1 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %340), !dbg !176, !noalias !180
  %342 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %343 = fptrunc float %mul985.1 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %342), !dbg !185, !noalias !180
  %344 = bitcast half %341 to i16, !dbg !187
  %345 = bitcast half %343 to i16, !dbg !189
  %add1020.1 = or disjoint i64 %add1012, 16, !dbg !193
  %gep1317.1 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.1, !dbg !190
  %__7.sroa.6.0.insert.ext.1 = zext i16 %345 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.1 = zext i16 %344 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !191
  %__7.sroa.4.0.insert.ext.1 = zext i16 %339 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !191
  %__7.sroa.0.0.insert.ext.1 = zext i16 %338 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(1) %gep1317.1, align 8, !dbg !191
  br label %if.end1030.1, !dbg !192

if.end1030.1:                                     ; preds = %if.then962.1, %if.end1030
  br i1 %or.cond1318, label %if.then962.2, label %if.end1030.2, !dbg !125

if.then962.2:                                     ; preds = %if.end1030.1
  %gate_logits_local.sroa.58.44.vec.extract = extractelement <4 x float> %262, i64 3, !dbg !126
  %mul863.2 = fmul contract float %gate_logits_local.sroa.58.44.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.2 = fcmp contract olt float %mul863.2, -1.260000e+02, !dbg !128
  %cond2.i.i1267.2 = select contract i1 %cmp.i.i1264.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.2 = select contract i1 %cmp.i.i1264.2, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.2 = fadd contract float %mul863.2, %cond.i.i1265.2, !dbg !128
  %346 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.2), !dbg !128
  %mul.i.i1268.2 = fmul contract float %cond2.i.i1267.2, %346, !dbg !128
  %add891.2 = fadd contract float %mul.i.i1268.2, 1.000000e+00, !dbg !131
  %div906.2 = fdiv contract float 1.000000e+00, %add891.2, !dbg !132
  %mul922.2 = fmul contract float %gate_logits_local.sroa.58.44.vec.extract, %div906.2, !dbg !133
  %gate_logits_local.sroa.58.40.vec.extract = extractelement <4 x float> %262, i64 2, !dbg !126
  %mul859.2 = fmul contract float %gate_logits_local.sroa.58.40.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.2 = fcmp contract olt float %mul859.2, -1.260000e+02, !dbg !135
  %cond2.i.i1262.2 = select contract i1 %cmp.i.i1259.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.2 = select contract i1 %cmp.i.i1259.2, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.2 = fadd contract float %mul859.2, %cond.i.i1260.2, !dbg !135
  %347 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.2), !dbg !135
  %mul.i.i1263.2 = fmul contract float %cond2.i.i1262.2, %347, !dbg !135
  %add887.2 = fadd contract float %mul.i.i1263.2, 1.000000e+00, !dbg !137
  %div902.2 = fdiv contract float 1.000000e+00, %add887.2, !dbg !138
  %mul918.2 = fmul contract float %gate_logits_local.sroa.58.40.vec.extract, %div902.2, !dbg !139
  %gate_logits_local.sroa.58.36.vec.extract = extractelement <4 x float> %262, i64 1, !dbg !126
  %mul855.2 = fmul contract float %gate_logits_local.sroa.58.36.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.2 = fcmp contract olt float %mul855.2, -1.260000e+02, !dbg !141
  %cond2.i.i1257.2 = select contract i1 %cmp.i.i1254.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.2 = select contract i1 %cmp.i.i1254.2, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.2 = fadd contract float %mul855.2, %cond.i.i1255.2, !dbg !141
  %348 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.2), !dbg !141
  %mul.i.i1258.2 = fmul contract float %cond2.i.i1257.2, %348, !dbg !141
  %add883.2 = fadd contract float %mul.i.i1258.2, 1.000000e+00, !dbg !143
  %div898.2 = fdiv contract float 1.000000e+00, %add883.2, !dbg !144
  %mul914.2 = fmul contract float %gate_logits_local.sroa.58.36.vec.extract, %div898.2, !dbg !145
  %gate_logits_local.sroa.58.32.vec.extract = extractelement <4 x float> %262, i64 0, !dbg !126
  %mul851.2 = fmul contract float %gate_logits_local.sroa.58.32.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.2 = fcmp contract olt float %mul851.2, -1.260000e+02, !dbg !147
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.2 = fadd contract float %mul851.2, %cond.i.i1253.2, !dbg !147
  %349 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !147
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %349, !dbg !147
  %add879.2 = fadd contract float %mul.i.i.2, 1.000000e+00, !dbg !149
  %div.2 = fdiv contract float 1.000000e+00, %add879.2, !dbg !150
  %mul910.2 = fmul contract float %gate_logits_local.sroa.58.32.vec.extract, %div.2, !dbg !151
  %up_logits_local.sroa.50.32.vec.extract = extractelement <4 x float> %295, i64 0, !dbg !152
  %up_logits_local.sroa.50.36.vec.extract = extractelement <4 x float> %295, i64 1, !dbg !152
  %up_logits_local.sroa.50.40.vec.extract = extractelement <4 x float> %295, i64 2, !dbg !152
  %up_logits_local.sroa.50.44.vec.extract = extractelement <4 x float> %295, i64 3, !dbg !152
  %mul973.2 = fmul contract float %mul910.2, %up_logits_local.sroa.50.32.vec.extract, !dbg !153
  %mul977.2 = fmul contract float %mul914.2, %up_logits_local.sroa.50.36.vec.extract, !dbg !154
  %mul981.2 = fmul contract float %mul918.2, %up_logits_local.sroa.50.40.vec.extract, !dbg !155
  %mul985.2 = fmul contract float %mul922.2, %up_logits_local.sroa.50.44.vec.extract, !dbg !156
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %351 = fptrunc float %mul973.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !157, !noalias !165
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %353 = fptrunc float %mul977.2 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %352), !dbg !170, !noalias !165
  %354 = bitcast half %351 to i16, !dbg !172
  %355 = bitcast half %353 to i16, !dbg !175
  %356 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %357 = fptrunc float %mul981.2 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %356), !dbg !176, !noalias !180
  %358 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %359 = fptrunc float %mul985.2 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %358), !dbg !185, !noalias !180
  %360 = bitcast half %357 to i16, !dbg !187
  %361 = bitcast half %359 to i16, !dbg !189
  %add1020.2 = or disjoint i64 %add1012, 32, !dbg !193
  %gep1317.2 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.2, !dbg !190
  %__7.sroa.6.0.insert.ext.2 = zext i16 %361 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.2 = zext i16 %360 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !191
  %__7.sroa.4.0.insert.ext.2 = zext i16 %355 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !191
  %__7.sroa.0.0.insert.ext.2 = zext i16 %354 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(1) %gep1317.2, align 8, !dbg !191
  br label %if.end1030.2, !dbg !192

if.end1030.2:                                     ; preds = %if.then962.2, %if.end1030.1
  br i1 %or.cond1318, label %if.then962.3, label %if.end1030.3, !dbg !125

if.then962.3:                                     ; preds = %if.end1030.2
  %gate_logits_local.sroa.86.60.vec.extract = extractelement <4 x float> %263, i64 3, !dbg !126
  %mul863.3 = fmul contract float %gate_logits_local.sroa.86.60.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.3 = fcmp contract olt float %mul863.3, -1.260000e+02, !dbg !128
  %cond2.i.i1267.3 = select contract i1 %cmp.i.i1264.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.3 = select contract i1 %cmp.i.i1264.3, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.3 = fadd contract float %mul863.3, %cond.i.i1265.3, !dbg !128
  %362 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.3), !dbg !128
  %mul.i.i1268.3 = fmul contract float %cond2.i.i1267.3, %362, !dbg !128
  %add891.3 = fadd contract float %mul.i.i1268.3, 1.000000e+00, !dbg !131
  %div906.3 = fdiv contract float 1.000000e+00, %add891.3, !dbg !132
  %mul922.3 = fmul contract float %gate_logits_local.sroa.86.60.vec.extract, %div906.3, !dbg !133
  %gate_logits_local.sroa.86.56.vec.extract = extractelement <4 x float> %263, i64 2, !dbg !126
  %mul859.3 = fmul contract float %gate_logits_local.sroa.86.56.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.3 = fcmp contract olt float %mul859.3, -1.260000e+02, !dbg !135
  %cond2.i.i1262.3 = select contract i1 %cmp.i.i1259.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.3 = select contract i1 %cmp.i.i1259.3, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.3 = fadd contract float %mul859.3, %cond.i.i1260.3, !dbg !135
  %363 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.3), !dbg !135
  %mul.i.i1263.3 = fmul contract float %cond2.i.i1262.3, %363, !dbg !135
  %add887.3 = fadd contract float %mul.i.i1263.3, 1.000000e+00, !dbg !137
  %div902.3 = fdiv contract float 1.000000e+00, %add887.3, !dbg !138
  %mul918.3 = fmul contract float %gate_logits_local.sroa.86.56.vec.extract, %div902.3, !dbg !139
  %gate_logits_local.sroa.86.52.vec.extract = extractelement <4 x float> %263, i64 1, !dbg !126
  %mul855.3 = fmul contract float %gate_logits_local.sroa.86.52.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.3 = fcmp contract olt float %mul855.3, -1.260000e+02, !dbg !141
  %cond2.i.i1257.3 = select contract i1 %cmp.i.i1254.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.3 = select contract i1 %cmp.i.i1254.3, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.3 = fadd contract float %mul855.3, %cond.i.i1255.3, !dbg !141
  %364 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.3), !dbg !141
  %mul.i.i1258.3 = fmul contract float %cond2.i.i1257.3, %364, !dbg !141
  %add883.3 = fadd contract float %mul.i.i1258.3, 1.000000e+00, !dbg !143
  %div898.3 = fdiv contract float 1.000000e+00, %add883.3, !dbg !144
  %mul914.3 = fmul contract float %gate_logits_local.sroa.86.52.vec.extract, %div898.3, !dbg !145
  %gate_logits_local.sroa.86.48.vec.extract = extractelement <4 x float> %263, i64 0, !dbg !126
  %mul851.3 = fmul contract float %gate_logits_local.sroa.86.48.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.3 = fcmp contract olt float %mul851.3, -1.260000e+02, !dbg !147
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.3 = fadd contract float %mul851.3, %cond.i.i1253.3, !dbg !147
  %365 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !147
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %365, !dbg !147
  %add879.3 = fadd contract float %mul.i.i.3, 1.000000e+00, !dbg !149
  %div.3 = fdiv contract float 1.000000e+00, %add879.3, !dbg !150
  %mul910.3 = fmul contract float %gate_logits_local.sroa.86.48.vec.extract, %div.3, !dbg !151
  %up_logits_local.sroa.74.48.vec.extract = extractelement <4 x float> %296, i64 0, !dbg !152
  %up_logits_local.sroa.74.52.vec.extract = extractelement <4 x float> %296, i64 1, !dbg !152
  %up_logits_local.sroa.74.56.vec.extract = extractelement <4 x float> %296, i64 2, !dbg !152
  %up_logits_local.sroa.74.60.vec.extract = extractelement <4 x float> %296, i64 3, !dbg !152
  %mul973.3 = fmul contract float %mul910.3, %up_logits_local.sroa.74.48.vec.extract, !dbg !153
  %mul977.3 = fmul contract float %mul914.3, %up_logits_local.sroa.74.52.vec.extract, !dbg !154
  %mul981.3 = fmul contract float %mul918.3, %up_logits_local.sroa.74.56.vec.extract, !dbg !155
  %mul985.3 = fmul contract float %mul922.3, %up_logits_local.sroa.74.60.vec.extract, !dbg !156
  %366 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %367 = fptrunc float %mul973.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %366), !dbg !157, !noalias !165
  %368 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %369 = fptrunc float %mul977.3 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %368), !dbg !170, !noalias !165
  %370 = bitcast half %367 to i16, !dbg !172
  %371 = bitcast half %369 to i16, !dbg !175
  %372 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %373 = fptrunc float %mul981.3 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %372), !dbg !176, !noalias !180
  %374 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %375 = fptrunc float %mul985.3 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %374), !dbg !185, !noalias !180
  %376 = bitcast half %373 to i16, !dbg !187
  %377 = bitcast half %375 to i16, !dbg !189
  %add1020.3 = or disjoint i64 %add1012, 48, !dbg !193
  %gep1317.3 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.3, !dbg !190
  %__7.sroa.6.0.insert.ext.3 = zext i16 %377 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.3 = zext i16 %376 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !191
  %__7.sroa.4.0.insert.ext.3 = zext i16 %371 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !191
  %__7.sroa.0.0.insert.ext.3 = zext i16 %370 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(1) %gep1317.3, align 8, !dbg !191
  br label %if.end1030.3, !dbg !192

if.end1030.3:                                     ; preds = %if.then962.3, %if.end1030.2
  br i1 %or.cond1318, label %if.then962.4, label %if.end1030.4, !dbg !125

if.then962.4:                                     ; preds = %if.end1030.3
  %gate_logits_local.sroa.114.76.vec.extract = extractelement <4 x float> %264, i64 3, !dbg !126
  %mul863.4 = fmul contract float %gate_logits_local.sroa.114.76.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.4 = fcmp contract olt float %mul863.4, -1.260000e+02, !dbg !128
  %cond2.i.i1267.4 = select contract i1 %cmp.i.i1264.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.4 = select contract i1 %cmp.i.i1264.4, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.4 = fadd contract float %mul863.4, %cond.i.i1265.4, !dbg !128
  %378 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.4), !dbg !128
  %mul.i.i1268.4 = fmul contract float %cond2.i.i1267.4, %378, !dbg !128
  %add891.4 = fadd contract float %mul.i.i1268.4, 1.000000e+00, !dbg !131
  %div906.4 = fdiv contract float 1.000000e+00, %add891.4, !dbg !132
  %mul922.4 = fmul contract float %gate_logits_local.sroa.114.76.vec.extract, %div906.4, !dbg !133
  %gate_logits_local.sroa.114.72.vec.extract = extractelement <4 x float> %264, i64 2, !dbg !126
  %mul859.4 = fmul contract float %gate_logits_local.sroa.114.72.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.4 = fcmp contract olt float %mul859.4, -1.260000e+02, !dbg !135
  %cond2.i.i1262.4 = select contract i1 %cmp.i.i1259.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.4 = select contract i1 %cmp.i.i1259.4, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.4 = fadd contract float %mul859.4, %cond.i.i1260.4, !dbg !135
  %379 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.4), !dbg !135
  %mul.i.i1263.4 = fmul contract float %cond2.i.i1262.4, %379, !dbg !135
  %add887.4 = fadd contract float %mul.i.i1263.4, 1.000000e+00, !dbg !137
  %div902.4 = fdiv contract float 1.000000e+00, %add887.4, !dbg !138
  %mul918.4 = fmul contract float %gate_logits_local.sroa.114.72.vec.extract, %div902.4, !dbg !139
  %gate_logits_local.sroa.114.68.vec.extract = extractelement <4 x float> %264, i64 1, !dbg !126
  %mul855.4 = fmul contract float %gate_logits_local.sroa.114.68.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.4 = fcmp contract olt float %mul855.4, -1.260000e+02, !dbg !141
  %cond2.i.i1257.4 = select contract i1 %cmp.i.i1254.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.4 = select contract i1 %cmp.i.i1254.4, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.4 = fadd contract float %mul855.4, %cond.i.i1255.4, !dbg !141
  %380 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.4), !dbg !141
  %mul.i.i1258.4 = fmul contract float %cond2.i.i1257.4, %380, !dbg !141
  %add883.4 = fadd contract float %mul.i.i1258.4, 1.000000e+00, !dbg !143
  %div898.4 = fdiv contract float 1.000000e+00, %add883.4, !dbg !144
  %mul914.4 = fmul contract float %gate_logits_local.sroa.114.68.vec.extract, %div898.4, !dbg !145
  %gate_logits_local.sroa.114.64.vec.extract = extractelement <4 x float> %264, i64 0, !dbg !126
  %mul851.4 = fmul contract float %gate_logits_local.sroa.114.64.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.4 = fcmp contract olt float %mul851.4, -1.260000e+02, !dbg !147
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.4 = fadd contract float %mul851.4, %cond.i.i1253.4, !dbg !147
  %381 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !147
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %381, !dbg !147
  %add879.4 = fadd contract float %mul.i.i.4, 1.000000e+00, !dbg !149
  %div.4 = fdiv contract float 1.000000e+00, %add879.4, !dbg !150
  %mul910.4 = fmul contract float %gate_logits_local.sroa.114.64.vec.extract, %div.4, !dbg !151
  %up_logits_local.sroa.98.64.vec.extract = extractelement <4 x float> %297, i64 0, !dbg !152
  %up_logits_local.sroa.98.68.vec.extract = extractelement <4 x float> %297, i64 1, !dbg !152
  %up_logits_local.sroa.98.72.vec.extract = extractelement <4 x float> %297, i64 2, !dbg !152
  %up_logits_local.sroa.98.76.vec.extract = extractelement <4 x float> %297, i64 3, !dbg !152
  %mul973.4 = fmul contract float %mul910.4, %up_logits_local.sroa.98.64.vec.extract, !dbg !153
  %mul977.4 = fmul contract float %mul914.4, %up_logits_local.sroa.98.68.vec.extract, !dbg !154
  %mul981.4 = fmul contract float %mul918.4, %up_logits_local.sroa.98.72.vec.extract, !dbg !155
  %mul985.4 = fmul contract float %mul922.4, %up_logits_local.sroa.98.76.vec.extract, !dbg !156
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %383 = fptrunc float %mul973.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !157, !noalias !165
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %385 = fptrunc float %mul977.4 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !170, !noalias !165
  %386 = bitcast half %383 to i16, !dbg !172
  %387 = bitcast half %385 to i16, !dbg !175
  %388 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %389 = fptrunc float %mul981.4 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %388), !dbg !176, !noalias !180
  %390 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %391 = fptrunc float %mul985.4 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %390), !dbg !185, !noalias !180
  %392 = bitcast half %389 to i16, !dbg !187
  %393 = bitcast half %391 to i16, !dbg !189
  %add1020.4 = or disjoint i64 %add1012, 64, !dbg !193
  %gep1317.4 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.4, !dbg !190
  %__7.sroa.6.0.insert.ext.4 = zext i16 %393 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.4 = shl nuw i64 %__7.sroa.6.0.insert.ext.4, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.4 = zext i16 %392 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.4, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.4 = or disjoint i64 %__7.sroa.6.0.insert.shift.4, %__7.sroa.5.0.insert.shift.4, !dbg !191
  %__7.sroa.4.0.insert.ext.4 = zext i16 %387 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.4, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.4 = or disjoint i64 %__7.sroa.5.0.insert.insert.4, %__7.sroa.4.0.insert.shift.4, !dbg !191
  %__7.sroa.0.0.insert.ext.4 = zext i16 %386 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.4 = or disjoint i64 %__7.sroa.4.0.insert.insert.4, %__7.sroa.0.0.insert.ext.4, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.4, ptr addrspace(1) %gep1317.4, align 8, !dbg !191
  br label %if.end1030.4, !dbg !192

if.end1030.4:                                     ; preds = %if.then962.4, %if.end1030.3
  br i1 %or.cond1318, label %if.then962.5, label %if.end1030.5, !dbg !125

if.then962.5:                                     ; preds = %if.end1030.4
  %gate_logits_local.sroa.142.92.vec.extract = extractelement <4 x float> %265, i64 3, !dbg !126
  %mul863.5 = fmul contract float %gate_logits_local.sroa.142.92.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.5 = fcmp contract olt float %mul863.5, -1.260000e+02, !dbg !128
  %cond2.i.i1267.5 = select contract i1 %cmp.i.i1264.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.5 = select contract i1 %cmp.i.i1264.5, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.5 = fadd contract float %mul863.5, %cond.i.i1265.5, !dbg !128
  %394 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.5), !dbg !128
  %mul.i.i1268.5 = fmul contract float %cond2.i.i1267.5, %394, !dbg !128
  %add891.5 = fadd contract float %mul.i.i1268.5, 1.000000e+00, !dbg !131
  %div906.5 = fdiv contract float 1.000000e+00, %add891.5, !dbg !132
  %mul922.5 = fmul contract float %gate_logits_local.sroa.142.92.vec.extract, %div906.5, !dbg !133
  %gate_logits_local.sroa.142.88.vec.extract = extractelement <4 x float> %265, i64 2, !dbg !126
  %mul859.5 = fmul contract float %gate_logits_local.sroa.142.88.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.5 = fcmp contract olt float %mul859.5, -1.260000e+02, !dbg !135
  %cond2.i.i1262.5 = select contract i1 %cmp.i.i1259.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.5 = select contract i1 %cmp.i.i1259.5, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.5 = fadd contract float %mul859.5, %cond.i.i1260.5, !dbg !135
  %395 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.5), !dbg !135
  %mul.i.i1263.5 = fmul contract float %cond2.i.i1262.5, %395, !dbg !135
  %add887.5 = fadd contract float %mul.i.i1263.5, 1.000000e+00, !dbg !137
  %div902.5 = fdiv contract float 1.000000e+00, %add887.5, !dbg !138
  %mul918.5 = fmul contract float %gate_logits_local.sroa.142.88.vec.extract, %div902.5, !dbg !139
  %gate_logits_local.sroa.142.84.vec.extract = extractelement <4 x float> %265, i64 1, !dbg !126
  %mul855.5 = fmul contract float %gate_logits_local.sroa.142.84.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.5 = fcmp contract olt float %mul855.5, -1.260000e+02, !dbg !141
  %cond2.i.i1257.5 = select contract i1 %cmp.i.i1254.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.5 = select contract i1 %cmp.i.i1254.5, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.5 = fadd contract float %mul855.5, %cond.i.i1255.5, !dbg !141
  %396 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.5), !dbg !141
  %mul.i.i1258.5 = fmul contract float %cond2.i.i1257.5, %396, !dbg !141
  %add883.5 = fadd contract float %mul.i.i1258.5, 1.000000e+00, !dbg !143
  %div898.5 = fdiv contract float 1.000000e+00, %add883.5, !dbg !144
  %mul914.5 = fmul contract float %gate_logits_local.sroa.142.84.vec.extract, %div898.5, !dbg !145
  %gate_logits_local.sroa.142.80.vec.extract = extractelement <4 x float> %265, i64 0, !dbg !126
  %mul851.5 = fmul contract float %gate_logits_local.sroa.142.80.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.5 = fcmp contract olt float %mul851.5, -1.260000e+02, !dbg !147
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.5 = fadd contract float %mul851.5, %cond.i.i1253.5, !dbg !147
  %397 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !147
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %397, !dbg !147
  %add879.5 = fadd contract float %mul.i.i.5, 1.000000e+00, !dbg !149
  %div.5 = fdiv contract float 1.000000e+00, %add879.5, !dbg !150
  %mul910.5 = fmul contract float %gate_logits_local.sroa.142.80.vec.extract, %div.5, !dbg !151
  %up_logits_local.sroa.122.80.vec.extract = extractelement <4 x float> %298, i64 0, !dbg !152
  %up_logits_local.sroa.122.84.vec.extract = extractelement <4 x float> %298, i64 1, !dbg !152
  %up_logits_local.sroa.122.88.vec.extract = extractelement <4 x float> %298, i64 2, !dbg !152
  %up_logits_local.sroa.122.92.vec.extract = extractelement <4 x float> %298, i64 3, !dbg !152
  %mul973.5 = fmul contract float %mul910.5, %up_logits_local.sroa.122.80.vec.extract, !dbg !153
  %mul977.5 = fmul contract float %mul914.5, %up_logits_local.sroa.122.84.vec.extract, !dbg !154
  %mul981.5 = fmul contract float %mul918.5, %up_logits_local.sroa.122.88.vec.extract, !dbg !155
  %mul985.5 = fmul contract float %mul922.5, %up_logits_local.sroa.122.92.vec.extract, !dbg !156
  %398 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %399 = fptrunc float %mul973.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %398), !dbg !157, !noalias !165
  %400 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %401 = fptrunc float %mul977.5 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %400), !dbg !170, !noalias !165
  %402 = bitcast half %399 to i16, !dbg !172
  %403 = bitcast half %401 to i16, !dbg !175
  %404 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %405 = fptrunc float %mul981.5 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %404), !dbg !176, !noalias !180
  %406 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %407 = fptrunc float %mul985.5 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %406), !dbg !185, !noalias !180
  %408 = bitcast half %405 to i16, !dbg !187
  %409 = bitcast half %407 to i16, !dbg !189
  %add1020.5 = or disjoint i64 %add1012, 80, !dbg !193
  %gep1317.5 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.5, !dbg !190
  %__7.sroa.6.0.insert.ext.5 = zext i16 %409 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.5 = shl nuw i64 %__7.sroa.6.0.insert.ext.5, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.5 = zext i16 %408 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.5, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.5 = or disjoint i64 %__7.sroa.6.0.insert.shift.5, %__7.sroa.5.0.insert.shift.5, !dbg !191
  %__7.sroa.4.0.insert.ext.5 = zext i16 %403 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.5, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.5 = or disjoint i64 %__7.sroa.5.0.insert.insert.5, %__7.sroa.4.0.insert.shift.5, !dbg !191
  %__7.sroa.0.0.insert.ext.5 = zext i16 %402 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.5 = or disjoint i64 %__7.sroa.4.0.insert.insert.5, %__7.sroa.0.0.insert.ext.5, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.5, ptr addrspace(1) %gep1317.5, align 8, !dbg !191
  br label %if.end1030.5, !dbg !192

if.end1030.5:                                     ; preds = %if.then962.5, %if.end1030.4
  br i1 %or.cond1318, label %if.then962.6, label %if.end1030.6, !dbg !125

if.then962.6:                                     ; preds = %if.end1030.5
  %gate_logits_local.sroa.170.108.vec.extract = extractelement <4 x float> %266, i64 3, !dbg !126
  %mul863.6 = fmul contract float %gate_logits_local.sroa.170.108.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.6 = fcmp contract olt float %mul863.6, -1.260000e+02, !dbg !128
  %cond2.i.i1267.6 = select contract i1 %cmp.i.i1264.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.6 = select contract i1 %cmp.i.i1264.6, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.6 = fadd contract float %mul863.6, %cond.i.i1265.6, !dbg !128
  %410 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.6), !dbg !128
  %mul.i.i1268.6 = fmul contract float %cond2.i.i1267.6, %410, !dbg !128
  %add891.6 = fadd contract float %mul.i.i1268.6, 1.000000e+00, !dbg !131
  %div906.6 = fdiv contract float 1.000000e+00, %add891.6, !dbg !132
  %mul922.6 = fmul contract float %gate_logits_local.sroa.170.108.vec.extract, %div906.6, !dbg !133
  %gate_logits_local.sroa.170.104.vec.extract = extractelement <4 x float> %266, i64 2, !dbg !126
  %mul859.6 = fmul contract float %gate_logits_local.sroa.170.104.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.6 = fcmp contract olt float %mul859.6, -1.260000e+02, !dbg !135
  %cond2.i.i1262.6 = select contract i1 %cmp.i.i1259.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.6 = select contract i1 %cmp.i.i1259.6, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.6 = fadd contract float %mul859.6, %cond.i.i1260.6, !dbg !135
  %411 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.6), !dbg !135
  %mul.i.i1263.6 = fmul contract float %cond2.i.i1262.6, %411, !dbg !135
  %add887.6 = fadd contract float %mul.i.i1263.6, 1.000000e+00, !dbg !137
  %div902.6 = fdiv contract float 1.000000e+00, %add887.6, !dbg !138
  %mul918.6 = fmul contract float %gate_logits_local.sroa.170.104.vec.extract, %div902.6, !dbg !139
  %gate_logits_local.sroa.170.100.vec.extract = extractelement <4 x float> %266, i64 1, !dbg !126
  %mul855.6 = fmul contract float %gate_logits_local.sroa.170.100.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.6 = fcmp contract olt float %mul855.6, -1.260000e+02, !dbg !141
  %cond2.i.i1257.6 = select contract i1 %cmp.i.i1254.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.6 = select contract i1 %cmp.i.i1254.6, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.6 = fadd contract float %mul855.6, %cond.i.i1255.6, !dbg !141
  %412 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.6), !dbg !141
  %mul.i.i1258.6 = fmul contract float %cond2.i.i1257.6, %412, !dbg !141
  %add883.6 = fadd contract float %mul.i.i1258.6, 1.000000e+00, !dbg !143
  %div898.6 = fdiv contract float 1.000000e+00, %add883.6, !dbg !144
  %mul914.6 = fmul contract float %gate_logits_local.sroa.170.100.vec.extract, %div898.6, !dbg !145
  %gate_logits_local.sroa.170.96.vec.extract = extractelement <4 x float> %266, i64 0, !dbg !126
  %mul851.6 = fmul contract float %gate_logits_local.sroa.170.96.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.6 = fcmp contract olt float %mul851.6, -1.260000e+02, !dbg !147
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.6 = fadd contract float %mul851.6, %cond.i.i1253.6, !dbg !147
  %413 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !147
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %413, !dbg !147
  %add879.6 = fadd contract float %mul.i.i.6, 1.000000e+00, !dbg !149
  %div.6 = fdiv contract float 1.000000e+00, %add879.6, !dbg !150
  %mul910.6 = fmul contract float %gate_logits_local.sroa.170.96.vec.extract, %div.6, !dbg !151
  %up_logits_local.sroa.146.96.vec.extract = extractelement <4 x float> %299, i64 0, !dbg !152
  %up_logits_local.sroa.146.100.vec.extract = extractelement <4 x float> %299, i64 1, !dbg !152
  %up_logits_local.sroa.146.104.vec.extract = extractelement <4 x float> %299, i64 2, !dbg !152
  %up_logits_local.sroa.146.108.vec.extract = extractelement <4 x float> %299, i64 3, !dbg !152
  %mul973.6 = fmul contract float %mul910.6, %up_logits_local.sroa.146.96.vec.extract, !dbg !153
  %mul977.6 = fmul contract float %mul914.6, %up_logits_local.sroa.146.100.vec.extract, !dbg !154
  %mul981.6 = fmul contract float %mul918.6, %up_logits_local.sroa.146.104.vec.extract, !dbg !155
  %mul985.6 = fmul contract float %mul922.6, %up_logits_local.sroa.146.108.vec.extract, !dbg !156
  %414 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %415 = fptrunc float %mul973.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %414), !dbg !157, !noalias !165
  %416 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %417 = fptrunc float %mul977.6 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %416), !dbg !170, !noalias !165
  %418 = bitcast half %415 to i16, !dbg !172
  %419 = bitcast half %417 to i16, !dbg !175
  %420 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %421 = fptrunc float %mul981.6 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %420), !dbg !176, !noalias !180
  %422 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %423 = fptrunc float %mul985.6 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %422), !dbg !185, !noalias !180
  %424 = bitcast half %421 to i16, !dbg !187
  %425 = bitcast half %423 to i16, !dbg !189
  %add1020.6 = or disjoint i64 %add1012, 96, !dbg !193
  %gep1317.6 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.6, !dbg !190
  %__7.sroa.6.0.insert.ext.6 = zext i16 %425 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.6 = shl nuw i64 %__7.sroa.6.0.insert.ext.6, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.6 = zext i16 %424 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.6, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.6 = or disjoint i64 %__7.sroa.6.0.insert.shift.6, %__7.sroa.5.0.insert.shift.6, !dbg !191
  %__7.sroa.4.0.insert.ext.6 = zext i16 %419 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.6, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.6 = or disjoint i64 %__7.sroa.5.0.insert.insert.6, %__7.sroa.4.0.insert.shift.6, !dbg !191
  %__7.sroa.0.0.insert.ext.6 = zext i16 %418 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.6 = or disjoint i64 %__7.sroa.4.0.insert.insert.6, %__7.sroa.0.0.insert.ext.6, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.6, ptr addrspace(1) %gep1317.6, align 8, !dbg !191
  br label %if.end1030.6, !dbg !192

if.end1030.6:                                     ; preds = %if.then962.6, %if.end1030.5
  br i1 %or.cond1318, label %if.then962.7, label %if.end1030.7, !dbg !125

if.then962.7:                                     ; preds = %if.end1030.6
  %gate_logits_local.sroa.198.124.vec.extract = extractelement <4 x float> %267, i64 3, !dbg !126
  %mul863.7 = fmul contract float %gate_logits_local.sroa.198.124.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.7 = fcmp contract olt float %mul863.7, -1.260000e+02, !dbg !128
  %cond2.i.i1267.7 = select contract i1 %cmp.i.i1264.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.7 = select contract i1 %cmp.i.i1264.7, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.7 = fadd contract float %mul863.7, %cond.i.i1265.7, !dbg !128
  %426 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.7), !dbg !128
  %mul.i.i1268.7 = fmul contract float %cond2.i.i1267.7, %426, !dbg !128
  %add891.7 = fadd contract float %mul.i.i1268.7, 1.000000e+00, !dbg !131
  %div906.7 = fdiv contract float 1.000000e+00, %add891.7, !dbg !132
  %mul922.7 = fmul contract float %gate_logits_local.sroa.198.124.vec.extract, %div906.7, !dbg !133
  %gate_logits_local.sroa.198.120.vec.extract = extractelement <4 x float> %267, i64 2, !dbg !126
  %mul859.7 = fmul contract float %gate_logits_local.sroa.198.120.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.7 = fcmp contract olt float %mul859.7, -1.260000e+02, !dbg !135
  %cond2.i.i1262.7 = select contract i1 %cmp.i.i1259.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.7 = select contract i1 %cmp.i.i1259.7, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.7 = fadd contract float %mul859.7, %cond.i.i1260.7, !dbg !135
  %427 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.7), !dbg !135
  %mul.i.i1263.7 = fmul contract float %cond2.i.i1262.7, %427, !dbg !135
  %add887.7 = fadd contract float %mul.i.i1263.7, 1.000000e+00, !dbg !137
  %div902.7 = fdiv contract float 1.000000e+00, %add887.7, !dbg !138
  %mul918.7 = fmul contract float %gate_logits_local.sroa.198.120.vec.extract, %div902.7, !dbg !139
  %gate_logits_local.sroa.198.116.vec.extract = extractelement <4 x float> %267, i64 1, !dbg !126
  %mul855.7 = fmul contract float %gate_logits_local.sroa.198.116.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.7 = fcmp contract olt float %mul855.7, -1.260000e+02, !dbg !141
  %cond2.i.i1257.7 = select contract i1 %cmp.i.i1254.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.7 = select contract i1 %cmp.i.i1254.7, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.7 = fadd contract float %mul855.7, %cond.i.i1255.7, !dbg !141
  %428 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.7), !dbg !141
  %mul.i.i1258.7 = fmul contract float %cond2.i.i1257.7, %428, !dbg !141
  %add883.7 = fadd contract float %mul.i.i1258.7, 1.000000e+00, !dbg !143
  %div898.7 = fdiv contract float 1.000000e+00, %add883.7, !dbg !144
  %mul914.7 = fmul contract float %gate_logits_local.sroa.198.116.vec.extract, %div898.7, !dbg !145
  %gate_logits_local.sroa.198.112.vec.extract = extractelement <4 x float> %267, i64 0, !dbg !126
  %mul851.7 = fmul contract float %gate_logits_local.sroa.198.112.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.7 = fcmp contract olt float %mul851.7, -1.260000e+02, !dbg !147
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.7 = fadd contract float %mul851.7, %cond.i.i1253.7, !dbg !147
  %429 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !147
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %429, !dbg !147
  %add879.7 = fadd contract float %mul.i.i.7, 1.000000e+00, !dbg !149
  %div.7 = fdiv contract float 1.000000e+00, %add879.7, !dbg !150
  %mul910.7 = fmul contract float %gate_logits_local.sroa.198.112.vec.extract, %div.7, !dbg !151
  %up_logits_local.sroa.170.112.vec.extract = extractelement <4 x float> %300, i64 0, !dbg !152
  %up_logits_local.sroa.170.116.vec.extract = extractelement <4 x float> %300, i64 1, !dbg !152
  %up_logits_local.sroa.170.120.vec.extract = extractelement <4 x float> %300, i64 2, !dbg !152
  %up_logits_local.sroa.170.124.vec.extract = extractelement <4 x float> %300, i64 3, !dbg !152
  %mul973.7 = fmul contract float %mul910.7, %up_logits_local.sroa.170.112.vec.extract, !dbg !153
  %mul977.7 = fmul contract float %mul914.7, %up_logits_local.sroa.170.116.vec.extract, !dbg !154
  %mul981.7 = fmul contract float %mul918.7, %up_logits_local.sroa.170.120.vec.extract, !dbg !155
  %mul985.7 = fmul contract float %mul922.7, %up_logits_local.sroa.170.124.vec.extract, !dbg !156
  %430 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %431 = fptrunc float %mul973.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %430), !dbg !157, !noalias !165
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %433 = fptrunc float %mul977.7 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !170, !noalias !165
  %434 = bitcast half %431 to i16, !dbg !172
  %435 = bitcast half %433 to i16, !dbg !175
  %436 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %437 = fptrunc float %mul981.7 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %436), !dbg !176, !noalias !180
  %438 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %439 = fptrunc float %mul985.7 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %438), !dbg !185, !noalias !180
  %440 = bitcast half %437 to i16, !dbg !187
  %441 = bitcast half %439 to i16, !dbg !189
  %add1020.7 = or disjoint i64 %add1012, 112, !dbg !193
  %gep1317.7 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1020.7, !dbg !190
  %__7.sroa.6.0.insert.ext.7 = zext i16 %441 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.7 = shl nuw i64 %__7.sroa.6.0.insert.ext.7, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.7 = zext i16 %440 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.7, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.7 = or disjoint i64 %__7.sroa.6.0.insert.shift.7, %__7.sroa.5.0.insert.shift.7, !dbg !191
  %__7.sroa.4.0.insert.ext.7 = zext i16 %435 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.7, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.7 = or disjoint i64 %__7.sroa.5.0.insert.insert.7, %__7.sroa.4.0.insert.shift.7, !dbg !191
  %__7.sroa.0.0.insert.ext.7 = zext i16 %434 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.7 = or disjoint i64 %__7.sroa.4.0.insert.insert.7, %__7.sroa.0.0.insert.ext.7, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.7, ptr addrspace(1) %gep1317.7, align 8, !dbg !191
  br label %if.end1030.7, !dbg !192

if.end1030.7:                                     ; preds = %if.then962.7, %if.end1030.6
  %442 = or disjoint i32 %mul170, %and176, !dbg !194
  %add936.8 = or disjoint i32 %442, 16, !dbg !194
  %cmp937.8 = icmp sgt i32 %cond.i.i, %add936.8, !dbg !124
  %or.cond1318.8 = and i1 %cmp937.8, %or.cond.1, !dbg !125
  br i1 %or.cond1318.8, label %if.then962.8, label %if.end1030.8, !dbg !125

if.then962.8:                                     ; preds = %if.end1030.7
  %gate_logits_local.sroa.226.140.vec.extract = extractelement <4 x float> %269, i64 3, !dbg !126
  %mul863.8 = fmul contract float %gate_logits_local.sroa.226.140.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.8 = fcmp contract olt float %mul863.8, -1.260000e+02, !dbg !128
  %cond2.i.i1267.8 = select contract i1 %cmp.i.i1264.8, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.8 = select contract i1 %cmp.i.i1264.8, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.8 = fadd contract float %mul863.8, %cond.i.i1265.8, !dbg !128
  %443 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.8), !dbg !128
  %mul.i.i1268.8 = fmul contract float %cond2.i.i1267.8, %443, !dbg !128
  %add891.8 = fadd contract float %mul.i.i1268.8, 1.000000e+00, !dbg !131
  %div906.8 = fdiv contract float 1.000000e+00, %add891.8, !dbg !132
  %mul922.8 = fmul contract float %gate_logits_local.sroa.226.140.vec.extract, %div906.8, !dbg !133
  %gate_logits_local.sroa.226.136.vec.extract = extractelement <4 x float> %269, i64 2, !dbg !126
  %mul859.8 = fmul contract float %gate_logits_local.sroa.226.136.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.8 = fcmp contract olt float %mul859.8, -1.260000e+02, !dbg !135
  %cond2.i.i1262.8 = select contract i1 %cmp.i.i1259.8, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.8 = select contract i1 %cmp.i.i1259.8, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.8 = fadd contract float %mul859.8, %cond.i.i1260.8, !dbg !135
  %444 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.8), !dbg !135
  %mul.i.i1263.8 = fmul contract float %cond2.i.i1262.8, %444, !dbg !135
  %add887.8 = fadd contract float %mul.i.i1263.8, 1.000000e+00, !dbg !137
  %div902.8 = fdiv contract float 1.000000e+00, %add887.8, !dbg !138
  %mul918.8 = fmul contract float %gate_logits_local.sroa.226.136.vec.extract, %div902.8, !dbg !139
  %gate_logits_local.sroa.226.132.vec.extract = extractelement <4 x float> %269, i64 1, !dbg !126
  %mul855.8 = fmul contract float %gate_logits_local.sroa.226.132.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.8 = fcmp contract olt float %mul855.8, -1.260000e+02, !dbg !141
  %cond2.i.i1257.8 = select contract i1 %cmp.i.i1254.8, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.8 = select contract i1 %cmp.i.i1254.8, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.8 = fadd contract float %mul855.8, %cond.i.i1255.8, !dbg !141
  %445 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.8), !dbg !141
  %mul.i.i1258.8 = fmul contract float %cond2.i.i1257.8, %445, !dbg !141
  %add883.8 = fadd contract float %mul.i.i1258.8, 1.000000e+00, !dbg !143
  %div898.8 = fdiv contract float 1.000000e+00, %add883.8, !dbg !144
  %mul914.8 = fmul contract float %gate_logits_local.sroa.226.132.vec.extract, %div898.8, !dbg !145
  %gate_logits_local.sroa.226.128.vec.extract = extractelement <4 x float> %269, i64 0, !dbg !126
  %mul851.8 = fmul contract float %gate_logits_local.sroa.226.128.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.8 = fcmp contract olt float %mul851.8, -1.260000e+02, !dbg !147
  %cond2.i.i.8 = select contract i1 %cmp.i.i.8, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.8 = select contract i1 %cmp.i.i.8, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.8 = fadd contract float %mul851.8, %cond.i.i1253.8, !dbg !147
  %446 = tail call contract float @llvm.exp2.f32(float %add.i.i.8), !dbg !147
  %mul.i.i.8 = fmul contract float %cond2.i.i.8, %446, !dbg !147
  %add879.8 = fadd contract float %mul.i.i.8, 1.000000e+00, !dbg !149
  %div.8 = fdiv contract float 1.000000e+00, %add879.8, !dbg !150
  %mul910.8 = fmul contract float %gate_logits_local.sroa.226.128.vec.extract, %div.8, !dbg !151
  %up_logits_local.sroa.194.128.vec.extract = extractelement <4 x float> %301, i64 0, !dbg !152
  %up_logits_local.sroa.194.132.vec.extract = extractelement <4 x float> %301, i64 1, !dbg !152
  %up_logits_local.sroa.194.136.vec.extract = extractelement <4 x float> %301, i64 2, !dbg !152
  %up_logits_local.sroa.194.140.vec.extract = extractelement <4 x float> %301, i64 3, !dbg !152
  %mul973.8 = fmul contract float %mul910.8, %up_logits_local.sroa.194.128.vec.extract, !dbg !153
  %mul977.8 = fmul contract float %mul914.8, %up_logits_local.sroa.194.132.vec.extract, !dbg !154
  %mul981.8 = fmul contract float %mul918.8, %up_logits_local.sroa.194.136.vec.extract, !dbg !155
  %mul985.8 = fmul contract float %mul922.8, %up_logits_local.sroa.194.140.vec.extract, !dbg !156
  %447 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %448 = fptrunc float %mul973.8 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %447), !dbg !157, !noalias !165
  %449 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %450 = fptrunc float %mul977.8 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %449), !dbg !170, !noalias !165
  %451 = bitcast half %448 to i16, !dbg !172
  %452 = bitcast half %450 to i16, !dbg !175
  %453 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %454 = fptrunc float %mul981.8 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %453), !dbg !176, !noalias !180
  %455 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %456 = fptrunc float %mul985.8 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %455), !dbg !185, !noalias !180
  %457 = bitcast half %454 to i16, !dbg !187
  %458 = bitcast half %456 to i16, !dbg !189
  %459 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.8 = getelementptr i8, ptr addrspace(1) %459, i64 65536, !dbg !190
  %__7.sroa.6.0.insert.ext.8 = zext i16 %458 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.8 = shl nuw i64 %__7.sroa.6.0.insert.ext.8, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.8 = zext i16 %457 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.8 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.8, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.8 = or disjoint i64 %__7.sroa.6.0.insert.shift.8, %__7.sroa.5.0.insert.shift.8, !dbg !191
  %__7.sroa.4.0.insert.ext.8 = zext i16 %452 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.8 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.8, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.8 = or disjoint i64 %__7.sroa.5.0.insert.insert.8, %__7.sroa.4.0.insert.shift.8, !dbg !191
  %__7.sroa.0.0.insert.ext.8 = zext i16 %451 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.8 = or disjoint i64 %__7.sroa.4.0.insert.insert.8, %__7.sroa.0.0.insert.ext.8, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.8, ptr addrspace(1) %gep1317.8, align 8, !dbg !191
  br label %if.end1030.8, !dbg !192

if.end1030.8:                                     ; preds = %if.then962.8, %if.end1030.7
  br i1 %or.cond1318.8, label %if.then962.9, label %if.end1030.9, !dbg !125

if.then962.9:                                     ; preds = %if.end1030.8
  %gate_logits_local.sroa.254.156.vec.extract = extractelement <4 x float> %270, i64 3, !dbg !126
  %mul863.9 = fmul contract float %gate_logits_local.sroa.254.156.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.9 = fcmp contract olt float %mul863.9, -1.260000e+02, !dbg !128
  %cond2.i.i1267.9 = select contract i1 %cmp.i.i1264.9, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.9 = select contract i1 %cmp.i.i1264.9, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.9 = fadd contract float %mul863.9, %cond.i.i1265.9, !dbg !128
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.9), !dbg !128
  %mul.i.i1268.9 = fmul contract float %cond2.i.i1267.9, %460, !dbg !128
  %add891.9 = fadd contract float %mul.i.i1268.9, 1.000000e+00, !dbg !131
  %div906.9 = fdiv contract float 1.000000e+00, %add891.9, !dbg !132
  %mul922.9 = fmul contract float %gate_logits_local.sroa.254.156.vec.extract, %div906.9, !dbg !133
  %gate_logits_local.sroa.254.152.vec.extract = extractelement <4 x float> %270, i64 2, !dbg !126
  %mul859.9 = fmul contract float %gate_logits_local.sroa.254.152.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.9 = fcmp contract olt float %mul859.9, -1.260000e+02, !dbg !135
  %cond2.i.i1262.9 = select contract i1 %cmp.i.i1259.9, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.9 = select contract i1 %cmp.i.i1259.9, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.9 = fadd contract float %mul859.9, %cond.i.i1260.9, !dbg !135
  %461 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.9), !dbg !135
  %mul.i.i1263.9 = fmul contract float %cond2.i.i1262.9, %461, !dbg !135
  %add887.9 = fadd contract float %mul.i.i1263.9, 1.000000e+00, !dbg !137
  %div902.9 = fdiv contract float 1.000000e+00, %add887.9, !dbg !138
  %mul918.9 = fmul contract float %gate_logits_local.sroa.254.152.vec.extract, %div902.9, !dbg !139
  %gate_logits_local.sroa.254.148.vec.extract = extractelement <4 x float> %270, i64 1, !dbg !126
  %mul855.9 = fmul contract float %gate_logits_local.sroa.254.148.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.9 = fcmp contract olt float %mul855.9, -1.260000e+02, !dbg !141
  %cond2.i.i1257.9 = select contract i1 %cmp.i.i1254.9, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.9 = select contract i1 %cmp.i.i1254.9, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.9 = fadd contract float %mul855.9, %cond.i.i1255.9, !dbg !141
  %462 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.9), !dbg !141
  %mul.i.i1258.9 = fmul contract float %cond2.i.i1257.9, %462, !dbg !141
  %add883.9 = fadd contract float %mul.i.i1258.9, 1.000000e+00, !dbg !143
  %div898.9 = fdiv contract float 1.000000e+00, %add883.9, !dbg !144
  %mul914.9 = fmul contract float %gate_logits_local.sroa.254.148.vec.extract, %div898.9, !dbg !145
  %gate_logits_local.sroa.254.144.vec.extract = extractelement <4 x float> %270, i64 0, !dbg !126
  %mul851.9 = fmul contract float %gate_logits_local.sroa.254.144.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.9 = fcmp contract olt float %mul851.9, -1.260000e+02, !dbg !147
  %cond2.i.i.9 = select contract i1 %cmp.i.i.9, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.9 = select contract i1 %cmp.i.i.9, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.9 = fadd contract float %mul851.9, %cond.i.i1253.9, !dbg !147
  %463 = tail call contract float @llvm.exp2.f32(float %add.i.i.9), !dbg !147
  %mul.i.i.9 = fmul contract float %cond2.i.i.9, %463, !dbg !147
  %add879.9 = fadd contract float %mul.i.i.9, 1.000000e+00, !dbg !149
  %div.9 = fdiv contract float 1.000000e+00, %add879.9, !dbg !150
  %mul910.9 = fmul contract float %gate_logits_local.sroa.254.144.vec.extract, %div.9, !dbg !151
  %up_logits_local.sroa.218.144.vec.extract = extractelement <4 x float> %302, i64 0, !dbg !152
  %up_logits_local.sroa.218.148.vec.extract = extractelement <4 x float> %302, i64 1, !dbg !152
  %up_logits_local.sroa.218.152.vec.extract = extractelement <4 x float> %302, i64 2, !dbg !152
  %up_logits_local.sroa.218.156.vec.extract = extractelement <4 x float> %302, i64 3, !dbg !152
  %mul973.9 = fmul contract float %mul910.9, %up_logits_local.sroa.218.144.vec.extract, !dbg !153
  %mul977.9 = fmul contract float %mul914.9, %up_logits_local.sroa.218.148.vec.extract, !dbg !154
  %mul981.9 = fmul contract float %mul918.9, %up_logits_local.sroa.218.152.vec.extract, !dbg !155
  %mul985.9 = fmul contract float %mul922.9, %up_logits_local.sroa.218.156.vec.extract, !dbg !156
  %464 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %465 = fptrunc float %mul973.9 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %464), !dbg !157, !noalias !165
  %466 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %467 = fptrunc float %mul977.9 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %466), !dbg !170, !noalias !165
  %468 = bitcast half %465 to i16, !dbg !172
  %469 = bitcast half %467 to i16, !dbg !175
  %470 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %471 = fptrunc float %mul981.9 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %470), !dbg !176, !noalias !180
  %472 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %473 = fptrunc float %mul985.9 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %472), !dbg !185, !noalias !180
  %474 = bitcast half %471 to i16, !dbg !187
  %475 = bitcast half %473 to i16, !dbg !189
  %476 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.9 = getelementptr i8, ptr addrspace(1) %476, i64 65568, !dbg !190
  %__7.sroa.6.0.insert.ext.9 = zext i16 %475 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.9 = shl nuw i64 %__7.sroa.6.0.insert.ext.9, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.9 = zext i16 %474 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.9 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.9, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.9 = or disjoint i64 %__7.sroa.6.0.insert.shift.9, %__7.sroa.5.0.insert.shift.9, !dbg !191
  %__7.sroa.4.0.insert.ext.9 = zext i16 %469 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.9 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.9, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.9 = or disjoint i64 %__7.sroa.5.0.insert.insert.9, %__7.sroa.4.0.insert.shift.9, !dbg !191
  %__7.sroa.0.0.insert.ext.9 = zext i16 %468 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.9 = or disjoint i64 %__7.sroa.4.0.insert.insert.9, %__7.sroa.0.0.insert.ext.9, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.9, ptr addrspace(1) %gep1317.9, align 8, !dbg !191
  br label %if.end1030.9, !dbg !192

if.end1030.9:                                     ; preds = %if.then962.9, %if.end1030.8
  br i1 %or.cond1318.8, label %if.then962.10, label %if.end1030.10, !dbg !125

if.then962.10:                                    ; preds = %if.end1030.9
  %gate_logits_local.sroa.282.172.vec.extract = extractelement <4 x float> %271, i64 3, !dbg !126
  %mul863.10 = fmul contract float %gate_logits_local.sroa.282.172.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.10 = fcmp contract olt float %mul863.10, -1.260000e+02, !dbg !128
  %cond2.i.i1267.10 = select contract i1 %cmp.i.i1264.10, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.10 = select contract i1 %cmp.i.i1264.10, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.10 = fadd contract float %mul863.10, %cond.i.i1265.10, !dbg !128
  %477 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.10), !dbg !128
  %mul.i.i1268.10 = fmul contract float %cond2.i.i1267.10, %477, !dbg !128
  %add891.10 = fadd contract float %mul.i.i1268.10, 1.000000e+00, !dbg !131
  %div906.10 = fdiv contract float 1.000000e+00, %add891.10, !dbg !132
  %mul922.10 = fmul contract float %gate_logits_local.sroa.282.172.vec.extract, %div906.10, !dbg !133
  %gate_logits_local.sroa.282.168.vec.extract = extractelement <4 x float> %271, i64 2, !dbg !126
  %mul859.10 = fmul contract float %gate_logits_local.sroa.282.168.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.10 = fcmp contract olt float %mul859.10, -1.260000e+02, !dbg !135
  %cond2.i.i1262.10 = select contract i1 %cmp.i.i1259.10, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.10 = select contract i1 %cmp.i.i1259.10, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.10 = fadd contract float %mul859.10, %cond.i.i1260.10, !dbg !135
  %478 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.10), !dbg !135
  %mul.i.i1263.10 = fmul contract float %cond2.i.i1262.10, %478, !dbg !135
  %add887.10 = fadd contract float %mul.i.i1263.10, 1.000000e+00, !dbg !137
  %div902.10 = fdiv contract float 1.000000e+00, %add887.10, !dbg !138
  %mul918.10 = fmul contract float %gate_logits_local.sroa.282.168.vec.extract, %div902.10, !dbg !139
  %gate_logits_local.sroa.282.164.vec.extract = extractelement <4 x float> %271, i64 1, !dbg !126
  %mul855.10 = fmul contract float %gate_logits_local.sroa.282.164.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.10 = fcmp contract olt float %mul855.10, -1.260000e+02, !dbg !141
  %cond2.i.i1257.10 = select contract i1 %cmp.i.i1254.10, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.10 = select contract i1 %cmp.i.i1254.10, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.10 = fadd contract float %mul855.10, %cond.i.i1255.10, !dbg !141
  %479 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.10), !dbg !141
  %mul.i.i1258.10 = fmul contract float %cond2.i.i1257.10, %479, !dbg !141
  %add883.10 = fadd contract float %mul.i.i1258.10, 1.000000e+00, !dbg !143
  %div898.10 = fdiv contract float 1.000000e+00, %add883.10, !dbg !144
  %mul914.10 = fmul contract float %gate_logits_local.sroa.282.164.vec.extract, %div898.10, !dbg !145
  %gate_logits_local.sroa.282.160.vec.extract = extractelement <4 x float> %271, i64 0, !dbg !126
  %mul851.10 = fmul contract float %gate_logits_local.sroa.282.160.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.10 = fcmp contract olt float %mul851.10, -1.260000e+02, !dbg !147
  %cond2.i.i.10 = select contract i1 %cmp.i.i.10, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.10 = select contract i1 %cmp.i.i.10, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.10 = fadd contract float %mul851.10, %cond.i.i1253.10, !dbg !147
  %480 = tail call contract float @llvm.exp2.f32(float %add.i.i.10), !dbg !147
  %mul.i.i.10 = fmul contract float %cond2.i.i.10, %480, !dbg !147
  %add879.10 = fadd contract float %mul.i.i.10, 1.000000e+00, !dbg !149
  %div.10 = fdiv contract float 1.000000e+00, %add879.10, !dbg !150
  %mul910.10 = fmul contract float %gate_logits_local.sroa.282.160.vec.extract, %div.10, !dbg !151
  %up_logits_local.sroa.242.160.vec.extract = extractelement <4 x float> %303, i64 0, !dbg !152
  %up_logits_local.sroa.242.164.vec.extract = extractelement <4 x float> %303, i64 1, !dbg !152
  %up_logits_local.sroa.242.168.vec.extract = extractelement <4 x float> %303, i64 2, !dbg !152
  %up_logits_local.sroa.242.172.vec.extract = extractelement <4 x float> %303, i64 3, !dbg !152
  %mul973.10 = fmul contract float %mul910.10, %up_logits_local.sroa.242.160.vec.extract, !dbg !153
  %mul977.10 = fmul contract float %mul914.10, %up_logits_local.sroa.242.164.vec.extract, !dbg !154
  %mul981.10 = fmul contract float %mul918.10, %up_logits_local.sroa.242.168.vec.extract, !dbg !155
  %mul985.10 = fmul contract float %mul922.10, %up_logits_local.sroa.242.172.vec.extract, !dbg !156
  %481 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %482 = fptrunc float %mul973.10 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %481), !dbg !157, !noalias !165
  %483 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %484 = fptrunc float %mul977.10 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %483), !dbg !170, !noalias !165
  %485 = bitcast half %482 to i16, !dbg !172
  %486 = bitcast half %484 to i16, !dbg !175
  %487 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %488 = fptrunc float %mul981.10 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %487), !dbg !176, !noalias !180
  %489 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %490 = fptrunc float %mul985.10 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %489), !dbg !185, !noalias !180
  %491 = bitcast half %488 to i16, !dbg !187
  %492 = bitcast half %490 to i16, !dbg !189
  %493 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.10 = getelementptr i8, ptr addrspace(1) %493, i64 65600, !dbg !190
  %__7.sroa.6.0.insert.ext.10 = zext i16 %492 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.10 = shl nuw i64 %__7.sroa.6.0.insert.ext.10, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.10 = zext i16 %491 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.10 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.10, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.10 = or disjoint i64 %__7.sroa.6.0.insert.shift.10, %__7.sroa.5.0.insert.shift.10, !dbg !191
  %__7.sroa.4.0.insert.ext.10 = zext i16 %486 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.10 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.10, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.10 = or disjoint i64 %__7.sroa.5.0.insert.insert.10, %__7.sroa.4.0.insert.shift.10, !dbg !191
  %__7.sroa.0.0.insert.ext.10 = zext i16 %485 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.10 = or disjoint i64 %__7.sroa.4.0.insert.insert.10, %__7.sroa.0.0.insert.ext.10, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.10, ptr addrspace(1) %gep1317.10, align 8, !dbg !191
  br label %if.end1030.10, !dbg !192

if.end1030.10:                                    ; preds = %if.then962.10, %if.end1030.9
  br i1 %or.cond1318.8, label %if.then962.11, label %if.end1030.11, !dbg !125

if.then962.11:                                    ; preds = %if.end1030.10
  %gate_logits_local.sroa.310.188.vec.extract = extractelement <4 x float> %272, i64 3, !dbg !126
  %mul863.11 = fmul contract float %gate_logits_local.sroa.310.188.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.11 = fcmp contract olt float %mul863.11, -1.260000e+02, !dbg !128
  %cond2.i.i1267.11 = select contract i1 %cmp.i.i1264.11, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.11 = select contract i1 %cmp.i.i1264.11, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.11 = fadd contract float %mul863.11, %cond.i.i1265.11, !dbg !128
  %494 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.11), !dbg !128
  %mul.i.i1268.11 = fmul contract float %cond2.i.i1267.11, %494, !dbg !128
  %add891.11 = fadd contract float %mul.i.i1268.11, 1.000000e+00, !dbg !131
  %div906.11 = fdiv contract float 1.000000e+00, %add891.11, !dbg !132
  %mul922.11 = fmul contract float %gate_logits_local.sroa.310.188.vec.extract, %div906.11, !dbg !133
  %gate_logits_local.sroa.310.184.vec.extract = extractelement <4 x float> %272, i64 2, !dbg !126
  %mul859.11 = fmul contract float %gate_logits_local.sroa.310.184.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.11 = fcmp contract olt float %mul859.11, -1.260000e+02, !dbg !135
  %cond2.i.i1262.11 = select contract i1 %cmp.i.i1259.11, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.11 = select contract i1 %cmp.i.i1259.11, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.11 = fadd contract float %mul859.11, %cond.i.i1260.11, !dbg !135
  %495 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.11), !dbg !135
  %mul.i.i1263.11 = fmul contract float %cond2.i.i1262.11, %495, !dbg !135
  %add887.11 = fadd contract float %mul.i.i1263.11, 1.000000e+00, !dbg !137
  %div902.11 = fdiv contract float 1.000000e+00, %add887.11, !dbg !138
  %mul918.11 = fmul contract float %gate_logits_local.sroa.310.184.vec.extract, %div902.11, !dbg !139
  %gate_logits_local.sroa.310.180.vec.extract = extractelement <4 x float> %272, i64 1, !dbg !126
  %mul855.11 = fmul contract float %gate_logits_local.sroa.310.180.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.11 = fcmp contract olt float %mul855.11, -1.260000e+02, !dbg !141
  %cond2.i.i1257.11 = select contract i1 %cmp.i.i1254.11, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.11 = select contract i1 %cmp.i.i1254.11, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.11 = fadd contract float %mul855.11, %cond.i.i1255.11, !dbg !141
  %496 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.11), !dbg !141
  %mul.i.i1258.11 = fmul contract float %cond2.i.i1257.11, %496, !dbg !141
  %add883.11 = fadd contract float %mul.i.i1258.11, 1.000000e+00, !dbg !143
  %div898.11 = fdiv contract float 1.000000e+00, %add883.11, !dbg !144
  %mul914.11 = fmul contract float %gate_logits_local.sroa.310.180.vec.extract, %div898.11, !dbg !145
  %gate_logits_local.sroa.310.176.vec.extract = extractelement <4 x float> %272, i64 0, !dbg !126
  %mul851.11 = fmul contract float %gate_logits_local.sroa.310.176.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.11 = fcmp contract olt float %mul851.11, -1.260000e+02, !dbg !147
  %cond2.i.i.11 = select contract i1 %cmp.i.i.11, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.11 = select contract i1 %cmp.i.i.11, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.11 = fadd contract float %mul851.11, %cond.i.i1253.11, !dbg !147
  %497 = tail call contract float @llvm.exp2.f32(float %add.i.i.11), !dbg !147
  %mul.i.i.11 = fmul contract float %cond2.i.i.11, %497, !dbg !147
  %add879.11 = fadd contract float %mul.i.i.11, 1.000000e+00, !dbg !149
  %div.11 = fdiv contract float 1.000000e+00, %add879.11, !dbg !150
  %mul910.11 = fmul contract float %gate_logits_local.sroa.310.176.vec.extract, %div.11, !dbg !151
  %up_logits_local.sroa.266.176.vec.extract = extractelement <4 x float> %304, i64 0, !dbg !152
  %up_logits_local.sroa.266.180.vec.extract = extractelement <4 x float> %304, i64 1, !dbg !152
  %up_logits_local.sroa.266.184.vec.extract = extractelement <4 x float> %304, i64 2, !dbg !152
  %up_logits_local.sroa.266.188.vec.extract = extractelement <4 x float> %304, i64 3, !dbg !152
  %mul973.11 = fmul contract float %mul910.11, %up_logits_local.sroa.266.176.vec.extract, !dbg !153
  %mul977.11 = fmul contract float %mul914.11, %up_logits_local.sroa.266.180.vec.extract, !dbg !154
  %mul981.11 = fmul contract float %mul918.11, %up_logits_local.sroa.266.184.vec.extract, !dbg !155
  %mul985.11 = fmul contract float %mul922.11, %up_logits_local.sroa.266.188.vec.extract, !dbg !156
  %498 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %499 = fptrunc float %mul973.11 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %498), !dbg !157, !noalias !165
  %500 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %501 = fptrunc float %mul977.11 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %500), !dbg !170, !noalias !165
  %502 = bitcast half %499 to i16, !dbg !172
  %503 = bitcast half %501 to i16, !dbg !175
  %504 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %505 = fptrunc float %mul981.11 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %504), !dbg !176, !noalias !180
  %506 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %507 = fptrunc float %mul985.11 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %506), !dbg !185, !noalias !180
  %508 = bitcast half %505 to i16, !dbg !187
  %509 = bitcast half %507 to i16, !dbg !189
  %510 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.11 = getelementptr i8, ptr addrspace(1) %510, i64 65632, !dbg !190
  %__7.sroa.6.0.insert.ext.11 = zext i16 %509 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.11 = shl nuw i64 %__7.sroa.6.0.insert.ext.11, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.11 = zext i16 %508 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.11 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.11, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.11 = or disjoint i64 %__7.sroa.6.0.insert.shift.11, %__7.sroa.5.0.insert.shift.11, !dbg !191
  %__7.sroa.4.0.insert.ext.11 = zext i16 %503 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.11 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.11, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.11 = or disjoint i64 %__7.sroa.5.0.insert.insert.11, %__7.sroa.4.0.insert.shift.11, !dbg !191
  %__7.sroa.0.0.insert.ext.11 = zext i16 %502 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.11 = or disjoint i64 %__7.sroa.4.0.insert.insert.11, %__7.sroa.0.0.insert.ext.11, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.11, ptr addrspace(1) %gep1317.11, align 8, !dbg !191
  br label %if.end1030.11, !dbg !192

if.end1030.11:                                    ; preds = %if.then962.11, %if.end1030.10
  br i1 %or.cond1318.8, label %if.then962.12, label %if.end1030.12, !dbg !125

if.then962.12:                                    ; preds = %if.end1030.11
  %gate_logits_local.sroa.338.204.vec.extract = extractelement <4 x float> %273, i64 3, !dbg !126
  %mul863.12 = fmul contract float %gate_logits_local.sroa.338.204.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.12 = fcmp contract olt float %mul863.12, -1.260000e+02, !dbg !128
  %cond2.i.i1267.12 = select contract i1 %cmp.i.i1264.12, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.12 = select contract i1 %cmp.i.i1264.12, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.12 = fadd contract float %mul863.12, %cond.i.i1265.12, !dbg !128
  %511 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.12), !dbg !128
  %mul.i.i1268.12 = fmul contract float %cond2.i.i1267.12, %511, !dbg !128
  %add891.12 = fadd contract float %mul.i.i1268.12, 1.000000e+00, !dbg !131
  %div906.12 = fdiv contract float 1.000000e+00, %add891.12, !dbg !132
  %mul922.12 = fmul contract float %gate_logits_local.sroa.338.204.vec.extract, %div906.12, !dbg !133
  %gate_logits_local.sroa.338.200.vec.extract = extractelement <4 x float> %273, i64 2, !dbg !126
  %mul859.12 = fmul contract float %gate_logits_local.sroa.338.200.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.12 = fcmp contract olt float %mul859.12, -1.260000e+02, !dbg !135
  %cond2.i.i1262.12 = select contract i1 %cmp.i.i1259.12, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.12 = select contract i1 %cmp.i.i1259.12, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.12 = fadd contract float %mul859.12, %cond.i.i1260.12, !dbg !135
  %512 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.12), !dbg !135
  %mul.i.i1263.12 = fmul contract float %cond2.i.i1262.12, %512, !dbg !135
  %add887.12 = fadd contract float %mul.i.i1263.12, 1.000000e+00, !dbg !137
  %div902.12 = fdiv contract float 1.000000e+00, %add887.12, !dbg !138
  %mul918.12 = fmul contract float %gate_logits_local.sroa.338.200.vec.extract, %div902.12, !dbg !139
  %gate_logits_local.sroa.338.196.vec.extract = extractelement <4 x float> %273, i64 1, !dbg !126
  %mul855.12 = fmul contract float %gate_logits_local.sroa.338.196.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.12 = fcmp contract olt float %mul855.12, -1.260000e+02, !dbg !141
  %cond2.i.i1257.12 = select contract i1 %cmp.i.i1254.12, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.12 = select contract i1 %cmp.i.i1254.12, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.12 = fadd contract float %mul855.12, %cond.i.i1255.12, !dbg !141
  %513 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.12), !dbg !141
  %mul.i.i1258.12 = fmul contract float %cond2.i.i1257.12, %513, !dbg !141
  %add883.12 = fadd contract float %mul.i.i1258.12, 1.000000e+00, !dbg !143
  %div898.12 = fdiv contract float 1.000000e+00, %add883.12, !dbg !144
  %mul914.12 = fmul contract float %gate_logits_local.sroa.338.196.vec.extract, %div898.12, !dbg !145
  %gate_logits_local.sroa.338.192.vec.extract = extractelement <4 x float> %273, i64 0, !dbg !126
  %mul851.12 = fmul contract float %gate_logits_local.sroa.338.192.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.12 = fcmp contract olt float %mul851.12, -1.260000e+02, !dbg !147
  %cond2.i.i.12 = select contract i1 %cmp.i.i.12, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.12 = select contract i1 %cmp.i.i.12, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.12 = fadd contract float %mul851.12, %cond.i.i1253.12, !dbg !147
  %514 = tail call contract float @llvm.exp2.f32(float %add.i.i.12), !dbg !147
  %mul.i.i.12 = fmul contract float %cond2.i.i.12, %514, !dbg !147
  %add879.12 = fadd contract float %mul.i.i.12, 1.000000e+00, !dbg !149
  %div.12 = fdiv contract float 1.000000e+00, %add879.12, !dbg !150
  %mul910.12 = fmul contract float %gate_logits_local.sroa.338.192.vec.extract, %div.12, !dbg !151
  %up_logits_local.sroa.290.192.vec.extract = extractelement <4 x float> %305, i64 0, !dbg !152
  %up_logits_local.sroa.290.196.vec.extract = extractelement <4 x float> %305, i64 1, !dbg !152
  %up_logits_local.sroa.290.200.vec.extract = extractelement <4 x float> %305, i64 2, !dbg !152
  %up_logits_local.sroa.290.204.vec.extract = extractelement <4 x float> %305, i64 3, !dbg !152
  %mul973.12 = fmul contract float %mul910.12, %up_logits_local.sroa.290.192.vec.extract, !dbg !153
  %mul977.12 = fmul contract float %mul914.12, %up_logits_local.sroa.290.196.vec.extract, !dbg !154
  %mul981.12 = fmul contract float %mul918.12, %up_logits_local.sroa.290.200.vec.extract, !dbg !155
  %mul985.12 = fmul contract float %mul922.12, %up_logits_local.sroa.290.204.vec.extract, !dbg !156
  %515 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %516 = fptrunc float %mul973.12 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %515), !dbg !157, !noalias !165
  %517 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %518 = fptrunc float %mul977.12 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %517), !dbg !170, !noalias !165
  %519 = bitcast half %516 to i16, !dbg !172
  %520 = bitcast half %518 to i16, !dbg !175
  %521 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %522 = fptrunc float %mul981.12 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %521), !dbg !176, !noalias !180
  %523 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %524 = fptrunc float %mul985.12 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %523), !dbg !185, !noalias !180
  %525 = bitcast half %522 to i16, !dbg !187
  %526 = bitcast half %524 to i16, !dbg !189
  %527 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.12 = getelementptr i8, ptr addrspace(1) %527, i64 65664, !dbg !190
  %__7.sroa.6.0.insert.ext.12 = zext i16 %526 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.12 = shl nuw i64 %__7.sroa.6.0.insert.ext.12, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.12 = zext i16 %525 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.12 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.12, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.12 = or disjoint i64 %__7.sroa.6.0.insert.shift.12, %__7.sroa.5.0.insert.shift.12, !dbg !191
  %__7.sroa.4.0.insert.ext.12 = zext i16 %520 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.12 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.12, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.12 = or disjoint i64 %__7.sroa.5.0.insert.insert.12, %__7.sroa.4.0.insert.shift.12, !dbg !191
  %__7.sroa.0.0.insert.ext.12 = zext i16 %519 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.12 = or disjoint i64 %__7.sroa.4.0.insert.insert.12, %__7.sroa.0.0.insert.ext.12, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.12, ptr addrspace(1) %gep1317.12, align 8, !dbg !191
  br label %if.end1030.12, !dbg !192

if.end1030.12:                                    ; preds = %if.then962.12, %if.end1030.11
  br i1 %or.cond1318.8, label %if.then962.13, label %if.end1030.13, !dbg !125

if.then962.13:                                    ; preds = %if.end1030.12
  %gate_logits_local.sroa.366.220.vec.extract = extractelement <4 x float> %274, i64 3, !dbg !126
  %mul863.13 = fmul contract float %gate_logits_local.sroa.366.220.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.13 = fcmp contract olt float %mul863.13, -1.260000e+02, !dbg !128
  %cond2.i.i1267.13 = select contract i1 %cmp.i.i1264.13, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.13 = select contract i1 %cmp.i.i1264.13, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.13 = fadd contract float %mul863.13, %cond.i.i1265.13, !dbg !128
  %528 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.13), !dbg !128
  %mul.i.i1268.13 = fmul contract float %cond2.i.i1267.13, %528, !dbg !128
  %add891.13 = fadd contract float %mul.i.i1268.13, 1.000000e+00, !dbg !131
  %div906.13 = fdiv contract float 1.000000e+00, %add891.13, !dbg !132
  %mul922.13 = fmul contract float %gate_logits_local.sroa.366.220.vec.extract, %div906.13, !dbg !133
  %gate_logits_local.sroa.366.216.vec.extract = extractelement <4 x float> %274, i64 2, !dbg !126
  %mul859.13 = fmul contract float %gate_logits_local.sroa.366.216.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.13 = fcmp contract olt float %mul859.13, -1.260000e+02, !dbg !135
  %cond2.i.i1262.13 = select contract i1 %cmp.i.i1259.13, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.13 = select contract i1 %cmp.i.i1259.13, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.13 = fadd contract float %mul859.13, %cond.i.i1260.13, !dbg !135
  %529 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.13), !dbg !135
  %mul.i.i1263.13 = fmul contract float %cond2.i.i1262.13, %529, !dbg !135
  %add887.13 = fadd contract float %mul.i.i1263.13, 1.000000e+00, !dbg !137
  %div902.13 = fdiv contract float 1.000000e+00, %add887.13, !dbg !138
  %mul918.13 = fmul contract float %gate_logits_local.sroa.366.216.vec.extract, %div902.13, !dbg !139
  %gate_logits_local.sroa.366.212.vec.extract = extractelement <4 x float> %274, i64 1, !dbg !126
  %mul855.13 = fmul contract float %gate_logits_local.sroa.366.212.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.13 = fcmp contract olt float %mul855.13, -1.260000e+02, !dbg !141
  %cond2.i.i1257.13 = select contract i1 %cmp.i.i1254.13, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.13 = select contract i1 %cmp.i.i1254.13, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.13 = fadd contract float %mul855.13, %cond.i.i1255.13, !dbg !141
  %530 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.13), !dbg !141
  %mul.i.i1258.13 = fmul contract float %cond2.i.i1257.13, %530, !dbg !141
  %add883.13 = fadd contract float %mul.i.i1258.13, 1.000000e+00, !dbg !143
  %div898.13 = fdiv contract float 1.000000e+00, %add883.13, !dbg !144
  %mul914.13 = fmul contract float %gate_logits_local.sroa.366.212.vec.extract, %div898.13, !dbg !145
  %gate_logits_local.sroa.366.208.vec.extract = extractelement <4 x float> %274, i64 0, !dbg !126
  %mul851.13 = fmul contract float %gate_logits_local.sroa.366.208.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.13 = fcmp contract olt float %mul851.13, -1.260000e+02, !dbg !147
  %cond2.i.i.13 = select contract i1 %cmp.i.i.13, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.13 = select contract i1 %cmp.i.i.13, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.13 = fadd contract float %mul851.13, %cond.i.i1253.13, !dbg !147
  %531 = tail call contract float @llvm.exp2.f32(float %add.i.i.13), !dbg !147
  %mul.i.i.13 = fmul contract float %cond2.i.i.13, %531, !dbg !147
  %add879.13 = fadd contract float %mul.i.i.13, 1.000000e+00, !dbg !149
  %div.13 = fdiv contract float 1.000000e+00, %add879.13, !dbg !150
  %mul910.13 = fmul contract float %gate_logits_local.sroa.366.208.vec.extract, %div.13, !dbg !151
  %up_logits_local.sroa.314.208.vec.extract = extractelement <4 x float> %306, i64 0, !dbg !152
  %up_logits_local.sroa.314.212.vec.extract = extractelement <4 x float> %306, i64 1, !dbg !152
  %up_logits_local.sroa.314.216.vec.extract = extractelement <4 x float> %306, i64 2, !dbg !152
  %up_logits_local.sroa.314.220.vec.extract = extractelement <4 x float> %306, i64 3, !dbg !152
  %mul973.13 = fmul contract float %mul910.13, %up_logits_local.sroa.314.208.vec.extract, !dbg !153
  %mul977.13 = fmul contract float %mul914.13, %up_logits_local.sroa.314.212.vec.extract, !dbg !154
  %mul981.13 = fmul contract float %mul918.13, %up_logits_local.sroa.314.216.vec.extract, !dbg !155
  %mul985.13 = fmul contract float %mul922.13, %up_logits_local.sroa.314.220.vec.extract, !dbg !156
  %532 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %533 = fptrunc float %mul973.13 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %532), !dbg !157, !noalias !165
  %534 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %535 = fptrunc float %mul977.13 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %534), !dbg !170, !noalias !165
  %536 = bitcast half %533 to i16, !dbg !172
  %537 = bitcast half %535 to i16, !dbg !175
  %538 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %539 = fptrunc float %mul981.13 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %538), !dbg !176, !noalias !180
  %540 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %541 = fptrunc float %mul985.13 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %540), !dbg !185, !noalias !180
  %542 = bitcast half %539 to i16, !dbg !187
  %543 = bitcast half %541 to i16, !dbg !189
  %544 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.13 = getelementptr i8, ptr addrspace(1) %544, i64 65696, !dbg !190
  %__7.sroa.6.0.insert.ext.13 = zext i16 %543 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.13 = shl nuw i64 %__7.sroa.6.0.insert.ext.13, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.13 = zext i16 %542 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.13 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.13, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.13 = or disjoint i64 %__7.sroa.6.0.insert.shift.13, %__7.sroa.5.0.insert.shift.13, !dbg !191
  %__7.sroa.4.0.insert.ext.13 = zext i16 %537 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.13 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.13, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.13 = or disjoint i64 %__7.sroa.5.0.insert.insert.13, %__7.sroa.4.0.insert.shift.13, !dbg !191
  %__7.sroa.0.0.insert.ext.13 = zext i16 %536 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.13 = or disjoint i64 %__7.sroa.4.0.insert.insert.13, %__7.sroa.0.0.insert.ext.13, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.13, ptr addrspace(1) %gep1317.13, align 8, !dbg !191
  br label %if.end1030.13, !dbg !192

if.end1030.13:                                    ; preds = %if.then962.13, %if.end1030.12
  br i1 %or.cond1318.8, label %if.then962.14, label %if.end1030.14, !dbg !125

if.then962.14:                                    ; preds = %if.end1030.13
  %gate_logits_local.sroa.394.236.vec.extract = extractelement <4 x float> %275, i64 3, !dbg !126
  %mul863.14 = fmul contract float %gate_logits_local.sroa.394.236.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.14 = fcmp contract olt float %mul863.14, -1.260000e+02, !dbg !128
  %cond2.i.i1267.14 = select contract i1 %cmp.i.i1264.14, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.14 = select contract i1 %cmp.i.i1264.14, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.14 = fadd contract float %mul863.14, %cond.i.i1265.14, !dbg !128
  %545 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.14), !dbg !128
  %mul.i.i1268.14 = fmul contract float %cond2.i.i1267.14, %545, !dbg !128
  %add891.14 = fadd contract float %mul.i.i1268.14, 1.000000e+00, !dbg !131
  %div906.14 = fdiv contract float 1.000000e+00, %add891.14, !dbg !132
  %mul922.14 = fmul contract float %gate_logits_local.sroa.394.236.vec.extract, %div906.14, !dbg !133
  %gate_logits_local.sroa.394.232.vec.extract = extractelement <4 x float> %275, i64 2, !dbg !126
  %mul859.14 = fmul contract float %gate_logits_local.sroa.394.232.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.14 = fcmp contract olt float %mul859.14, -1.260000e+02, !dbg !135
  %cond2.i.i1262.14 = select contract i1 %cmp.i.i1259.14, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.14 = select contract i1 %cmp.i.i1259.14, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.14 = fadd contract float %mul859.14, %cond.i.i1260.14, !dbg !135
  %546 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.14), !dbg !135
  %mul.i.i1263.14 = fmul contract float %cond2.i.i1262.14, %546, !dbg !135
  %add887.14 = fadd contract float %mul.i.i1263.14, 1.000000e+00, !dbg !137
  %div902.14 = fdiv contract float 1.000000e+00, %add887.14, !dbg !138
  %mul918.14 = fmul contract float %gate_logits_local.sroa.394.232.vec.extract, %div902.14, !dbg !139
  %gate_logits_local.sroa.394.228.vec.extract = extractelement <4 x float> %275, i64 1, !dbg !126
  %mul855.14 = fmul contract float %gate_logits_local.sroa.394.228.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.14 = fcmp contract olt float %mul855.14, -1.260000e+02, !dbg !141
  %cond2.i.i1257.14 = select contract i1 %cmp.i.i1254.14, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.14 = select contract i1 %cmp.i.i1254.14, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.14 = fadd contract float %mul855.14, %cond.i.i1255.14, !dbg !141
  %547 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.14), !dbg !141
  %mul.i.i1258.14 = fmul contract float %cond2.i.i1257.14, %547, !dbg !141
  %add883.14 = fadd contract float %mul.i.i1258.14, 1.000000e+00, !dbg !143
  %div898.14 = fdiv contract float 1.000000e+00, %add883.14, !dbg !144
  %mul914.14 = fmul contract float %gate_logits_local.sroa.394.228.vec.extract, %div898.14, !dbg !145
  %gate_logits_local.sroa.394.224.vec.extract = extractelement <4 x float> %275, i64 0, !dbg !126
  %mul851.14 = fmul contract float %gate_logits_local.sroa.394.224.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.14 = fcmp contract olt float %mul851.14, -1.260000e+02, !dbg !147
  %cond2.i.i.14 = select contract i1 %cmp.i.i.14, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.14 = select contract i1 %cmp.i.i.14, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.14 = fadd contract float %mul851.14, %cond.i.i1253.14, !dbg !147
  %548 = tail call contract float @llvm.exp2.f32(float %add.i.i.14), !dbg !147
  %mul.i.i.14 = fmul contract float %cond2.i.i.14, %548, !dbg !147
  %add879.14 = fadd contract float %mul.i.i.14, 1.000000e+00, !dbg !149
  %div.14 = fdiv contract float 1.000000e+00, %add879.14, !dbg !150
  %mul910.14 = fmul contract float %gate_logits_local.sroa.394.224.vec.extract, %div.14, !dbg !151
  %up_logits_local.sroa.338.224.vec.extract = extractelement <4 x float> %307, i64 0, !dbg !152
  %up_logits_local.sroa.338.228.vec.extract = extractelement <4 x float> %307, i64 1, !dbg !152
  %up_logits_local.sroa.338.232.vec.extract = extractelement <4 x float> %307, i64 2, !dbg !152
  %up_logits_local.sroa.338.236.vec.extract = extractelement <4 x float> %307, i64 3, !dbg !152
  %mul973.14 = fmul contract float %mul910.14, %up_logits_local.sroa.338.224.vec.extract, !dbg !153
  %mul977.14 = fmul contract float %mul914.14, %up_logits_local.sroa.338.228.vec.extract, !dbg !154
  %mul981.14 = fmul contract float %mul918.14, %up_logits_local.sroa.338.232.vec.extract, !dbg !155
  %mul985.14 = fmul contract float %mul922.14, %up_logits_local.sroa.338.236.vec.extract, !dbg !156
  %549 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %550 = fptrunc float %mul973.14 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %549), !dbg !157, !noalias !165
  %551 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %552 = fptrunc float %mul977.14 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %551), !dbg !170, !noalias !165
  %553 = bitcast half %550 to i16, !dbg !172
  %554 = bitcast half %552 to i16, !dbg !175
  %555 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %556 = fptrunc float %mul981.14 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %555), !dbg !176, !noalias !180
  %557 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %558 = fptrunc float %mul985.14 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %557), !dbg !185, !noalias !180
  %559 = bitcast half %556 to i16, !dbg !187
  %560 = bitcast half %558 to i16, !dbg !189
  %561 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.14 = getelementptr i8, ptr addrspace(1) %561, i64 65728, !dbg !190
  %__7.sroa.6.0.insert.ext.14 = zext i16 %560 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.14 = shl nuw i64 %__7.sroa.6.0.insert.ext.14, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.14 = zext i16 %559 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.14 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.14, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.14 = or disjoint i64 %__7.sroa.6.0.insert.shift.14, %__7.sroa.5.0.insert.shift.14, !dbg !191
  %__7.sroa.4.0.insert.ext.14 = zext i16 %554 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.14 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.14, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.14 = or disjoint i64 %__7.sroa.5.0.insert.insert.14, %__7.sroa.4.0.insert.shift.14, !dbg !191
  %__7.sroa.0.0.insert.ext.14 = zext i16 %553 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.14 = or disjoint i64 %__7.sroa.4.0.insert.insert.14, %__7.sroa.0.0.insert.ext.14, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.14, ptr addrspace(1) %gep1317.14, align 8, !dbg !191
  br label %if.end1030.14, !dbg !192

if.end1030.14:                                    ; preds = %if.then962.14, %if.end1030.13
  br i1 %or.cond1318.8, label %if.then962.15, label %if.end1030.15, !dbg !125

if.then962.15:                                    ; preds = %if.end1030.14
  %gate_logits_local.sroa.422.252.vec.extract = extractelement <4 x float> %276, i64 3, !dbg !126
  %mul863.15 = fmul contract float %gate_logits_local.sroa.422.252.vec.extract, 0xBFF7154760000000, !dbg !127
  %cmp.i.i1264.15 = fcmp contract olt float %mul863.15, -1.260000e+02, !dbg !128
  %cond2.i.i1267.15 = select contract i1 %cmp.i.i1264.15, float 0x3BF0000000000000, float 1.000000e+00, !dbg !128
  %cond.i.i1265.15 = select contract i1 %cmp.i.i1264.15, float 6.400000e+01, float 0.000000e+00, !dbg !128
  %add.i.i1266.15 = fadd contract float %mul863.15, %cond.i.i1265.15, !dbg !128
  %562 = tail call contract float @llvm.exp2.f32(float %add.i.i1266.15), !dbg !128
  %mul.i.i1268.15 = fmul contract float %cond2.i.i1267.15, %562, !dbg !128
  %add891.15 = fadd contract float %mul.i.i1268.15, 1.000000e+00, !dbg !131
  %div906.15 = fdiv contract float 1.000000e+00, %add891.15, !dbg !132
  %mul922.15 = fmul contract float %gate_logits_local.sroa.422.252.vec.extract, %div906.15, !dbg !133
  %gate_logits_local.sroa.422.248.vec.extract = extractelement <4 x float> %276, i64 2, !dbg !126
  %mul859.15 = fmul contract float %gate_logits_local.sroa.422.248.vec.extract, 0xBFF7154760000000, !dbg !134
  %cmp.i.i1259.15 = fcmp contract olt float %mul859.15, -1.260000e+02, !dbg !135
  %cond2.i.i1262.15 = select contract i1 %cmp.i.i1259.15, float 0x3BF0000000000000, float 1.000000e+00, !dbg !135
  %cond.i.i1260.15 = select contract i1 %cmp.i.i1259.15, float 6.400000e+01, float 0.000000e+00, !dbg !135
  %add.i.i1261.15 = fadd contract float %mul859.15, %cond.i.i1260.15, !dbg !135
  %563 = tail call contract float @llvm.exp2.f32(float %add.i.i1261.15), !dbg !135
  %mul.i.i1263.15 = fmul contract float %cond2.i.i1262.15, %563, !dbg !135
  %add887.15 = fadd contract float %mul.i.i1263.15, 1.000000e+00, !dbg !137
  %div902.15 = fdiv contract float 1.000000e+00, %add887.15, !dbg !138
  %mul918.15 = fmul contract float %gate_logits_local.sroa.422.248.vec.extract, %div902.15, !dbg !139
  %gate_logits_local.sroa.422.244.vec.extract = extractelement <4 x float> %276, i64 1, !dbg !126
  %mul855.15 = fmul contract float %gate_logits_local.sroa.422.244.vec.extract, 0xBFF7154760000000, !dbg !140
  %cmp.i.i1254.15 = fcmp contract olt float %mul855.15, -1.260000e+02, !dbg !141
  %cond2.i.i1257.15 = select contract i1 %cmp.i.i1254.15, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %cond.i.i1255.15 = select contract i1 %cmp.i.i1254.15, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i1256.15 = fadd contract float %mul855.15, %cond.i.i1255.15, !dbg !141
  %564 = tail call contract float @llvm.exp2.f32(float %add.i.i1256.15), !dbg !141
  %mul.i.i1258.15 = fmul contract float %cond2.i.i1257.15, %564, !dbg !141
  %add883.15 = fadd contract float %mul.i.i1258.15, 1.000000e+00, !dbg !143
  %div898.15 = fdiv contract float 1.000000e+00, %add883.15, !dbg !144
  %mul914.15 = fmul contract float %gate_logits_local.sroa.422.244.vec.extract, %div898.15, !dbg !145
  %gate_logits_local.sroa.422.240.vec.extract = extractelement <4 x float> %276, i64 0, !dbg !126
  %mul851.15 = fmul contract float %gate_logits_local.sroa.422.240.vec.extract, 0xBFF7154760000000, !dbg !146
  %cmp.i.i.15 = fcmp contract olt float %mul851.15, -1.260000e+02, !dbg !147
  %cond2.i.i.15 = select contract i1 %cmp.i.i.15, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %cond.i.i1253.15 = select contract i1 %cmp.i.i.15, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i.15 = fadd contract float %mul851.15, %cond.i.i1253.15, !dbg !147
  %565 = tail call contract float @llvm.exp2.f32(float %add.i.i.15), !dbg !147
  %mul.i.i.15 = fmul contract float %cond2.i.i.15, %565, !dbg !147
  %add879.15 = fadd contract float %mul.i.i.15, 1.000000e+00, !dbg !149
  %div.15 = fdiv contract float 1.000000e+00, %add879.15, !dbg !150
  %mul910.15 = fmul contract float %gate_logits_local.sroa.422.240.vec.extract, %div.15, !dbg !151
  %up_logits_local.sroa.362.240.vec.extract = extractelement <4 x float> %308, i64 0, !dbg !152
  %up_logits_local.sroa.362.244.vec.extract = extractelement <4 x float> %308, i64 1, !dbg !152
  %up_logits_local.sroa.362.248.vec.extract = extractelement <4 x float> %308, i64 2, !dbg !152
  %up_logits_local.sroa.362.252.vec.extract = extractelement <4 x float> %308, i64 3, !dbg !152
  %mul973.15 = fmul contract float %mul910.15, %up_logits_local.sroa.362.240.vec.extract, !dbg !153
  %mul977.15 = fmul contract float %mul914.15, %up_logits_local.sroa.362.244.vec.extract, !dbg !154
  %mul981.15 = fmul contract float %mul918.15, %up_logits_local.sroa.362.248.vec.extract, !dbg !155
  %mul985.15 = fmul contract float %mul922.15, %up_logits_local.sroa.362.252.vec.extract, !dbg !156
  %566 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %567 = fptrunc float %mul973.15 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %566), !dbg !157, !noalias !165
  %568 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %569 = fptrunc float %mul977.15 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %568), !dbg !170, !noalias !165
  %570 = bitcast half %567 to i16, !dbg !172
  %571 = bitcast half %569 to i16, !dbg !175
  %572 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !180
  %573 = fptrunc float %mul981.15 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %572), !dbg !176, !noalias !180
  %574 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !185, !noalias !180
  %575 = fptrunc float %mul985.15 to half, !dbg !185
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %574), !dbg !185, !noalias !180
  %576 = bitcast half %573 to i16, !dbg !187
  %577 = bitcast half %575 to i16, !dbg !189
  %578 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep1316, i64 %add1012, !dbg !190
  %gep1317.15 = getelementptr i8, ptr addrspace(1) %578, i64 65760, !dbg !190
  %__7.sroa.6.0.insert.ext.15 = zext i16 %577 to i64, !dbg !191
  %__7.sroa.6.0.insert.shift.15 = shl nuw i64 %__7.sroa.6.0.insert.ext.15, 48, !dbg !191
  %__7.sroa.5.0.insert.ext.15 = zext i16 %576 to i64, !dbg !191
  %__7.sroa.5.0.insert.shift.15 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.15, 32, !dbg !191
  %__7.sroa.5.0.insert.insert.15 = or disjoint i64 %__7.sroa.6.0.insert.shift.15, %__7.sroa.5.0.insert.shift.15, !dbg !191
  %__7.sroa.4.0.insert.ext.15 = zext i16 %571 to i64, !dbg !191
  %__7.sroa.4.0.insert.shift.15 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.15, 16, !dbg !191
  %__7.sroa.4.0.insert.insert.15 = or disjoint i64 %__7.sroa.5.0.insert.insert.15, %__7.sroa.4.0.insert.shift.15, !dbg !191
  %__7.sroa.0.0.insert.ext.15 = zext i16 %570 to i64, !dbg !191
  %__7.sroa.0.0.insert.insert.15 = or disjoint i64 %__7.sroa.4.0.insert.insert.15, %__7.sroa.0.0.insert.ext.15, !dbg !191
  store i64 %__7.sroa.0.0.insert.insert.15, ptr addrspace(1) %gep1317.15, align 8, !dbg !191
  br label %if.end1030.15, !dbg !192

if.end1030.15:                                    ; preds = %if.then962.15, %if.end1030.14
  ret void, !dbg !195
}

; Function Attrs: convergent nounwind willreturn memory(none)
declare <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half>, <4 x half>, <4 x float>) #4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected metaxgpu_kernel void @kernel_kernel_1(ptr addrspace(1) noalias nocapture noundef readonly %group_idx_for_bx.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_offsets.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_padded_offsets.coerce, ptr addrspace(1) noalias nocapture noundef readonly %group_sizes.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %routed_expert_down.coerce, ptr addrspace(4) noalias nocapture noundef readonly %routed_expert_weights.coerce, ptr addrspace(4) noalias nocapture noundef readonly %up_logits.coerce) local_unnamed_addr #3 !dbg !196 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !197, !range !29
  %idxprom = zext nneg i32 %0 to i64, !dbg !199
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %group_idx_for_bx.coerce, i64 %idxprom, !dbg !199
  %1 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !199, !tbaa !30
  %idxprom9 = sext i32 %1 to i64, !dbg !200
  %arrayidx10 = getelementptr inbounds i32, ptr addrspace(1) %group_sizes.coerce, i64 %idxprom9, !dbg !200
  %2 = load i32, ptr addrspace(1) %arrayidx10, align 4, !dbg !200, !tbaa !30
  %mul = shl nsw i32 %0, 7, !dbg !201
  %arrayidx13 = getelementptr inbounds i32, ptr addrspace(1) %group_offsets.coerce, i64 %idxprom9, !dbg !202
  %3 = load i32, ptr addrspace(1) %arrayidx13, align 4, !dbg !202, !tbaa !30
  %arrayidx15 = getelementptr inbounds i32, ptr addrspace(1) %group_padded_offsets.coerce, i64 %idxprom9, !dbg !203
  %4 = load i32, ptr addrspace(1) %arrayidx15, align 4, !dbg !203, !tbaa !30
  %add18 = sub i32 %2, %mul, !dbg !204
  %sub21 = add i32 %add18, %4, !dbg !205
  %add = add nsw i32 %3, %mul, !dbg !206
  %sub = sub i32 %add, %4, !dbg !207
  %mul31 = mul nsw i32 %1, 14680064
  %5 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul33 = shl nsw i32 %5, 19
  %6 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %7 = shl nuw nsw i32 %6, 8
  %mul38 = and i32 %7, 260096
  %and = shl nuw nsw i32 %6, 3
  %mul41 = and i32 %and, 56
  %add34 = or disjoint i32 %mul38, %mul33
  %add36 = or disjoint i32 %add34, %mul41
  %add39 = add i32 %add36, %mul31
  %mul48 = and i32 %and, 8128
  %add56813 = and i32 %and, 32
  %and51814 = add nuw nsw i32 %add56813, %6
  %mul58 = and i32 %and51814, 32
  %add66815 = and i32 %and, 16
  %and61816 = add nuw nsw i32 %add66815, %6
  %mul68 = and i32 %and61816, 16
  %and71818 = mul nuw nsw i32 %6, 9
  %mul77 = and i32 %and71818, 8
  %idx.ext43 = sext i32 %add39 to i64, !dbg !208
  %add.ptr44 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %idx.ext43, !dbg !208
  %8 = or disjoint i32 %mul48, %mul58, !dbg !209
  %9 = or disjoint i32 %8, %mul68, !dbg !210
  %10 = or disjoint i32 %9, %mul77, !dbg !211
  %add.ptr80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %10, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %11 = sext i32 %add39 to i64, !dbg !208
  %12 = getelementptr %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %11, !dbg !208
  %add.ptr44.1 = getelementptr i8, ptr addrspace(4) %12, i64 131072, !dbg !208
  %13 = add nuw nsw i32 %mul48, 2048, !dbg !214
  %14 = or disjoint i32 %13, %mul58, !dbg !209
  %15 = or disjoint i32 %14, %mul68, !dbg !210
  %16 = or disjoint i32 %15, %mul77, !dbg !211
  %add.ptr80.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %16, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.1, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %17 = sext i32 %add39 to i64, !dbg !208
  %18 = getelementptr %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %17, !dbg !208
  %add.ptr44.2 = getelementptr i8, ptr addrspace(4) %18, i64 262144, !dbg !208
  %19 = add nuw nsw i32 %mul48, 4096, !dbg !214
  %20 = or disjoint i32 %19, %mul58, !dbg !209
  %21 = or disjoint i32 %20, %mul68, !dbg !210
  %22 = or disjoint i32 %21, %mul77, !dbg !211
  %add.ptr80.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %22, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.2, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %23 = sext i32 %add39 to i64, !dbg !208
  %24 = getelementptr %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %23, !dbg !208
  %add.ptr44.3 = getelementptr i8, ptr addrspace(4) %24, i64 393216, !dbg !208
  %25 = add nuw nsw i32 %mul48, 6144, !dbg !214
  %26 = or disjoint i32 %25, %mul58, !dbg !209
  %27 = or disjoint i32 %26, %mul68, !dbg !210
  %28 = or disjoint i32 %27, %mul77, !dbg !211
  %add.ptr80.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %28, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.3, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %add42.4 = or disjoint i32 %add39, 262144, !dbg !215
  %idx.ext43.4 = sext i32 %add42.4 to i64, !dbg !208
  %add.ptr44.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %idx.ext43.4, !dbg !208
  %29 = or disjoint i32 %mul48, %mul58, !dbg !209
  %30 = or disjoint i32 %29, %mul68, !dbg !210
  %31 = or disjoint i32 %30, %mul77, !dbg !211
  %32 = or disjoint i32 %31, 8192, !dbg !211
  %add.ptr80.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %32, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.4, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.4, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %add42.5 = add i32 %add39, 327680, !dbg !215
  %idx.ext43.5 = sext i32 %add42.5 to i64, !dbg !208
  %add.ptr44.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %idx.ext43.5, !dbg !208
  %33 = add nuw nsw i32 %mul48, 10240, !dbg !214
  %34 = or disjoint i32 %33, %mul58, !dbg !209
  %35 = or disjoint i32 %34, %mul68, !dbg !210
  %36 = or disjoint i32 %35, %mul77, !dbg !211
  %add.ptr80.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %36, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.5, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.5, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %add42.6 = add i32 %add39, 393216, !dbg !215
  %idx.ext43.6 = sext i32 %add42.6 to i64, !dbg !208
  %add.ptr44.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %idx.ext43.6, !dbg !208
  %37 = add nuw nsw i32 %mul48, 12288, !dbg !214
  %38 = or disjoint i32 %37, %mul58, !dbg !209
  %39 = or disjoint i32 %38, %mul68, !dbg !210
  %40 = or disjoint i32 %39, %mul77, !dbg !211
  %add.ptr80.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %40, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.6, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.6, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %add42.7 = add i32 %add39, 458752, !dbg !215
  %idx.ext43.7 = sext i32 %add42.7 to i64, !dbg !208
  %add.ptr44.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %routed_expert_down.coerce, i64 %idx.ext43.7, !dbg !208
  %narrow1797 = add nuw nsw i32 %mul48, 14336, !dbg !214
  %41 = or disjoint i32 %narrow1797, %mul58, !dbg !209
  %42 = or disjoint i32 %41, %mul68, !dbg !210
  %43 = or disjoint i32 %42, %mul77, !dbg !211
  %add.ptr80.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %43, !dbg !212
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.7, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr44.7, i64 16, i1 false), !dbg !213, !tbaa.struct !62, !call_argsrelate !63
  %44 = lshr i32 %6, 1
  %mul95 = and i32 %44, 480
  %and101 = and i32 %6, 15
  %add98 = or disjoint i32 %mul95, %and101
  %add99 = add i32 %add98, %sub
  %45 = shl nuw nsw i32 %6, 10
  %46 = and i32 %45, 983040
  %conv122 = sext i32 %sub to i64
  %mul123 = shl nsw i64 %conv122, 11
  %47 = shl nuw nsw i32 %6, 11
  %48 = and i32 %47, 30720
  %add121905 = or disjoint i32 %48, %46
  %add121 = zext nneg i32 %add121905 to i64
  %add124 = add nsw i64 %mul123, %add121
  %49 = and i32 %44, 24
  %mul141 = zext nneg i32 %49 to i64
  %invariant.gep = getelementptr %struct.__half, ptr addrspace(4) %up_logits.coerce, i64 %mul141
  %and181 = shl nuw nsw i32 %6, 6
  %mul182 = and i32 %and181, 960
  %and185 = lshr i32 %6, 2
  %and192 = lshr i32 %6, 5
  %add197 = add nuw nsw i32 %and192, %44
  %and198 = shl nuw nsw i32 %add197, 4
  %mul199 = and i32 %and198, 16
  %and202 = lshr i32 %6, 4
  %add206 = add nuw nsw i32 %and202, %6
  %and207 = shl nuw nsw i32 %add206, 3
  %mul208 = and i32 %and207, 8
  %invariant.gep886 = getelementptr i8, ptr addrspace(4) %routed_expert_down.coerce, i64 128
  %or.cond = icmp ult i32 %add99, 4544
  %add102.1 = add i32 %add99, 16
  %or.cond.1 = icmp ult i32 %add102.1, 4544
  %and188 = shl nuw nsw i32 %and185, 5
  %mul189 = and i32 %and188, 32
  %add190 = or disjoint i32 %mul182, %mul189
  %add200 = or disjoint i32 %add190, %mul199
  %add209 = or disjoint i32 %add200, %mul208
  %add.ptr211 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209
  %down_weight_local.sroa.14.0.add.ptr211.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211, i32 8
  %add183.1 = or disjoint i32 %mul182, 1024
  %add190.1 = or disjoint i32 %add183.1, %mul189
  %add200.1 = or disjoint i32 %add190.1, %mul199
  %add209.1 = or disjoint i32 %add200.1, %mul208
  %add.ptr211.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.1
  %down_weight_local.sroa.34.16.add.ptr211.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1, i32 8
  %add183.2 = or disjoint i32 %mul182, 2048
  %add190.2 = or disjoint i32 %add183.2, %mul189
  %add200.2 = or disjoint i32 %add190.2, %mul199
  %add209.2 = or disjoint i32 %add200.2, %mul208
  %add.ptr211.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.2
  %down_weight_local.sroa.54.32.add.ptr211.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.2, i32 8
  %add183.3 = or disjoint i32 %mul182, 3072
  %add190.3 = or disjoint i32 %add183.3, %mul189
  %add200.3 = or disjoint i32 %add190.3, %mul199
  %add209.3 = or disjoint i32 %add200.3, %mul208
  %add.ptr211.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.3
  %down_weight_local.sroa.74.48.add.ptr211.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.3, i32 8
  %add183.4 = or disjoint i32 %mul182, 4096
  %add190.4 = or disjoint i32 %add183.4, %mul189
  %add200.4 = or disjoint i32 %add190.4, %mul199
  %add209.4 = or disjoint i32 %add200.4, %mul208
  %add.ptr211.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.4
  %down_weight_local.sroa.94.64.add.ptr211.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.4, i32 8
  %add183.5 = or disjoint i32 %mul182, 5120
  %add190.5 = or disjoint i32 %add183.5, %mul189
  %add200.5 = or disjoint i32 %add190.5, %mul199
  %add209.5 = or disjoint i32 %add200.5, %mul208
  %add.ptr211.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.5
  %down_weight_local.sroa.114.80.add.ptr211.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.5, i32 8
  %add183.6 = or disjoint i32 %mul182, 6144
  %add190.6 = or disjoint i32 %add183.6, %mul189
  %add200.6 = or disjoint i32 %add190.6, %mul199
  %add209.6 = or disjoint i32 %add200.6, %mul208
  %add.ptr211.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.6
  %down_weight_local.sroa.134.96.add.ptr211.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.6, i32 8
  %add183.7 = or disjoint i32 %mul182, 7168
  %add190.7 = or disjoint i32 %add183.7, %mul189
  %add200.7 = or disjoint i32 %add190.7, %mul199
  %add209.7 = or disjoint i32 %add200.7, %mul208
  %add.ptr211.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.7
  %down_weight_local.sroa.154.112.add.ptr211.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.7, i32 8
  %add183.8 = or disjoint i32 %mul182, 8192
  %add190.8 = or disjoint i32 %add183.8, %mul189
  %add200.8 = or disjoint i32 %add190.8, %mul199
  %add209.8 = or disjoint i32 %add200.8, %mul208
  %add.ptr211.8 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.8
  %down_weight_local.sroa.174.128.add.ptr211.8.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.8, i32 8
  %add183.9 = or disjoint i32 %mul182, 9216
  %add190.9 = or disjoint i32 %add183.9, %mul189
  %add200.9 = or disjoint i32 %add190.9, %mul199
  %add209.9 = or disjoint i32 %add200.9, %mul208
  %add.ptr211.9 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.9
  %down_weight_local.sroa.194.144.add.ptr211.9.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.9, i32 8
  %add183.10 = or disjoint i32 %mul182, 10240
  %add190.10 = or disjoint i32 %add183.10, %mul189
  %add200.10 = or disjoint i32 %add190.10, %mul199
  %add209.10 = or disjoint i32 %add200.10, %mul208
  %add.ptr211.10 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.10
  %down_weight_local.sroa.214.160.add.ptr211.10.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.10, i32 8
  %add183.11 = or disjoint i32 %mul182, 11264
  %add190.11 = or disjoint i32 %add183.11, %mul189
  %add200.11 = or disjoint i32 %add190.11, %mul199
  %add209.11 = or disjoint i32 %add200.11, %mul208
  %add.ptr211.11 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.11
  %down_weight_local.sroa.234.176.add.ptr211.11.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.11, i32 8
  %add183.12 = or disjoint i32 %mul182, 12288
  %add190.12 = or disjoint i32 %add183.12, %mul189
  %add200.12 = or disjoint i32 %add190.12, %mul199
  %add209.12 = or disjoint i32 %add200.12, %mul208
  %add.ptr211.12 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.12
  %down_weight_local.sroa.254.192.add.ptr211.12.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.12, i32 8
  %add183.13 = or disjoint i32 %mul182, 13312
  %add190.13 = or disjoint i32 %add183.13, %mul189
  %add200.13 = or disjoint i32 %add190.13, %mul199
  %add209.13 = or disjoint i32 %add200.13, %mul208
  %add.ptr211.13 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.13
  %down_weight_local.sroa.274.208.add.ptr211.13.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.13, i32 8
  %add183.14 = or disjoint i32 %mul182, 14336
  %add190.14 = or disjoint i32 %add183.14, %mul189
  %add200.14 = or disjoint i32 %add190.14, %mul199
  %add209.14 = or disjoint i32 %add200.14, %mul208
  %add.ptr211.14 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.14
  %down_weight_local.sroa.294.224.add.ptr211.14.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.14, i32 8
  %add183.15 = or disjoint i32 %mul182, 15360
  %add190.15 = or disjoint i32 %add183.15, %mul189
  %add200.15 = or disjoint i32 %add190.15, %mul199
  %add209.15 = or disjoint i32 %add200.15, %mul208
  %add.ptr211.15 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.15
  %down_weight_local.sroa.314.240.add.ptr211.15.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.15, i32 8
  %add187.1 = shl nuw nsw i32 %and185, 5
  %50 = and i32 %add187.1, 32
  %mul189.1 = xor i32 %50, 32
  %add190.1945 = or disjoint i32 %mul182, %mul189.1
  %add200.1946 = or disjoint i32 %add190.1945, %mul199
  %add209.1947 = or disjoint i32 %add200.1946, %mul208
  %add.ptr211.1948 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.1947
  %down_weight_local.sroa.14.0.add.ptr211.1948.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1948, i32 8
  %add190.1.1 = or disjoint i32 %add183.1, %mul189.1
  %add200.1.1 = or disjoint i32 %add190.1.1, %mul199
  %add209.1.1 = or disjoint i32 %add200.1.1, %mul208
  %add.ptr211.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.1.1
  %down_weight_local.sroa.34.16.add.ptr211.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1.1, i32 8
  %add190.2.1 = or disjoint i32 %add183.2, %mul189.1
  %add200.2.1 = or disjoint i32 %add190.2.1, %mul199
  %add209.2.1 = or disjoint i32 %add200.2.1, %mul208
  %add.ptr211.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.2.1
  %down_weight_local.sroa.54.32.add.ptr211.2.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.2.1, i32 8
  %add190.3.1 = or disjoint i32 %add183.3, %mul189.1
  %add200.3.1 = or disjoint i32 %add190.3.1, %mul199
  %add209.3.1 = or disjoint i32 %add200.3.1, %mul208
  %add.ptr211.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.3.1
  %down_weight_local.sroa.74.48.add.ptr211.3.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.3.1, i32 8
  %add190.4.1 = or disjoint i32 %add183.4, %mul189.1
  %add200.4.1 = or disjoint i32 %add190.4.1, %mul199
  %add209.4.1 = or disjoint i32 %add200.4.1, %mul208
  %add.ptr211.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.4.1
  %down_weight_local.sroa.94.64.add.ptr211.4.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.4.1, i32 8
  %add190.5.1 = or disjoint i32 %add183.5, %mul189.1
  %add200.5.1 = or disjoint i32 %add190.5.1, %mul199
  %add209.5.1 = or disjoint i32 %add200.5.1, %mul208
  %add.ptr211.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.5.1
  %down_weight_local.sroa.114.80.add.ptr211.5.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.5.1, i32 8
  %add190.6.1 = or disjoint i32 %add183.6, %mul189.1
  %add200.6.1 = or disjoint i32 %add190.6.1, %mul199
  %add209.6.1 = or disjoint i32 %add200.6.1, %mul208
  %add.ptr211.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.6.1
  %down_weight_local.sroa.134.96.add.ptr211.6.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.6.1, i32 8
  %add190.7.1 = or disjoint i32 %add183.7, %mul189.1
  %add200.7.1 = or disjoint i32 %add190.7.1, %mul199
  %add209.7.1 = or disjoint i32 %add200.7.1, %mul208
  %add.ptr211.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.7.1
  %down_weight_local.sroa.154.112.add.ptr211.7.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.7.1, i32 8
  %add190.8.1 = or disjoint i32 %add183.8, %mul189.1
  %add200.8.1 = or disjoint i32 %add190.8.1, %mul199
  %add209.8.1 = or disjoint i32 %add200.8.1, %mul208
  %add.ptr211.8.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.8.1
  %down_weight_local.sroa.174.128.add.ptr211.8.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.8.1, i32 8
  %add190.9.1 = or disjoint i32 %add183.9, %mul189.1
  %add200.9.1 = or disjoint i32 %add190.9.1, %mul199
  %add209.9.1 = or disjoint i32 %add200.9.1, %mul208
  %add.ptr211.9.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.9.1
  %down_weight_local.sroa.194.144.add.ptr211.9.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.9.1, i32 8
  %add190.10.1 = or disjoint i32 %add183.10, %mul189.1
  %add200.10.1 = or disjoint i32 %add190.10.1, %mul199
  %add209.10.1 = or disjoint i32 %add200.10.1, %mul208
  %add.ptr211.10.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.10.1
  %down_weight_local.sroa.214.160.add.ptr211.10.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.10.1, i32 8
  %add190.11.1 = or disjoint i32 %add183.11, %mul189.1
  %add200.11.1 = or disjoint i32 %add190.11.1, %mul199
  %add209.11.1 = or disjoint i32 %add200.11.1, %mul208
  %add.ptr211.11.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.11.1
  %down_weight_local.sroa.234.176.add.ptr211.11.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.11.1, i32 8
  %add190.12.1 = or disjoint i32 %add183.12, %mul189.1
  %add200.12.1 = or disjoint i32 %add190.12.1, %mul199
  %add209.12.1 = or disjoint i32 %add200.12.1, %mul208
  %add.ptr211.12.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.12.1
  %down_weight_local.sroa.254.192.add.ptr211.12.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.12.1, i32 8
  %add190.13.1 = or disjoint i32 %add183.13, %mul189.1
  %add200.13.1 = or disjoint i32 %add190.13.1, %mul199
  %add209.13.1 = or disjoint i32 %add200.13.1, %mul208
  %add.ptr211.13.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.13.1
  %down_weight_local.sroa.274.208.add.ptr211.13.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.13.1, i32 8
  %add190.14.1 = or disjoint i32 %add183.14, %mul189.1
  %add200.14.1 = or disjoint i32 %add190.14.1, %mul199
  %add209.14.1 = or disjoint i32 %add200.14.1, %mul208
  %add.ptr211.14.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.14.1
  %down_weight_local.sroa.294.224.add.ptr211.14.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.14.1, i32 8
  %add190.15.1 = or disjoint i32 %add183.15, %mul189.1
  %add200.15.1 = or disjoint i32 %add190.15.1, %mul199
  %add209.15.1 = or disjoint i32 %add200.15.1, %mul208
  %add.ptr211.15.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @routed_expert_down_shared, i32 %add209.15.1
  %down_weight_local.sroa.314.240.add.ptr211.15.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.15.1, i32 8
  br label %for.cond89.preheader, !dbg !216

for.cond89.preheader:                             ; preds = %entry, %if.end.3
  %output_local.sroa.746.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %189, %if.end.3 ], !dbg !217
  %output_local.sroa.722.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %188, %if.end.3 ], !dbg !217
  %output_local.sroa.698.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %187, %if.end.3 ], !dbg !217
  %output_local.sroa.674.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %186, %if.end.3 ], !dbg !217
  %output_local.sroa.650.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %185, %if.end.3 ], !dbg !217
  %output_local.sroa.626.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %184, %if.end.3 ], !dbg !217
  %output_local.sroa.602.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %183, %if.end.3 ], !dbg !217
  %output_local.sroa.578.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %182, %if.end.3 ], !dbg !217
  %output_local.sroa.554.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %181, %if.end.3 ], !dbg !217
  %output_local.sroa.530.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %180, %if.end.3 ], !dbg !217
  %output_local.sroa.506.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %179, %if.end.3 ], !dbg !217
  %output_local.sroa.482.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %178, %if.end.3 ], !dbg !217
  %output_local.sroa.458.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %177, %if.end.3 ], !dbg !217
  %output_local.sroa.434.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %176, %if.end.3 ], !dbg !217
  %output_local.sroa.410.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %175, %if.end.3 ], !dbg !217
  %output_local.sroa.386.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %174, %if.end.3 ], !dbg !217
  %output_local.sroa.362.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %172, %if.end.3 ], !dbg !217
  %output_local.sroa.338.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %171, %if.end.3 ], !dbg !217
  %output_local.sroa.314.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %170, %if.end.3 ], !dbg !217
  %output_local.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %169, %if.end.3 ], !dbg !217
  %output_local.sroa.266.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %168, %if.end.3 ], !dbg !217
  %output_local.sroa.242.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %167, %if.end.3 ], !dbg !217
  %output_local.sroa.218.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %166, %if.end.3 ], !dbg !217
  %output_local.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %165, %if.end.3 ], !dbg !217
  %output_local.sroa.170.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %164, %if.end.3 ], !dbg !217
  %output_local.sroa.146.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %163, %if.end.3 ], !dbg !217
  %output_local.sroa.122.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %162, %if.end.3 ], !dbg !217
  %output_local.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %161, %if.end.3 ], !dbg !217
  %output_local.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %160, %if.end.3 ], !dbg !217
  %output_local.sroa.50.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %159, %if.end.3 ], !dbg !217
  %output_local.sroa.26.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %158, %if.end.3 ], !dbg !217
  %output_local.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %157, %if.end.3 ], !dbg !217
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end.3 ]
  %51 = shl nuw nsw i64 %indvars.iv, 6
  %add129 = add nuw nsw i64 %add124, %51
  br i1 %or.cond, label %if.then, label %if.end, !dbg !218

for.cond330.preheader:                            ; preds = %if.end.3
  %down_weight_local.sroa.14.0.add.ptr211.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211, i32 8
  %down_weight_local.sroa.34.16.add.ptr211.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1, i32 8
  %down_weight_local.sroa.54.32.add.ptr211.2.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.2, i32 8
  %down_weight_local.sroa.74.48.add.ptr211.3.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.3, i32 8
  %down_weight_local.sroa.94.64.add.ptr211.4.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.4, i32 8
  %down_weight_local.sroa.114.80.add.ptr211.5.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.5, i32 8
  %down_weight_local.sroa.134.96.add.ptr211.6.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.6, i32 8
  %down_weight_local.sroa.154.112.add.ptr211.7.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.7, i32 8
  %down_weight_local.sroa.174.128.add.ptr211.8.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.8, i32 8
  %down_weight_local.sroa.194.144.add.ptr211.9.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.9, i32 8
  %down_weight_local.sroa.214.160.add.ptr211.10.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.10, i32 8
  %down_weight_local.sroa.234.176.add.ptr211.11.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.11, i32 8
  %down_weight_local.sroa.254.192.add.ptr211.12.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.12, i32 8
  %down_weight_local.sroa.274.208.add.ptr211.13.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.13, i32 8
  %down_weight_local.sroa.294.224.add.ptr211.14.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.14, i32 8
  %down_weight_local.sroa.314.240.add.ptr211.15.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.15, i32 8
  %down_weight_local.sroa.14.0.add.ptr211.1948.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1948, i32 8
  %down_weight_local.sroa.34.16.add.ptr211.1.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.1.1, i32 8
  %down_weight_local.sroa.54.32.add.ptr211.2.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.2.1, i32 8
  %down_weight_local.sroa.74.48.add.ptr211.3.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.3.1, i32 8
  %down_weight_local.sroa.94.64.add.ptr211.4.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.4.1, i32 8
  %down_weight_local.sroa.114.80.add.ptr211.5.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.5.1, i32 8
  %down_weight_local.sroa.134.96.add.ptr211.6.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.6.1, i32 8
  %down_weight_local.sroa.154.112.add.ptr211.7.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.7.1, i32 8
  %down_weight_local.sroa.174.128.add.ptr211.8.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.8.1, i32 8
  %down_weight_local.sroa.194.144.add.ptr211.9.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.9.1, i32 8
  %down_weight_local.sroa.214.160.add.ptr211.10.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.10.1, i32 8
  %down_weight_local.sroa.234.176.add.ptr211.11.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.11.1, i32 8
  %down_weight_local.sroa.254.192.add.ptr211.12.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.12.1, i32 8
  %down_weight_local.sroa.274.208.add.ptr211.13.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.13.1, i32 8
  %down_weight_local.sroa.294.224.add.ptr211.14.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.14.1, i32 8
  %down_weight_local.sroa.314.240.add.ptr211.15.1.sroa_idx.le = getelementptr inbounds i8, ptr addrspace(3) %add.ptr211.15.1, i32 8
  %add368909 = or disjoint i32 %add121905, %49
  %add368 = zext nneg i32 %add368909 to i64
  %add373 = add nsw i64 %mul123, %add368
  br i1 %or.cond, label %if.then357, label %if.end409, !dbg !219

if.then:                                          ; preds = %for.cond89.preheader
  %gep = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add129, !dbg !220
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep, align 16, !dbg !221, !tbaa !30
  %condval.sroa.5.0.add.ptr143.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 4, !dbg !221
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr143.sroa_idx, align 4, !dbg !221, !tbaa !30
  %condval.sroa.6.0.add.ptr143.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 8, !dbg !221
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr143.sroa_idx, align 8, !dbg !221, !tbaa !30
  %condval.sroa.7.0.add.ptr143.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 12, !dbg !221
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr143.sroa_idx, align 4, !dbg !221, !tbaa !30
  br label %if.end, !dbg !222

if.end:                                           ; preds = %for.cond89.preheader, %if.then
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then ], [ 0, %for.cond89.preheader ], !dbg !217
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then ], [ 0, %for.cond89.preheader ], !dbg !217
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then ], [ 0, %for.cond89.preheader ], !dbg !217
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then ], [ 0, %for.cond89.preheader ], !dbg !217
  %up_logits_shared.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0, i64 0, !dbg !223
  %up_logits_shared.sroa.0.4.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.0.0.vec.insert, i32 %condval.sroa.5.0, i64 1, !dbg !223
  %up_logits_shared.sroa.8.8.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0, i64 0, !dbg !223
  %up_logits_shared.sroa.8.12.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.8.8.vec.insert, i32 %condval.sroa.7.0, i64 1, !dbg !223
  br i1 %or.cond.1, label %if.then.1, label %if.end.1, !dbg !218

if.then.1:                                        ; preds = %if.end
  %52 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add129, !dbg !220
  %gep.1 = getelementptr i8, ptr addrspace(4) %52, i64 65536, !dbg !220
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep.1, align 16, !dbg !221, !tbaa !30
  %condval.sroa.5.0.add.ptr143.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %52, i64 65540, !dbg !221
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr143.sroa_idx.1, align 4, !dbg !221, !tbaa !30
  %condval.sroa.6.0.add.ptr143.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %52, i64 65544, !dbg !221
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr143.sroa_idx.1, align 8, !dbg !221, !tbaa !30
  %condval.sroa.7.0.add.ptr143.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %52, i64 65548, !dbg !221
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr143.sroa_idx.1, align 4, !dbg !221, !tbaa !30
  br label %if.end.1, !dbg !222

if.end.1:                                         ; preds = %if.then.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !217
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !217
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !217
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then.1 ], [ 0, %if.end ], !dbg !217
  %up_logits_shared.sroa.14.16.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.1, i64 0, !dbg !223
  %up_logits_shared.sroa.14.20.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.14.16.vec.insert, i32 %condval.sroa.5.0.1, i64 1, !dbg !223
  %up_logits_shared.sroa.20.24.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.1, i64 0, !dbg !223
  %up_logits_shared.sroa.20.28.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.20.24.vec.insert, i32 %condval.sroa.7.0.1, i64 1, !dbg !223
  br i1 %or.cond, label %if.then.2, label %if.end.2, !dbg !218

if.then.2:                                        ; preds = %if.end.1
  %add136.2 = or disjoint i64 %add129, 32, !dbg !224
  %gep.2 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add136.2, !dbg !220
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep.2, align 16, !dbg !221, !tbaa !30
  %condval.sroa.5.0.add.ptr143.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 4, !dbg !221
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr143.sroa_idx.2, align 4, !dbg !221, !tbaa !30
  %condval.sroa.6.0.add.ptr143.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 8, !dbg !221
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr143.sroa_idx.2, align 8, !dbg !221, !tbaa !30
  %condval.sroa.7.0.add.ptr143.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 12, !dbg !221
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr143.sroa_idx.2, align 4, !dbg !221, !tbaa !30
  br label %if.end.2, !dbg !222

if.end.2:                                         ; preds = %if.then.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !217
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !217
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !217
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then.2 ], [ 0, %if.end.1 ], !dbg !217
  %up_logits_shared.sroa.26.32.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.2, i64 0, !dbg !223
  %up_logits_shared.sroa.26.36.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.26.32.vec.insert, i32 %condval.sroa.5.0.2, i64 1, !dbg !223
  %up_logits_shared.sroa.32.40.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.2, i64 0, !dbg !223
  %up_logits_shared.sroa.32.44.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.32.40.vec.insert, i32 %condval.sroa.7.0.2, i64 1, !dbg !223
  br i1 %or.cond.1, label %if.then.3, label %if.end.3, !dbg !218

if.then.3:                                        ; preds = %if.end.2
  %53 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add129, !dbg !220
  %gep.3 = getelementptr i8, ptr addrspace(4) %53, i64 65600, !dbg !220
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep.3, align 16, !dbg !221, !tbaa !30
  %condval.sroa.5.0.add.ptr143.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %53, i64 65604, !dbg !221
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr143.sroa_idx.3, align 4, !dbg !221, !tbaa !30
  %condval.sroa.6.0.add.ptr143.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %53, i64 65608, !dbg !221
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr143.sroa_idx.3, align 8, !dbg !221, !tbaa !30
  %condval.sroa.7.0.add.ptr143.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %53, i64 65612, !dbg !221
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr143.sroa_idx.3, align 4, !dbg !221, !tbaa !30
  br label %if.end.3, !dbg !222

if.end.3:                                         ; preds = %if.then.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !217
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !217
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !217
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then.3 ], [ 0, %if.end.2 ], !dbg !217
  %up_logits_shared.sroa.38.48.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.0.0.3, i64 0, !dbg !223
  %up_logits_shared.sroa.38.52.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.38.48.vec.insert, i32 %condval.sroa.5.0.3, i64 1, !dbg !223
  %up_logits_shared.sroa.44.56.vec.insert = insertelement <2 x i32> poison, i32 %condval.sroa.6.0.3, i64 0, !dbg !223
  %up_logits_shared.sroa.44.60.vec.insert = insertelement <2 x i32> %up_logits_shared.sroa.44.56.vec.insert, i32 %condval.sroa.7.0.3, i64 1, !dbg !223
  fence syncscope("block") release, !dbg !225
  tail call void @llvm.mxc.barrier(), !dbg !228
  fence syncscope("block") acquire, !dbg !229
  %down_weight_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211, align 16, !dbg !230
  %down_weight_local.sroa.14.0.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.14.0.add.ptr211.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.22.16.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.1, align 16, !dbg !230
  %down_weight_local.sroa.34.16.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.34.16.add.ptr211.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.42.32.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.2, align 16, !dbg !230
  %down_weight_local.sroa.54.32.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.54.32.add.ptr211.2.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.62.48.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.3, align 16, !dbg !230
  %down_weight_local.sroa.74.48.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.74.48.add.ptr211.3.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.82.64.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.4, align 16, !dbg !230
  %down_weight_local.sroa.94.64.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.94.64.add.ptr211.4.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.102.80.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.5, align 16, !dbg !230
  %down_weight_local.sroa.114.80.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.114.80.add.ptr211.5.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.122.96.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.6, align 16, !dbg !230
  %down_weight_local.sroa.134.96.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.134.96.add.ptr211.6.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.142.112.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.7, align 16, !dbg !230
  %down_weight_local.sroa.154.112.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.154.112.add.ptr211.7.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.162.128.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.8, align 16, !dbg !230
  %down_weight_local.sroa.174.128.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.174.128.add.ptr211.8.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.182.144.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.9, align 16, !dbg !230
  %down_weight_local.sroa.194.144.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.194.144.add.ptr211.9.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.202.160.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.10, align 16, !dbg !230
  %down_weight_local.sroa.214.160.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.214.160.add.ptr211.10.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.222.176.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.11, align 16, !dbg !230
  %down_weight_local.sroa.234.176.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.234.176.add.ptr211.11.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.242.192.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.12, align 16, !dbg !230
  %down_weight_local.sroa.254.192.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.254.192.add.ptr211.12.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.262.208.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.13, align 16, !dbg !230
  %down_weight_local.sroa.274.208.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.274.208.add.ptr211.13.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.282.224.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.14, align 16, !dbg !230
  %down_weight_local.sroa.294.224.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.294.224.add.ptr211.14.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.302.240.copyload = load <4 x half>, ptr addrspace(3) %add.ptr211.15, align 16, !dbg !230
  %down_weight_local.sroa.314.240.copyload = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.314.240.add.ptr211.15.sroa_idx, align 8, !dbg !230
  %54 = bitcast <2 x i32> %up_logits_shared.sroa.0.4.vec.insert to <4 x half>
  %55 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload, <4 x half> %54, <4 x float> %output_local.sroa.0.0), !dbg !231
  %56 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload, <4 x half> %54, <4 x float> %output_local.sroa.26.0), !dbg !231
  %57 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload, <4 x half> %54, <4 x float> %output_local.sroa.50.0), !dbg !231
  %58 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload, <4 x half> %54, <4 x float> %output_local.sroa.74.0), !dbg !231
  %59 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload, <4 x half> %54, <4 x float> %output_local.sroa.98.0), !dbg !231
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload, <4 x half> %54, <4 x float> %output_local.sroa.122.0), !dbg !231
  %61 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload, <4 x half> %54, <4 x float> %output_local.sroa.146.0), !dbg !231
  %62 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload, <4 x half> %54, <4 x float> %output_local.sroa.170.0), !dbg !231
  %63 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload, <4 x half> %54, <4 x float> %output_local.sroa.194.0), !dbg !231
  %64 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload, <4 x half> %54, <4 x float> %output_local.sroa.218.0), !dbg !231
  %65 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload, <4 x half> %54, <4 x float> %output_local.sroa.242.0), !dbg !231
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload, <4 x half> %54, <4 x float> %output_local.sroa.266.0), !dbg !231
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload, <4 x half> %54, <4 x float> %output_local.sroa.290.0), !dbg !231
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload, <4 x half> %54, <4 x float> %output_local.sroa.314.0), !dbg !231
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload, <4 x half> %54, <4 x float> %output_local.sroa.338.0), !dbg !231
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload, <4 x half> %54, <4 x float> %output_local.sroa.362.0), !dbg !231
  %71 = bitcast <2 x i32> %up_logits_shared.sroa.14.20.vec.insert to <4 x half>
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload, <4 x half> %71, <4 x float> %output_local.sroa.386.0), !dbg !231
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload, <4 x half> %71, <4 x float> %output_local.sroa.410.0), !dbg !231
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload, <4 x half> %71, <4 x float> %output_local.sroa.434.0), !dbg !231
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload, <4 x half> %71, <4 x float> %output_local.sroa.458.0), !dbg !231
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload, <4 x half> %71, <4 x float> %output_local.sroa.482.0), !dbg !231
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload, <4 x half> %71, <4 x float> %output_local.sroa.506.0), !dbg !231
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload, <4 x half> %71, <4 x float> %output_local.sroa.530.0), !dbg !231
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload, <4 x half> %71, <4 x float> %output_local.sroa.554.0), !dbg !231
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload, <4 x half> %71, <4 x float> %output_local.sroa.578.0), !dbg !231
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload, <4 x half> %71, <4 x float> %output_local.sroa.602.0), !dbg !231
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload, <4 x half> %71, <4 x float> %output_local.sroa.626.0), !dbg !231
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload, <4 x half> %71, <4 x float> %output_local.sroa.650.0), !dbg !231
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload, <4 x half> %71, <4 x float> %output_local.sroa.674.0), !dbg !231
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload, <4 x half> %71, <4 x float> %output_local.sroa.698.0), !dbg !231
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload, <4 x half> %71, <4 x float> %output_local.sroa.722.0), !dbg !231
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload, <4 x half> %71, <4 x float> %output_local.sroa.746.0), !dbg !231
  %88 = bitcast <2 x i32> %up_logits_shared.sroa.8.12.vec.insert to <4 x half>
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload, <4 x half> %88, <4 x float> %55), !dbg !231
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload, <4 x half> %88, <4 x float> %56), !dbg !231
  %91 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload, <4 x half> %88, <4 x float> %57), !dbg !231
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload, <4 x half> %88, <4 x float> %58), !dbg !231
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload, <4 x half> %88, <4 x float> %59), !dbg !231
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload, <4 x half> %88, <4 x float> %60), !dbg !231
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload, <4 x half> %88, <4 x float> %61), !dbg !231
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload, <4 x half> %88, <4 x float> %62), !dbg !231
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload, <4 x half> %88, <4 x float> %63), !dbg !231
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload, <4 x half> %88, <4 x float> %64), !dbg !231
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload, <4 x half> %88, <4 x float> %65), !dbg !231
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload, <4 x half> %88, <4 x float> %66), !dbg !231
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload, <4 x half> %88, <4 x float> %67), !dbg !231
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload, <4 x half> %88, <4 x float> %68), !dbg !231
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload, <4 x half> %88, <4 x float> %69), !dbg !231
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload, <4 x half> %88, <4 x float> %70), !dbg !231
  %105 = bitcast <2 x i32> %up_logits_shared.sroa.20.28.vec.insert to <4 x half>
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload, <4 x half> %105, <4 x float> %72), !dbg !231
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload, <4 x half> %105, <4 x float> %73), !dbg !231
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload, <4 x half> %105, <4 x float> %74), !dbg !231
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload, <4 x half> %105, <4 x float> %75), !dbg !231
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload, <4 x half> %105, <4 x float> %76), !dbg !231
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload, <4 x half> %105, <4 x float> %77), !dbg !231
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload, <4 x half> %105, <4 x float> %78), !dbg !231
  %113 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload, <4 x half> %105, <4 x float> %79), !dbg !231
  %114 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload, <4 x half> %105, <4 x float> %80), !dbg !231
  %115 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload, <4 x half> %105, <4 x float> %81), !dbg !231
  %116 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload, <4 x half> %105, <4 x float> %82), !dbg !231
  %117 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload, <4 x half> %105, <4 x float> %83), !dbg !231
  %118 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload, <4 x half> %105, <4 x float> %84), !dbg !231
  %119 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload, <4 x half> %105, <4 x float> %85), !dbg !231
  %120 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload, <4 x half> %105, <4 x float> %86), !dbg !231
  %121 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload, <4 x half> %105, <4 x float> %87), !dbg !231
  %down_weight_local.sroa.0.0.copyload1052 = load <4 x half>, ptr addrspace(3) %add.ptr211.1948, align 16, !dbg !230
  %down_weight_local.sroa.14.0.copyload1055 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.14.0.add.ptr211.1948.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.22.16.copyload1072 = load <4 x half>, ptr addrspace(3) %add.ptr211.1.1, align 16, !dbg !230
  %down_weight_local.sroa.34.16.copyload1075 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.34.16.add.ptr211.1.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.42.32.copyload1092 = load <4 x half>, ptr addrspace(3) %add.ptr211.2.1, align 16, !dbg !230
  %down_weight_local.sroa.54.32.copyload1095 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.54.32.add.ptr211.2.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.62.48.copyload1112 = load <4 x half>, ptr addrspace(3) %add.ptr211.3.1, align 16, !dbg !230
  %down_weight_local.sroa.74.48.copyload1115 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.74.48.add.ptr211.3.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.82.64.copyload1132 = load <4 x half>, ptr addrspace(3) %add.ptr211.4.1, align 16, !dbg !230
  %down_weight_local.sroa.94.64.copyload1135 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.94.64.add.ptr211.4.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.102.80.copyload1152 = load <4 x half>, ptr addrspace(3) %add.ptr211.5.1, align 16, !dbg !230
  %down_weight_local.sroa.114.80.copyload1155 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.114.80.add.ptr211.5.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.122.96.copyload1172 = load <4 x half>, ptr addrspace(3) %add.ptr211.6.1, align 16, !dbg !230
  %down_weight_local.sroa.134.96.copyload1175 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.134.96.add.ptr211.6.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.142.112.copyload1192 = load <4 x half>, ptr addrspace(3) %add.ptr211.7.1, align 16, !dbg !230
  %down_weight_local.sroa.154.112.copyload1195 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.154.112.add.ptr211.7.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.162.128.copyload1212 = load <4 x half>, ptr addrspace(3) %add.ptr211.8.1, align 16, !dbg !230
  %down_weight_local.sroa.174.128.copyload1215 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.174.128.add.ptr211.8.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.182.144.copyload1232 = load <4 x half>, ptr addrspace(3) %add.ptr211.9.1, align 16, !dbg !230
  %down_weight_local.sroa.194.144.copyload1235 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.194.144.add.ptr211.9.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.202.160.copyload1252 = load <4 x half>, ptr addrspace(3) %add.ptr211.10.1, align 16, !dbg !230
  %down_weight_local.sroa.214.160.copyload1255 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.214.160.add.ptr211.10.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.222.176.copyload1272 = load <4 x half>, ptr addrspace(3) %add.ptr211.11.1, align 16, !dbg !230
  %down_weight_local.sroa.234.176.copyload1275 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.234.176.add.ptr211.11.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.242.192.copyload1292 = load <4 x half>, ptr addrspace(3) %add.ptr211.12.1, align 16, !dbg !230
  %down_weight_local.sroa.254.192.copyload1295 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.254.192.add.ptr211.12.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.262.208.copyload1312 = load <4 x half>, ptr addrspace(3) %add.ptr211.13.1, align 16, !dbg !230
  %down_weight_local.sroa.274.208.copyload1315 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.274.208.add.ptr211.13.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.282.224.copyload1332 = load <4 x half>, ptr addrspace(3) %add.ptr211.14.1, align 16, !dbg !230
  %down_weight_local.sroa.294.224.copyload1335 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.294.224.add.ptr211.14.1.sroa_idx, align 8, !dbg !230
  %down_weight_local.sroa.302.240.copyload1352 = load <4 x half>, ptr addrspace(3) %add.ptr211.15.1, align 16, !dbg !230
  %down_weight_local.sroa.314.240.copyload1355 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.314.240.add.ptr211.15.1.sroa_idx, align 8, !dbg !230
  %122 = bitcast <2 x i32> %up_logits_shared.sroa.26.36.vec.insert to <4 x half>
  %123 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1052, <4 x half> %122, <4 x float> %89), !dbg !231
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1072, <4 x half> %122, <4 x float> %90), !dbg !231
  %125 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1092, <4 x half> %122, <4 x float> %91), !dbg !231
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1112, <4 x half> %122, <4 x float> %92), !dbg !231
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1132, <4 x half> %122, <4 x float> %93), !dbg !231
  %128 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1152, <4 x half> %122, <4 x float> %94), !dbg !231
  %129 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1172, <4 x half> %122, <4 x float> %95), !dbg !231
  %130 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1192, <4 x half> %122, <4 x float> %96), !dbg !231
  %131 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1212, <4 x half> %122, <4 x float> %97), !dbg !231
  %132 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1232, <4 x half> %122, <4 x float> %98), !dbg !231
  %133 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1252, <4 x half> %122, <4 x float> %99), !dbg !231
  %134 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1272, <4 x half> %122, <4 x float> %100), !dbg !231
  %135 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1292, <4 x half> %122, <4 x float> %101), !dbg !231
  %136 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1312, <4 x half> %122, <4 x float> %102), !dbg !231
  %137 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1332, <4 x half> %122, <4 x float> %103), !dbg !231
  %138 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1352, <4 x half> %122, <4 x float> %104), !dbg !231
  %139 = bitcast <2 x i32> %up_logits_shared.sroa.38.52.vec.insert to <4 x half>
  %140 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1052, <4 x half> %139, <4 x float> %106), !dbg !231
  %141 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1072, <4 x half> %139, <4 x float> %107), !dbg !231
  %142 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1092, <4 x half> %139, <4 x float> %108), !dbg !231
  %143 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1112, <4 x half> %139, <4 x float> %109), !dbg !231
  %144 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1132, <4 x half> %139, <4 x float> %110), !dbg !231
  %145 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1152, <4 x half> %139, <4 x float> %111), !dbg !231
  %146 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1172, <4 x half> %139, <4 x float> %112), !dbg !231
  %147 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1192, <4 x half> %139, <4 x float> %113), !dbg !231
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1212, <4 x half> %139, <4 x float> %114), !dbg !231
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1232, <4 x half> %139, <4 x float> %115), !dbg !231
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1252, <4 x half> %139, <4 x float> %116), !dbg !231
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1272, <4 x half> %139, <4 x float> %117), !dbg !231
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1292, <4 x half> %139, <4 x float> %118), !dbg !231
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1312, <4 x half> %139, <4 x float> %119), !dbg !231
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1332, <4 x half> %139, <4 x float> %120), !dbg !231
  %155 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1352, <4 x half> %139, <4 x float> %121), !dbg !231
  %156 = bitcast <2 x i32> %up_logits_shared.sroa.32.44.vec.insert to <4 x half>
  %157 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1055, <4 x half> %156, <4 x float> %123), !dbg !231
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1075, <4 x half> %156, <4 x float> %124), !dbg !231
  %159 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1095, <4 x half> %156, <4 x float> %125), !dbg !231
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1115, <4 x half> %156, <4 x float> %126), !dbg !231
  %161 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1135, <4 x half> %156, <4 x float> %127), !dbg !231
  %162 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1155, <4 x half> %156, <4 x float> %128), !dbg !231
  %163 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1175, <4 x half> %156, <4 x float> %129), !dbg !231
  %164 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1195, <4 x half> %156, <4 x float> %130), !dbg !231
  %165 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1215, <4 x half> %156, <4 x float> %131), !dbg !231
  %166 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1235, <4 x half> %156, <4 x float> %132), !dbg !231
  %167 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1255, <4 x half> %156, <4 x float> %133), !dbg !231
  %168 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1275, <4 x half> %156, <4 x float> %134), !dbg !231
  %169 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1295, <4 x half> %156, <4 x float> %135), !dbg !231
  %170 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1315, <4 x half> %156, <4 x float> %136), !dbg !231
  %171 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1335, <4 x half> %156, <4 x float> %137), !dbg !231
  %172 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1355, <4 x half> %156, <4 x float> %138), !dbg !231
  %173 = bitcast <2 x i32> %up_logits_shared.sroa.44.60.vec.insert to <4 x half>
  %174 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1055, <4 x half> %173, <4 x float> %140), !dbg !231
  %175 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1075, <4 x half> %173, <4 x float> %141), !dbg !231
  %176 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1095, <4 x half> %173, <4 x float> %142), !dbg !231
  %177 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1115, <4 x half> %173, <4 x float> %143), !dbg !231
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1135, <4 x half> %173, <4 x float> %144), !dbg !231
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1155, <4 x half> %173, <4 x float> %145), !dbg !231
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1175, <4 x half> %173, <4 x float> %146), !dbg !231
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1195, <4 x half> %173, <4 x float> %147), !dbg !231
  %182 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1215, <4 x half> %173, <4 x float> %148), !dbg !231
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1235, <4 x half> %173, <4 x float> %149), !dbg !231
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1255, <4 x half> %173, <4 x float> %150), !dbg !231
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1275, <4 x half> %173, <4 x float> %151), !dbg !231
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1295, <4 x half> %173, <4 x float> %152), !dbg !231
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1315, <4 x half> %173, <4 x float> %153), !dbg !231
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1335, <4 x half> %173, <4 x float> %154), !dbg !231
  %189 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1355, <4 x half> %173, <4 x float> %155), !dbg !231
  fence syncscope("block") release, !dbg !232
  tail call void @llvm.mxc.barrier(), !dbg !235
  fence syncscope("block") acquire, !dbg !236
  %190 = trunc nsw i64 %51 to i32
  %add280 = add i32 %add39, %190
  %191 = sext i32 %add280 to i64, !dbg !237
  %gep887 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %191, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.1 = add i32 %add280, 65536, !dbg !239
  %192 = sext i32 %add284.1 to i64, !dbg !237
  %gep887.1 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %192, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.1, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.2 = add i32 %add280, 131072, !dbg !239
  %193 = sext i32 %add284.2 to i64, !dbg !237
  %gep887.2 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %193, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.2, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.3 = add i32 %add280, 196608, !dbg !239
  %194 = sext i32 %add284.3 to i64, !dbg !237
  %gep887.3 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %194, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.3, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.4 = add i32 %add280, 262144, !dbg !239
  %195 = sext i32 %add284.4 to i64, !dbg !237
  %gep887.4 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %195, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.4, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.4, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.5 = add i32 %add280, 327680, !dbg !239
  %196 = sext i32 %add284.5 to i64, !dbg !237
  %gep887.5 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %196, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.5, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.5, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.6 = add i32 %add280, 393216, !dbg !239
  %197 = sext i32 %add284.6 to i64, !dbg !237
  %gep887.6 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %197, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.6, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.6, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %add284.7 = add i32 %add280, 458752, !dbg !239
  %198 = sext i32 %add284.7 to i64, !dbg !237
  %gep887.7 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep886, i64 %198, !dbg !237
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr80.7, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep887.7, i64 16, i1 false), !dbg !238, !tbaa.struct !62, !call_argsrelate !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !240
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31, !dbg !241
  br i1 %exitcond.not, label %for.cond330.preheader, label %for.cond89.preheader, !dbg !216, !llvm.loop !242

if.then357:                                       ; preds = %for.cond330.preheader
  %199 = getelementptr %struct.__half, ptr addrspace(4) %up_logits.coerce, i64 %add373, !dbg !244
  %add.ptr385 = getelementptr i8, ptr addrspace(4) %199, i64 3968, !dbg !244
  %condval_1.sroa.0.0.copyload = load i32, ptr addrspace(4) %add.ptr385, align 16, !dbg !245, !tbaa !30
  %condval_1.sroa.5.0.add.ptr385.sroa_idx = getelementptr i8, ptr addrspace(4) %199, i64 3972, !dbg !245
  %condval_1.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr385.sroa_idx, align 4, !dbg !245, !tbaa !30
  %condval_1.sroa.6.0.add.ptr385.sroa_idx = getelementptr i8, ptr addrspace(4) %199, i64 3976, !dbg !245
  %condval_1.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr385.sroa_idx, align 8, !dbg !245, !tbaa !30
  %condval_1.sroa.7.0.add.ptr385.sroa_idx = getelementptr i8, ptr addrspace(4) %199, i64 3980, !dbg !245
  %condval_1.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr385.sroa_idx, align 4, !dbg !245, !tbaa !30
  br label %if.end409, !dbg !246

if.end409:                                        ; preds = %for.cond330.preheader, %if.then357
  %condval_1.sroa.0.0 = phi i32 [ %condval_1.sroa.0.0.copyload, %if.then357 ], [ 0, %for.cond330.preheader ], !dbg !217
  %condval_1.sroa.5.0 = phi i32 [ %condval_1.sroa.5.0.copyload, %if.then357 ], [ 0, %for.cond330.preheader ], !dbg !217
  %condval_1.sroa.6.0 = phi i32 [ %condval_1.sroa.6.0.copyload, %if.then357 ], [ 0, %for.cond330.preheader ], !dbg !217
  %condval_1.sroa.7.0 = phi i32 [ %condval_1.sroa.7.0.copyload, %if.then357 ], [ 0, %for.cond330.preheader ], !dbg !217
  %up_logits_shared.sroa.0.0.vec.insert1368 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0, i64 0, !dbg !247
  %up_logits_shared.sroa.0.4.vec.insert1370 = insertelement <2 x i32> %up_logits_shared.sroa.0.0.vec.insert1368, i32 %condval_1.sroa.5.0, i64 1, !dbg !247
  %up_logits_shared.sroa.8.8.vec.insert1374 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0, i64 0, !dbg !247
  %up_logits_shared.sroa.8.12.vec.insert1376 = insertelement <2 x i32> %up_logits_shared.sroa.8.8.vec.insert1374, i32 %condval_1.sroa.7.0, i64 1, !dbg !247
  br i1 %or.cond.1, label %if.then357.1, label %if.end409.1, !dbg !219

if.then357.1:                                     ; preds = %if.end409
  %200 = getelementptr %struct.__half, ptr addrspace(4) %up_logits.coerce, i64 %add373, !dbg !244
  %add.ptr385.1 = getelementptr i8, ptr addrspace(4) %200, i64 69504, !dbg !244
  %condval_1.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr385.1, align 16, !dbg !245, !tbaa !30
  %condval_1.sroa.5.0.add.ptr385.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %200, i64 69508, !dbg !245
  %condval_1.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr385.sroa_idx.1, align 4, !dbg !245, !tbaa !30
  %condval_1.sroa.6.0.add.ptr385.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %200, i64 69512, !dbg !245
  %condval_1.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr385.sroa_idx.1, align 8, !dbg !245, !tbaa !30
  %condval_1.sroa.7.0.add.ptr385.sroa_idx.1 = getelementptr i8, ptr addrspace(4) %200, i64 69516, !dbg !245
  %condval_1.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr385.sroa_idx.1, align 4, !dbg !245, !tbaa !30
  br label %if.end409.1, !dbg !246

if.end409.1:                                      ; preds = %if.then357.1, %if.end409
  %condval_1.sroa.0.0.1 = phi i32 [ %condval_1.sroa.0.0.copyload.1, %if.then357.1 ], [ 0, %if.end409 ], !dbg !217
  %condval_1.sroa.5.0.1 = phi i32 [ %condval_1.sroa.5.0.copyload.1, %if.then357.1 ], [ 0, %if.end409 ], !dbg !217
  %condval_1.sroa.6.0.1 = phi i32 [ %condval_1.sroa.6.0.copyload.1, %if.then357.1 ], [ 0, %if.end409 ], !dbg !217
  %condval_1.sroa.7.0.1 = phi i32 [ %condval_1.sroa.7.0.copyload.1, %if.then357.1 ], [ 0, %if.end409 ], !dbg !217
  %up_logits_shared.sroa.14.16.vec.insert1380 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.1, i64 0, !dbg !247
  %up_logits_shared.sroa.14.20.vec.insert1382 = insertelement <2 x i32> %up_logits_shared.sroa.14.16.vec.insert1380, i32 %condval_1.sroa.5.0.1, i64 1, !dbg !247
  %up_logits_shared.sroa.20.24.vec.insert1386 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.1, i64 0, !dbg !247
  %up_logits_shared.sroa.20.28.vec.insert1388 = insertelement <2 x i32> %up_logits_shared.sroa.20.24.vec.insert1386, i32 %condval_1.sroa.7.0.1, i64 1, !dbg !247
  br i1 %or.cond, label %if.then357.2, label %if.end409.2, !dbg !219

if.then357.2:                                     ; preds = %if.end409.1
  %add383.2 = or disjoint i64 %add373, 32, !dbg !248
  %201 = getelementptr %struct.__half, ptr addrspace(4) %up_logits.coerce, i64 %add383.2, !dbg !244
  %add.ptr385.2 = getelementptr i8, ptr addrspace(4) %201, i64 3968, !dbg !244
  %condval_1.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr385.2, align 16, !dbg !245, !tbaa !30
  %condval_1.sroa.5.0.add.ptr385.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %201, i64 3972, !dbg !245
  %condval_1.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr385.sroa_idx.2, align 4, !dbg !245, !tbaa !30
  %condval_1.sroa.6.0.add.ptr385.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %201, i64 3976, !dbg !245
  %condval_1.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr385.sroa_idx.2, align 8, !dbg !245, !tbaa !30
  %condval_1.sroa.7.0.add.ptr385.sroa_idx.2 = getelementptr i8, ptr addrspace(4) %201, i64 3980, !dbg !245
  %condval_1.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr385.sroa_idx.2, align 4, !dbg !245, !tbaa !30
  br label %if.end409.2, !dbg !246

if.end409.2:                                      ; preds = %if.then357.2, %if.end409.1
  %condval_1.sroa.0.0.2 = phi i32 [ %condval_1.sroa.0.0.copyload.2, %if.then357.2 ], [ 0, %if.end409.1 ], !dbg !217
  %condval_1.sroa.5.0.2 = phi i32 [ %condval_1.sroa.5.0.copyload.2, %if.then357.2 ], [ 0, %if.end409.1 ], !dbg !217
  %condval_1.sroa.6.0.2 = phi i32 [ %condval_1.sroa.6.0.copyload.2, %if.then357.2 ], [ 0, %if.end409.1 ], !dbg !217
  %condval_1.sroa.7.0.2 = phi i32 [ %condval_1.sroa.7.0.copyload.2, %if.then357.2 ], [ 0, %if.end409.1 ], !dbg !217
  %up_logits_shared.sroa.26.32.vec.insert1392 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.2, i64 0, !dbg !247
  %up_logits_shared.sroa.26.36.vec.insert1394 = insertelement <2 x i32> %up_logits_shared.sroa.26.32.vec.insert1392, i32 %condval_1.sroa.5.0.2, i64 1, !dbg !247
  %up_logits_shared.sroa.32.40.vec.insert1398 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.2, i64 0, !dbg !247
  %up_logits_shared.sroa.32.44.vec.insert1400 = insertelement <2 x i32> %up_logits_shared.sroa.32.40.vec.insert1398, i32 %condval_1.sroa.7.0.2, i64 1, !dbg !247
  br i1 %or.cond.1, label %if.then357.3, label %if.end409.3, !dbg !219

if.then357.3:                                     ; preds = %if.end409.2
  %202 = getelementptr %struct.__half, ptr addrspace(4) %up_logits.coerce, i64 %add373, !dbg !244
  %add.ptr385.3 = getelementptr i8, ptr addrspace(4) %202, i64 69568, !dbg !244
  %condval_1.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr385.3, align 16, !dbg !245, !tbaa !30
  %condval_1.sroa.5.0.add.ptr385.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %202, i64 69572, !dbg !245
  %condval_1.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.5.0.add.ptr385.sroa_idx.3, align 4, !dbg !245, !tbaa !30
  %condval_1.sroa.6.0.add.ptr385.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %202, i64 69576, !dbg !245
  %condval_1.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.6.0.add.ptr385.sroa_idx.3, align 8, !dbg !245, !tbaa !30
  %condval_1.sroa.7.0.add.ptr385.sroa_idx.3 = getelementptr i8, ptr addrspace(4) %202, i64 69580, !dbg !245
  %condval_1.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_1.sroa.7.0.add.ptr385.sroa_idx.3, align 4, !dbg !245, !tbaa !30
  br label %if.end409.3, !dbg !246

if.end409.3:                                      ; preds = %if.then357.3, %if.end409.2
  %condval_1.sroa.0.0.3 = phi i32 [ %condval_1.sroa.0.0.copyload.3, %if.then357.3 ], [ 0, %if.end409.2 ], !dbg !217
  %condval_1.sroa.5.0.3 = phi i32 [ %condval_1.sroa.5.0.copyload.3, %if.then357.3 ], [ 0, %if.end409.2 ], !dbg !217
  %condval_1.sroa.6.0.3 = phi i32 [ %condval_1.sroa.6.0.copyload.3, %if.then357.3 ], [ 0, %if.end409.2 ], !dbg !217
  %condval_1.sroa.7.0.3 = phi i32 [ %condval_1.sroa.7.0.copyload.3, %if.then357.3 ], [ 0, %if.end409.2 ], !dbg !217
  %up_logits_shared.sroa.38.48.vec.insert1404 = insertelement <2 x i32> poison, i32 %condval_1.sroa.0.0.3, i64 0, !dbg !247
  %up_logits_shared.sroa.38.52.vec.insert1406 = insertelement <2 x i32> %up_logits_shared.sroa.38.48.vec.insert1404, i32 %condval_1.sroa.5.0.3, i64 1, !dbg !247
  %up_logits_shared.sroa.44.56.vec.insert1410 = insertelement <2 x i32> poison, i32 %condval_1.sroa.6.0.3, i64 0, !dbg !247
  %up_logits_shared.sroa.44.60.vec.insert1412 = insertelement <2 x i32> %up_logits_shared.sroa.44.56.vec.insert1410, i32 %condval_1.sroa.7.0.3, i64 1, !dbg !247
  fence syncscope("block") release, !dbg !249
  tail call void @llvm.mxc.barrier(), !dbg !252
  fence syncscope("block") acquire, !dbg !253
  %down_weight_local.sroa.0.0.copyload1053 = load <4 x half>, ptr addrspace(3) %add.ptr211, align 16, !dbg !254
  %down_weight_local.sroa.14.0.copyload1056 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.14.0.add.ptr211.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.22.16.copyload1073 = load <4 x half>, ptr addrspace(3) %add.ptr211.1, align 16, !dbg !254
  %down_weight_local.sroa.34.16.copyload1076 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.34.16.add.ptr211.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.42.32.copyload1093 = load <4 x half>, ptr addrspace(3) %add.ptr211.2, align 16, !dbg !254
  %down_weight_local.sroa.54.32.copyload1096 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.54.32.add.ptr211.2.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.62.48.copyload1113 = load <4 x half>, ptr addrspace(3) %add.ptr211.3, align 16, !dbg !254
  %down_weight_local.sroa.74.48.copyload1116 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.74.48.add.ptr211.3.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.82.64.copyload1133 = load <4 x half>, ptr addrspace(3) %add.ptr211.4, align 16, !dbg !254
  %down_weight_local.sroa.94.64.copyload1136 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.94.64.add.ptr211.4.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.102.80.copyload1153 = load <4 x half>, ptr addrspace(3) %add.ptr211.5, align 16, !dbg !254
  %down_weight_local.sroa.114.80.copyload1156 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.114.80.add.ptr211.5.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.122.96.copyload1173 = load <4 x half>, ptr addrspace(3) %add.ptr211.6, align 16, !dbg !254
  %down_weight_local.sroa.134.96.copyload1176 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.134.96.add.ptr211.6.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.142.112.copyload1193 = load <4 x half>, ptr addrspace(3) %add.ptr211.7, align 16, !dbg !254
  %down_weight_local.sroa.154.112.copyload1196 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.154.112.add.ptr211.7.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.162.128.copyload1213 = load <4 x half>, ptr addrspace(3) %add.ptr211.8, align 16, !dbg !254
  %down_weight_local.sroa.174.128.copyload1216 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.174.128.add.ptr211.8.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.182.144.copyload1233 = load <4 x half>, ptr addrspace(3) %add.ptr211.9, align 16, !dbg !254
  %down_weight_local.sroa.194.144.copyload1236 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.194.144.add.ptr211.9.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.202.160.copyload1253 = load <4 x half>, ptr addrspace(3) %add.ptr211.10, align 16, !dbg !254
  %down_weight_local.sroa.214.160.copyload1256 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.214.160.add.ptr211.10.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.222.176.copyload1273 = load <4 x half>, ptr addrspace(3) %add.ptr211.11, align 16, !dbg !254
  %down_weight_local.sroa.234.176.copyload1276 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.234.176.add.ptr211.11.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.242.192.copyload1293 = load <4 x half>, ptr addrspace(3) %add.ptr211.12, align 16, !dbg !254
  %down_weight_local.sroa.254.192.copyload1296 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.254.192.add.ptr211.12.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.262.208.copyload1313 = load <4 x half>, ptr addrspace(3) %add.ptr211.13, align 16, !dbg !254
  %down_weight_local.sroa.274.208.copyload1316 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.274.208.add.ptr211.13.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.282.224.copyload1333 = load <4 x half>, ptr addrspace(3) %add.ptr211.14, align 16, !dbg !254
  %down_weight_local.sroa.294.224.copyload1336 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.294.224.add.ptr211.14.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.302.240.copyload1353 = load <4 x half>, ptr addrspace(3) %add.ptr211.15, align 16, !dbg !254
  %down_weight_local.sroa.314.240.copyload1356 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.314.240.add.ptr211.15.sroa_idx.le, align 8, !dbg !254
  %203 = bitcast <2 x i32> %up_logits_shared.sroa.0.4.vec.insert1370 to <4 x half>
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1053, <4 x half> %203, <4 x float> %157), !dbg !255
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1073, <4 x half> %203, <4 x float> %158), !dbg !255
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1093, <4 x half> %203, <4 x float> %159), !dbg !255
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1113, <4 x half> %203, <4 x float> %160), !dbg !255
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1133, <4 x half> %203, <4 x float> %161), !dbg !255
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1153, <4 x half> %203, <4 x float> %162), !dbg !255
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1173, <4 x half> %203, <4 x float> %163), !dbg !255
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1193, <4 x half> %203, <4 x float> %164), !dbg !255
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1213, <4 x half> %203, <4 x float> %165), !dbg !255
  %213 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1233, <4 x half> %203, <4 x float> %166), !dbg !255
  %214 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1253, <4 x half> %203, <4 x float> %167), !dbg !255
  %215 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1273, <4 x half> %203, <4 x float> %168), !dbg !255
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1293, <4 x half> %203, <4 x float> %169), !dbg !255
  %217 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1313, <4 x half> %203, <4 x float> %170), !dbg !255
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1333, <4 x half> %203, <4 x float> %171), !dbg !255
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1353, <4 x half> %203, <4 x float> %172), !dbg !255
  %220 = bitcast <2 x i32> %up_logits_shared.sroa.14.20.vec.insert1382 to <4 x half>
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1053, <4 x half> %220, <4 x float> %174), !dbg !255
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1073, <4 x half> %220, <4 x float> %175), !dbg !255
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1093, <4 x half> %220, <4 x float> %176), !dbg !255
  %224 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1113, <4 x half> %220, <4 x float> %177), !dbg !255
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1133, <4 x half> %220, <4 x float> %178), !dbg !255
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1153, <4 x half> %220, <4 x float> %179), !dbg !255
  %227 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1173, <4 x half> %220, <4 x float> %180), !dbg !255
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1193, <4 x half> %220, <4 x float> %181), !dbg !255
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1213, <4 x half> %220, <4 x float> %182), !dbg !255
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1233, <4 x half> %220, <4 x float> %183), !dbg !255
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1253, <4 x half> %220, <4 x float> %184), !dbg !255
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1273, <4 x half> %220, <4 x float> %185), !dbg !255
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1293, <4 x half> %220, <4 x float> %186), !dbg !255
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1313, <4 x half> %220, <4 x float> %187), !dbg !255
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1333, <4 x half> %220, <4 x float> %188), !dbg !255
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1353, <4 x half> %220, <4 x float> %189), !dbg !255
  %237 = bitcast <2 x i32> %up_logits_shared.sroa.8.12.vec.insert1376 to <4 x half>
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1056, <4 x half> %237, <4 x float> %204), !dbg !255
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1076, <4 x half> %237, <4 x float> %205), !dbg !255
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1096, <4 x half> %237, <4 x float> %206), !dbg !255
  %241 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1116, <4 x half> %237, <4 x float> %207), !dbg !255
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1136, <4 x half> %237, <4 x float> %208), !dbg !255
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1156, <4 x half> %237, <4 x float> %209), !dbg !255
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1176, <4 x half> %237, <4 x float> %210), !dbg !255
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1196, <4 x half> %237, <4 x float> %211), !dbg !255
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1216, <4 x half> %237, <4 x float> %212), !dbg !255
  %247 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1236, <4 x half> %237, <4 x float> %213), !dbg !255
  %248 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1256, <4 x half> %237, <4 x float> %214), !dbg !255
  %249 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1276, <4 x half> %237, <4 x float> %215), !dbg !255
  %250 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1296, <4 x half> %237, <4 x float> %216), !dbg !255
  %251 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1316, <4 x half> %237, <4 x float> %217), !dbg !255
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1336, <4 x half> %237, <4 x float> %218), !dbg !255
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1356, <4 x half> %237, <4 x float> %219), !dbg !255
  %254 = bitcast <2 x i32> %up_logits_shared.sroa.20.28.vec.insert1388 to <4 x half>
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1056, <4 x half> %254, <4 x float> %221), !dbg !255
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1076, <4 x half> %254, <4 x float> %222), !dbg !255
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1096, <4 x half> %254, <4 x float> %223), !dbg !255
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1116, <4 x half> %254, <4 x float> %224), !dbg !255
  %259 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1136, <4 x half> %254, <4 x float> %225), !dbg !255
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1156, <4 x half> %254, <4 x float> %226), !dbg !255
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1176, <4 x half> %254, <4 x float> %227), !dbg !255
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1196, <4 x half> %254, <4 x float> %228), !dbg !255
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1216, <4 x half> %254, <4 x float> %229), !dbg !255
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1236, <4 x half> %254, <4 x float> %230), !dbg !255
  %265 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1256, <4 x half> %254, <4 x float> %231), !dbg !255
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1276, <4 x half> %254, <4 x float> %232), !dbg !255
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1296, <4 x half> %254, <4 x float> %233), !dbg !255
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1316, <4 x half> %254, <4 x float> %234), !dbg !255
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1336, <4 x half> %254, <4 x float> %235), !dbg !255
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1356, <4 x half> %254, <4 x float> %236), !dbg !255
  %down_weight_local.sroa.0.0.copyload1054 = load <4 x half>, ptr addrspace(3) %add.ptr211.1948, align 16, !dbg !254
  %down_weight_local.sroa.14.0.copyload1057 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.14.0.add.ptr211.1948.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.22.16.copyload1074 = load <4 x half>, ptr addrspace(3) %add.ptr211.1.1, align 16, !dbg !254
  %down_weight_local.sroa.34.16.copyload1077 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.34.16.add.ptr211.1.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.42.32.copyload1094 = load <4 x half>, ptr addrspace(3) %add.ptr211.2.1, align 16, !dbg !254
  %down_weight_local.sroa.54.32.copyload1097 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.54.32.add.ptr211.2.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.62.48.copyload1114 = load <4 x half>, ptr addrspace(3) %add.ptr211.3.1, align 16, !dbg !254
  %down_weight_local.sroa.74.48.copyload1117 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.74.48.add.ptr211.3.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.82.64.copyload1134 = load <4 x half>, ptr addrspace(3) %add.ptr211.4.1, align 16, !dbg !254
  %down_weight_local.sroa.94.64.copyload1137 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.94.64.add.ptr211.4.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.102.80.copyload1154 = load <4 x half>, ptr addrspace(3) %add.ptr211.5.1, align 16, !dbg !254
  %down_weight_local.sroa.114.80.copyload1157 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.114.80.add.ptr211.5.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.122.96.copyload1174 = load <4 x half>, ptr addrspace(3) %add.ptr211.6.1, align 16, !dbg !254
  %down_weight_local.sroa.134.96.copyload1177 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.134.96.add.ptr211.6.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.142.112.copyload1194 = load <4 x half>, ptr addrspace(3) %add.ptr211.7.1, align 16, !dbg !254
  %down_weight_local.sroa.154.112.copyload1197 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.154.112.add.ptr211.7.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.162.128.copyload1214 = load <4 x half>, ptr addrspace(3) %add.ptr211.8.1, align 16, !dbg !254
  %down_weight_local.sroa.174.128.copyload1217 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.174.128.add.ptr211.8.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.182.144.copyload1234 = load <4 x half>, ptr addrspace(3) %add.ptr211.9.1, align 16, !dbg !254
  %down_weight_local.sroa.194.144.copyload1237 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.194.144.add.ptr211.9.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.202.160.copyload1254 = load <4 x half>, ptr addrspace(3) %add.ptr211.10.1, align 16, !dbg !254
  %down_weight_local.sroa.214.160.copyload1257 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.214.160.add.ptr211.10.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.222.176.copyload1274 = load <4 x half>, ptr addrspace(3) %add.ptr211.11.1, align 16, !dbg !254
  %down_weight_local.sroa.234.176.copyload1277 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.234.176.add.ptr211.11.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.242.192.copyload1294 = load <4 x half>, ptr addrspace(3) %add.ptr211.12.1, align 16, !dbg !254
  %down_weight_local.sroa.254.192.copyload1297 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.254.192.add.ptr211.12.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.262.208.copyload1314 = load <4 x half>, ptr addrspace(3) %add.ptr211.13.1, align 16, !dbg !254
  %down_weight_local.sroa.274.208.copyload1317 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.274.208.add.ptr211.13.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.282.224.copyload1334 = load <4 x half>, ptr addrspace(3) %add.ptr211.14.1, align 16, !dbg !254
  %down_weight_local.sroa.294.224.copyload1337 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.294.224.add.ptr211.14.1.sroa_idx.le, align 8, !dbg !254
  %down_weight_local.sroa.302.240.copyload1354 = load <4 x half>, ptr addrspace(3) %add.ptr211.15.1, align 16, !dbg !254
  %down_weight_local.sroa.314.240.copyload1357 = load <4 x half>, ptr addrspace(3) %down_weight_local.sroa.314.240.add.ptr211.15.1.sroa_idx.le, align 8, !dbg !254
  %271 = bitcast <2 x i32> %up_logits_shared.sroa.26.36.vec.insert1394 to <4 x half>
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1054, <4 x half> %271, <4 x float> %238), !dbg !255
  %273 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1074, <4 x half> %271, <4 x float> %239), !dbg !255
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1094, <4 x half> %271, <4 x float> %240), !dbg !255
  %275 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1114, <4 x half> %271, <4 x float> %241), !dbg !255
  %276 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1134, <4 x half> %271, <4 x float> %242), !dbg !255
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1154, <4 x half> %271, <4 x float> %243), !dbg !255
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1174, <4 x half> %271, <4 x float> %244), !dbg !255
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1194, <4 x half> %271, <4 x float> %245), !dbg !255
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1214, <4 x half> %271, <4 x float> %246), !dbg !255
  %281 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1234, <4 x half> %271, <4 x float> %247), !dbg !255
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1254, <4 x half> %271, <4 x float> %248), !dbg !255
  %283 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1274, <4 x half> %271, <4 x float> %249), !dbg !255
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1294, <4 x half> %271, <4 x float> %250), !dbg !255
  %285 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1314, <4 x half> %271, <4 x float> %251), !dbg !255
  %286 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1334, <4 x half> %271, <4 x float> %252), !dbg !255
  %287 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1354, <4 x half> %271, <4 x float> %253), !dbg !255
  %288 = bitcast <2 x i32> %up_logits_shared.sroa.38.52.vec.insert1406 to <4 x half>
  %289 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.0.0.copyload1054, <4 x half> %288, <4 x float> %255), !dbg !255
  %290 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.22.16.copyload1074, <4 x half> %288, <4 x float> %256), !dbg !255
  %291 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.42.32.copyload1094, <4 x half> %288, <4 x float> %257), !dbg !255
  %292 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.62.48.copyload1114, <4 x half> %288, <4 x float> %258), !dbg !255
  %293 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.82.64.copyload1134, <4 x half> %288, <4 x float> %259), !dbg !255
  %294 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.102.80.copyload1154, <4 x half> %288, <4 x float> %260), !dbg !255
  %295 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.122.96.copyload1174, <4 x half> %288, <4 x float> %261), !dbg !255
  %296 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.142.112.copyload1194, <4 x half> %288, <4 x float> %262), !dbg !255
  %297 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.162.128.copyload1214, <4 x half> %288, <4 x float> %263), !dbg !255
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.182.144.copyload1234, <4 x half> %288, <4 x float> %264), !dbg !255
  %299 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.202.160.copyload1254, <4 x half> %288, <4 x float> %265), !dbg !255
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.222.176.copyload1274, <4 x half> %288, <4 x float> %266), !dbg !255
  %301 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.242.192.copyload1294, <4 x half> %288, <4 x float> %267), !dbg !255
  %302 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.262.208.copyload1314, <4 x half> %288, <4 x float> %268), !dbg !255
  %303 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.282.224.copyload1334, <4 x half> %288, <4 x float> %269), !dbg !255
  %304 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.302.240.copyload1354, <4 x half> %288, <4 x float> %270), !dbg !255
  %305 = bitcast <2 x i32> %up_logits_shared.sroa.32.44.vec.insert1400 to <4 x half>
  %306 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1057, <4 x half> %305, <4 x float> %272), !dbg !255
  %307 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1077, <4 x half> %305, <4 x float> %273), !dbg !255
  %308 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1097, <4 x half> %305, <4 x float> %274), !dbg !255
  %309 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1117, <4 x half> %305, <4 x float> %275), !dbg !255
  %310 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1137, <4 x half> %305, <4 x float> %276), !dbg !255
  %311 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1157, <4 x half> %305, <4 x float> %277), !dbg !255
  %312 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1177, <4 x half> %305, <4 x float> %278), !dbg !255
  %313 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1197, <4 x half> %305, <4 x float> %279), !dbg !255
  %314 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1217, <4 x half> %305, <4 x float> %280), !dbg !255
  %315 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1237, <4 x half> %305, <4 x float> %281), !dbg !255
  %316 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1257, <4 x half> %305, <4 x float> %282), !dbg !255
  %317 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1277, <4 x half> %305, <4 x float> %283), !dbg !255
  %318 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1297, <4 x half> %305, <4 x float> %284), !dbg !255
  %319 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1317, <4 x half> %305, <4 x float> %285), !dbg !255
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1337, <4 x half> %305, <4 x float> %286), !dbg !255
  %321 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1357, <4 x half> %305, <4 x float> %287), !dbg !255
  %322 = bitcast <2 x i32> %up_logits_shared.sroa.44.60.vec.insert1412 to <4 x half>
  %323 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.14.0.copyload1057, <4 x half> %322, <4 x float> %289), !dbg !255
  %324 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.34.16.copyload1077, <4 x half> %322, <4 x float> %290), !dbg !255
  %325 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.54.32.copyload1097, <4 x half> %322, <4 x float> %291), !dbg !255
  %326 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.74.48.copyload1117, <4 x half> %322, <4 x float> %292), !dbg !255
  %327 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.94.64.copyload1137, <4 x half> %322, <4 x float> %293), !dbg !255
  %328 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.114.80.copyload1157, <4 x half> %322, <4 x float> %294), !dbg !255
  %329 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.134.96.copyload1177, <4 x half> %322, <4 x float> %295), !dbg !255
  %330 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.154.112.copyload1197, <4 x half> %322, <4 x float> %296), !dbg !255
  %331 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.174.128.copyload1217, <4 x half> %322, <4 x float> %297), !dbg !255
  %332 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.194.144.copyload1237, <4 x half> %322, <4 x float> %298), !dbg !255
  %333 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.214.160.copyload1257, <4 x half> %322, <4 x float> %299), !dbg !255
  %334 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.234.176.copyload1277, <4 x half> %322, <4 x float> %300), !dbg !255
  %335 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.254.192.copyload1297, <4 x half> %322, <4 x float> %301), !dbg !255
  %336 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.274.208.copyload1317, <4 x half> %322, <4 x float> %302), !dbg !255
  %337 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.294.224.copyload1337, <4 x half> %322, <4 x float> %303), !dbg !255
  %338 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %down_weight_local.sroa.314.240.copyload1357, <4 x half> %322, <4 x float> %304), !dbg !255
  %cond.i.i = tail call noundef range(i32 -2147483648, 129) i32 @llvm.smin.i32(i32 %sub21, i32 128), !dbg !256
  %and561 = zext nneg i32 %and101 to i64
  %invariant.gep898 = getelementptr %struct.__half, ptr addrspace(4) %routed_expert_weights.coerce, i64 %conv122, !dbg !258
  %invariant.gep900 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep898, i64 %and561, !dbg !258
  %339 = zext nneg i32 %mul95 to i64, !dbg !258
  %340 = or disjoint i32 %mul95, %and101, !dbg !259
  %cmp526 = icmp sgt i32 %cond.i.i, %340, !dbg !260
  br i1 %cmp526, label %if.then527, label %for.inc570, !dbg !261

if.then527:                                       ; preds = %if.end409.3
  br i1 %or.cond, label %if.then549, label %for.inc570, !dbg !262

if.then549:                                       ; preds = %if.then527
  %gep901 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep900, i64 %339, !dbg !263
  %condval_2.sroa.0.0.copyload1798 = load half, ptr addrspace(4) %gep901, align 2, !dbg !264, !tbaa !265
  br label %for.inc570, !dbg !266

for.inc570:                                       ; preds = %if.then549, %if.then527, %if.end409.3
  %341 = phi half [ 0xH0000, %if.end409.3 ], [ %condval_2.sroa.0.0.copyload1798, %if.then549 ], [ 0xH0000, %if.then527 ], !dbg !217
  %342 = or disjoint i64 %339, 16, !dbg !259
  %343 = trunc nuw nsw i64 %342 to i32, !dbg !260
  %344 = or disjoint i32 %and101, %343, !dbg !260
  %cmp526.1 = icmp sgt i32 %cond.i.i, %344, !dbg !260
  br i1 %cmp526.1, label %if.then527.1, label %for.inc570.1, !dbg !261

if.then527.1:                                     ; preds = %for.inc570
  br i1 %or.cond.1, label %if.then549.1, label %for.inc570.1, !dbg !262

if.then549.1:                                     ; preds = %if.then527.1
  %gep901.1 = getelementptr %struct.__half, ptr addrspace(4) %invariant.gep900, i64 %342, !dbg !263
  %condval_2.sroa.0.0.copyload.11799 = load half, ptr addrspace(4) %gep901.1, align 2, !dbg !264, !tbaa !265
  br label %for.inc570.1, !dbg !266

for.inc570.1:                                     ; preds = %if.then527.1, %if.then549.1, %for.inc570
  %345 = phi half [ 0xH0000, %for.inc570 ], [ %condval_2.sroa.0.0.copyload.11799, %if.then549.1 ], [ 0xH0000, %if.then527.1 ], !dbg !217
  %346 = lshr i32 %6, 6
  %narrow = mul nuw nsw i32 %346, 229376
  %mul662 = zext nneg i32 %narrow to i64
  %mul668 = mul nsw i64 %conv122, 7168
  %narrow806 = mul nuw nsw i32 %and101, 7168
  %mul673 = zext nneg i32 %narrow806 to i64
  %conv676 = zext nneg i32 %5 to i64
  %mul677 = shl nuw nsw i64 %conv676, 8
  %add666 = add nuw nsw i64 %mul677, %mul662
  %add669 = add nuw nsw i64 %add666, %mul673
  %add674 = add nsw i64 %add669, %mul668
  %347 = and i32 %and185, 12
  %mul687 = zext nneg i32 %347 to i64
  %invariant.gep903 = getelementptr %struct.__half, ptr addrspace(1) %output.coerce, i64 %mul687, !dbg !267
  %cmp586 = icmp sgt i32 %cond.i.i, %add98, !dbg !268
  br i1 %cmp586, label %if.then587, label %for.inc693, !dbg !269

if.then587:                                       ; preds = %for.inc570.1
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !270, !noalias !274
  %349 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %349), !dbg !279, !noalias !274
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !281, !noalias !285
  %351 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %351), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656, label %for.inc693, !dbg !292

if.then656:                                       ; preds = %if.then587
  %output_local.sroa.0.12.vec.extract = extractelement <4 x float> %306, i64 3, !dbg !293
  %output_local.sroa.0.8.vec.extract = extractelement <4 x float> %306, i64 2, !dbg !293
  %output_local.sroa.0.4.vec.extract = extractelement <4 x float> %306, i64 1, !dbg !293
  %output_local.sroa.0.0.vec.extract = extractelement <4 x float> %306, i64 0, !dbg !293
  %conv.i.i = fpext half %341 to float, !dbg !294
  %mul619 = fmul contract float %output_local.sroa.0.12.vec.extract, %conv.i.i, !dbg !299
  %352 = fptrunc float %mul619 to half, !dbg !290
  %353 = bitcast half %352 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext = zext i16 %353 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift = shl nuw i64 %__1.sroa.6.0.insert.ext, 48, !dbg !302
  %mul616 = fmul contract float %output_local.sroa.0.8.vec.extract, %conv.i.i, !dbg !303
  %354 = fptrunc float %mul616 to half, !dbg !281
  %355 = bitcast half %354 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext = zext i16 %355 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift = shl nuw nsw i64 %__1.sroa.5.0.insert.ext, 32, !dbg !302
  %__1.sroa.5.0.insert.insert = or disjoint i64 %__1.sroa.6.0.insert.shift, %__1.sroa.5.0.insert.shift, !dbg !302
  %mul613 = fmul contract float %output_local.sroa.0.4.vec.extract, %conv.i.i, !dbg !305
  %356 = fptrunc float %mul613 to half, !dbg !279
  %357 = bitcast half %356 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext = zext i16 %357 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift = shl nuw nsw i64 %__1.sroa.4.0.insert.ext, 16, !dbg !302
  %__1.sroa.4.0.insert.insert = or disjoint i64 %__1.sroa.5.0.insert.insert, %__1.sroa.4.0.insert.shift, !dbg !302
  %mul610 = fmul contract float %output_local.sroa.0.0.vec.extract, %conv.i.i, !dbg !308
  %358 = fptrunc float %mul610 to half, !dbg !270
  %359 = bitcast half %358 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext = zext i16 %359 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert = or disjoint i64 %__1.sroa.4.0.insert.insert, %__1.sroa.0.0.insert.ext, !dbg !302
  %gep904 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert, ptr addrspace(1) %gep904, align 8, !dbg !311
  br label %for.inc693, !dbg !312

for.inc693:                                       ; preds = %if.then587, %if.then656, %for.inc570.1
  br i1 %cmp586, label %if.then587.1, label %for.inc693.1, !dbg !269

if.then587.1:                                     ; preds = %for.inc693
  %360 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %360), !dbg !270, !noalias !274
  %361 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %361), !dbg !279, !noalias !274
  %362 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %362), !dbg !281, !noalias !285
  %363 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %363), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.1, label %for.inc693.1, !dbg !292

if.then656.1:                                     ; preds = %if.then587.1
  %output_local.sroa.26.28.vec.extract = extractelement <4 x float> %307, i64 3, !dbg !293
  %output_local.sroa.26.24.vec.extract = extractelement <4 x float> %307, i64 2, !dbg !293
  %output_local.sroa.26.20.vec.extract = extractelement <4 x float> %307, i64 1, !dbg !293
  %output_local.sroa.26.16.vec.extract = extractelement <4 x float> %307, i64 0, !dbg !293
  %conv.i.i.1 = fpext half %341 to float, !dbg !294
  %mul619.1 = fmul contract float %output_local.sroa.26.28.vec.extract, %conv.i.i.1, !dbg !299
  %364 = fptrunc float %mul619.1 to half, !dbg !290
  %365 = bitcast half %364 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.1 = zext i16 %365 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.1 = shl nuw i64 %__1.sroa.6.0.insert.ext.1, 48, !dbg !302
  %mul616.1 = fmul contract float %output_local.sroa.26.24.vec.extract, %conv.i.i.1, !dbg !303
  %366 = fptrunc float %mul616.1 to half, !dbg !281
  %367 = bitcast half %366 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.1 = zext i16 %367 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.1, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.1 = or disjoint i64 %__1.sroa.6.0.insert.shift.1, %__1.sroa.5.0.insert.shift.1, !dbg !302
  %mul613.1 = fmul contract float %output_local.sroa.26.20.vec.extract, %conv.i.i.1, !dbg !305
  %368 = fptrunc float %mul613.1 to half, !dbg !279
  %369 = bitcast half %368 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.1 = zext i16 %369 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.1, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.1 = or disjoint i64 %__1.sroa.5.0.insert.insert.1, %__1.sroa.4.0.insert.shift.1, !dbg !302
  %mul610.1 = fmul contract float %output_local.sroa.26.16.vec.extract, %conv.i.i.1, !dbg !308
  %370 = fptrunc float %mul610.1 to half, !dbg !270
  %371 = bitcast half %370 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.1 = zext i16 %371 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.1 = or disjoint i64 %__1.sroa.4.0.insert.insert.1, %__1.sroa.0.0.insert.ext.1, !dbg !302
  %add682.1 = or disjoint i64 %add674, 16, !dbg !313
  %gep904.1 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.1, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.1, ptr addrspace(1) %gep904.1, align 8, !dbg !311
  br label %for.inc693.1, !dbg !312

for.inc693.1:                                     ; preds = %if.then656.1, %if.then587.1, %for.inc693
  br i1 %cmp586, label %if.then587.2, label %for.inc693.2, !dbg !269

if.then587.2:                                     ; preds = %for.inc693.1
  %372 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %372), !dbg !270, !noalias !274
  %373 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %373), !dbg !279, !noalias !274
  %374 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %374), !dbg !281, !noalias !285
  %375 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %375), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.2, label %for.inc693.2, !dbg !292

if.then656.2:                                     ; preds = %if.then587.2
  %output_local.sroa.50.44.vec.extract = extractelement <4 x float> %308, i64 3, !dbg !293
  %output_local.sroa.50.40.vec.extract = extractelement <4 x float> %308, i64 2, !dbg !293
  %output_local.sroa.50.36.vec.extract = extractelement <4 x float> %308, i64 1, !dbg !293
  %output_local.sroa.50.32.vec.extract = extractelement <4 x float> %308, i64 0, !dbg !293
  %conv.i.i.2 = fpext half %341 to float, !dbg !294
  %mul619.2 = fmul contract float %output_local.sroa.50.44.vec.extract, %conv.i.i.2, !dbg !299
  %376 = fptrunc float %mul619.2 to half, !dbg !290
  %377 = bitcast half %376 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.2 = zext i16 %377 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.2 = shl nuw i64 %__1.sroa.6.0.insert.ext.2, 48, !dbg !302
  %mul616.2 = fmul contract float %output_local.sroa.50.40.vec.extract, %conv.i.i.2, !dbg !303
  %378 = fptrunc float %mul616.2 to half, !dbg !281
  %379 = bitcast half %378 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.2 = zext i16 %379 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.2, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.2 = or disjoint i64 %__1.sroa.6.0.insert.shift.2, %__1.sroa.5.0.insert.shift.2, !dbg !302
  %mul613.2 = fmul contract float %output_local.sroa.50.36.vec.extract, %conv.i.i.2, !dbg !305
  %380 = fptrunc float %mul613.2 to half, !dbg !279
  %381 = bitcast half %380 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.2 = zext i16 %381 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.2, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.2 = or disjoint i64 %__1.sroa.5.0.insert.insert.2, %__1.sroa.4.0.insert.shift.2, !dbg !302
  %mul610.2 = fmul contract float %output_local.sroa.50.32.vec.extract, %conv.i.i.2, !dbg !308
  %382 = fptrunc float %mul610.2 to half, !dbg !270
  %383 = bitcast half %382 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.2 = zext i16 %383 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.2 = or disjoint i64 %__1.sroa.4.0.insert.insert.2, %__1.sroa.0.0.insert.ext.2, !dbg !302
  %add682.2 = or disjoint i64 %add674, 32, !dbg !313
  %gep904.2 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.2, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.2, ptr addrspace(1) %gep904.2, align 8, !dbg !311
  br label %for.inc693.2, !dbg !312

for.inc693.2:                                     ; preds = %if.then656.2, %if.then587.2, %for.inc693.1
  br i1 %cmp586, label %if.then587.3, label %for.inc693.3, !dbg !269

if.then587.3:                                     ; preds = %for.inc693.2
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !270, !noalias !274
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !279, !noalias !274
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !281, !noalias !285
  %387 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %387), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.3, label %for.inc693.3, !dbg !292

if.then656.3:                                     ; preds = %if.then587.3
  %output_local.sroa.74.60.vec.extract = extractelement <4 x float> %309, i64 3, !dbg !293
  %output_local.sroa.74.56.vec.extract = extractelement <4 x float> %309, i64 2, !dbg !293
  %output_local.sroa.74.52.vec.extract = extractelement <4 x float> %309, i64 1, !dbg !293
  %output_local.sroa.74.48.vec.extract = extractelement <4 x float> %309, i64 0, !dbg !293
  %conv.i.i.3 = fpext half %341 to float, !dbg !294
  %mul619.3 = fmul contract float %output_local.sroa.74.60.vec.extract, %conv.i.i.3, !dbg !299
  %388 = fptrunc float %mul619.3 to half, !dbg !290
  %389 = bitcast half %388 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.3 = zext i16 %389 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.3 = shl nuw i64 %__1.sroa.6.0.insert.ext.3, 48, !dbg !302
  %mul616.3 = fmul contract float %output_local.sroa.74.56.vec.extract, %conv.i.i.3, !dbg !303
  %390 = fptrunc float %mul616.3 to half, !dbg !281
  %391 = bitcast half %390 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.3 = zext i16 %391 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.3, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.3 = or disjoint i64 %__1.sroa.6.0.insert.shift.3, %__1.sroa.5.0.insert.shift.3, !dbg !302
  %mul613.3 = fmul contract float %output_local.sroa.74.52.vec.extract, %conv.i.i.3, !dbg !305
  %392 = fptrunc float %mul613.3 to half, !dbg !279
  %393 = bitcast half %392 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.3 = zext i16 %393 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.3, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.3 = or disjoint i64 %__1.sroa.5.0.insert.insert.3, %__1.sroa.4.0.insert.shift.3, !dbg !302
  %mul610.3 = fmul contract float %output_local.sroa.74.48.vec.extract, %conv.i.i.3, !dbg !308
  %394 = fptrunc float %mul610.3 to half, !dbg !270
  %395 = bitcast half %394 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.3 = zext i16 %395 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.3 = or disjoint i64 %__1.sroa.4.0.insert.insert.3, %__1.sroa.0.0.insert.ext.3, !dbg !302
  %add682.3 = or disjoint i64 %add674, 48, !dbg !313
  %gep904.3 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.3, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.3, ptr addrspace(1) %gep904.3, align 8, !dbg !311
  br label %for.inc693.3, !dbg !312

for.inc693.3:                                     ; preds = %if.then656.3, %if.then587.3, %for.inc693.2
  br i1 %cmp586, label %if.then587.4, label %for.inc693.4, !dbg !269

if.then587.4:                                     ; preds = %for.inc693.3
  %396 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %396), !dbg !270, !noalias !274
  %397 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %397), !dbg !279, !noalias !274
  %398 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %398), !dbg !281, !noalias !285
  %399 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %399), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.4, label %for.inc693.4, !dbg !292

if.then656.4:                                     ; preds = %if.then587.4
  %output_local.sroa.98.76.vec.extract = extractelement <4 x float> %310, i64 3, !dbg !293
  %output_local.sroa.98.72.vec.extract = extractelement <4 x float> %310, i64 2, !dbg !293
  %output_local.sroa.98.68.vec.extract = extractelement <4 x float> %310, i64 1, !dbg !293
  %output_local.sroa.98.64.vec.extract = extractelement <4 x float> %310, i64 0, !dbg !293
  %conv.i.i.4 = fpext half %341 to float, !dbg !294
  %mul619.4 = fmul contract float %output_local.sroa.98.76.vec.extract, %conv.i.i.4, !dbg !299
  %400 = fptrunc float %mul619.4 to half, !dbg !290
  %401 = bitcast half %400 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.4 = zext i16 %401 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.4 = shl nuw i64 %__1.sroa.6.0.insert.ext.4, 48, !dbg !302
  %mul616.4 = fmul contract float %output_local.sroa.98.72.vec.extract, %conv.i.i.4, !dbg !303
  %402 = fptrunc float %mul616.4 to half, !dbg !281
  %403 = bitcast half %402 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.4 = zext i16 %403 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.4, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.4 = or disjoint i64 %__1.sroa.6.0.insert.shift.4, %__1.sroa.5.0.insert.shift.4, !dbg !302
  %mul613.4 = fmul contract float %output_local.sroa.98.68.vec.extract, %conv.i.i.4, !dbg !305
  %404 = fptrunc float %mul613.4 to half, !dbg !279
  %405 = bitcast half %404 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.4 = zext i16 %405 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.4, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.4 = or disjoint i64 %__1.sroa.5.0.insert.insert.4, %__1.sroa.4.0.insert.shift.4, !dbg !302
  %mul610.4 = fmul contract float %output_local.sroa.98.64.vec.extract, %conv.i.i.4, !dbg !308
  %406 = fptrunc float %mul610.4 to half, !dbg !270
  %407 = bitcast half %406 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.4 = zext i16 %407 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.4 = or disjoint i64 %__1.sroa.4.0.insert.insert.4, %__1.sroa.0.0.insert.ext.4, !dbg !302
  %add682.4 = or disjoint i64 %add674, 64, !dbg !313
  %gep904.4 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.4, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.4, ptr addrspace(1) %gep904.4, align 8, !dbg !311
  br label %for.inc693.4, !dbg !312

for.inc693.4:                                     ; preds = %if.then656.4, %if.then587.4, %for.inc693.3
  br i1 %cmp586, label %if.then587.5, label %for.inc693.5, !dbg !269

if.then587.5:                                     ; preds = %for.inc693.4
  %408 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %408), !dbg !270, !noalias !274
  %409 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %409), !dbg !279, !noalias !274
  %410 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %410), !dbg !281, !noalias !285
  %411 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %411), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.5, label %for.inc693.5, !dbg !292

if.then656.5:                                     ; preds = %if.then587.5
  %output_local.sroa.122.92.vec.extract = extractelement <4 x float> %311, i64 3, !dbg !293
  %output_local.sroa.122.88.vec.extract = extractelement <4 x float> %311, i64 2, !dbg !293
  %output_local.sroa.122.84.vec.extract = extractelement <4 x float> %311, i64 1, !dbg !293
  %output_local.sroa.122.80.vec.extract = extractelement <4 x float> %311, i64 0, !dbg !293
  %conv.i.i.5 = fpext half %341 to float, !dbg !294
  %mul619.5 = fmul contract float %output_local.sroa.122.92.vec.extract, %conv.i.i.5, !dbg !299
  %412 = fptrunc float %mul619.5 to half, !dbg !290
  %413 = bitcast half %412 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.5 = zext i16 %413 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.5 = shl nuw i64 %__1.sroa.6.0.insert.ext.5, 48, !dbg !302
  %mul616.5 = fmul contract float %output_local.sroa.122.88.vec.extract, %conv.i.i.5, !dbg !303
  %414 = fptrunc float %mul616.5 to half, !dbg !281
  %415 = bitcast half %414 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.5 = zext i16 %415 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.5, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.5 = or disjoint i64 %__1.sroa.6.0.insert.shift.5, %__1.sroa.5.0.insert.shift.5, !dbg !302
  %mul613.5 = fmul contract float %output_local.sroa.122.84.vec.extract, %conv.i.i.5, !dbg !305
  %416 = fptrunc float %mul613.5 to half, !dbg !279
  %417 = bitcast half %416 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.5 = zext i16 %417 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.5, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.5 = or disjoint i64 %__1.sroa.5.0.insert.insert.5, %__1.sroa.4.0.insert.shift.5, !dbg !302
  %mul610.5 = fmul contract float %output_local.sroa.122.80.vec.extract, %conv.i.i.5, !dbg !308
  %418 = fptrunc float %mul610.5 to half, !dbg !270
  %419 = bitcast half %418 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.5 = zext i16 %419 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.5 = or disjoint i64 %__1.sroa.4.0.insert.insert.5, %__1.sroa.0.0.insert.ext.5, !dbg !302
  %add682.5 = or disjoint i64 %add674, 80, !dbg !313
  %gep904.5 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.5, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.5, ptr addrspace(1) %gep904.5, align 8, !dbg !311
  br label %for.inc693.5, !dbg !312

for.inc693.5:                                     ; preds = %if.then656.5, %if.then587.5, %for.inc693.4
  br i1 %cmp586, label %if.then587.6, label %for.inc693.6, !dbg !269

if.then587.6:                                     ; preds = %for.inc693.5
  %420 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %420), !dbg !270, !noalias !274
  %421 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %421), !dbg !279, !noalias !274
  %422 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %422), !dbg !281, !noalias !285
  %423 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %423), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.6, label %for.inc693.6, !dbg !292

if.then656.6:                                     ; preds = %if.then587.6
  %output_local.sroa.146.108.vec.extract = extractelement <4 x float> %312, i64 3, !dbg !293
  %output_local.sroa.146.104.vec.extract = extractelement <4 x float> %312, i64 2, !dbg !293
  %output_local.sroa.146.100.vec.extract = extractelement <4 x float> %312, i64 1, !dbg !293
  %output_local.sroa.146.96.vec.extract = extractelement <4 x float> %312, i64 0, !dbg !293
  %conv.i.i.6 = fpext half %341 to float, !dbg !294
  %mul619.6 = fmul contract float %output_local.sroa.146.108.vec.extract, %conv.i.i.6, !dbg !299
  %424 = fptrunc float %mul619.6 to half, !dbg !290
  %425 = bitcast half %424 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.6 = zext i16 %425 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.6 = shl nuw i64 %__1.sroa.6.0.insert.ext.6, 48, !dbg !302
  %mul616.6 = fmul contract float %output_local.sroa.146.104.vec.extract, %conv.i.i.6, !dbg !303
  %426 = fptrunc float %mul616.6 to half, !dbg !281
  %427 = bitcast half %426 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.6 = zext i16 %427 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.6, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.6 = or disjoint i64 %__1.sroa.6.0.insert.shift.6, %__1.sroa.5.0.insert.shift.6, !dbg !302
  %mul613.6 = fmul contract float %output_local.sroa.146.100.vec.extract, %conv.i.i.6, !dbg !305
  %428 = fptrunc float %mul613.6 to half, !dbg !279
  %429 = bitcast half %428 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.6 = zext i16 %429 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.6, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.6 = or disjoint i64 %__1.sroa.5.0.insert.insert.6, %__1.sroa.4.0.insert.shift.6, !dbg !302
  %mul610.6 = fmul contract float %output_local.sroa.146.96.vec.extract, %conv.i.i.6, !dbg !308
  %430 = fptrunc float %mul610.6 to half, !dbg !270
  %431 = bitcast half %430 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.6 = zext i16 %431 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.6 = or disjoint i64 %__1.sroa.4.0.insert.insert.6, %__1.sroa.0.0.insert.ext.6, !dbg !302
  %add682.6 = or disjoint i64 %add674, 96, !dbg !313
  %gep904.6 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.6, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.6, ptr addrspace(1) %gep904.6, align 8, !dbg !311
  br label %for.inc693.6, !dbg !312

for.inc693.6:                                     ; preds = %if.then656.6, %if.then587.6, %for.inc693.5
  br i1 %cmp586, label %if.then587.7, label %for.inc693.7, !dbg !269

if.then587.7:                                     ; preds = %for.inc693.6
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !270, !noalias !274
  %433 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %433), !dbg !279, !noalias !274
  %434 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %434), !dbg !281, !noalias !285
  %435 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %435), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.7, label %for.inc693.7, !dbg !292

if.then656.7:                                     ; preds = %if.then587.7
  %output_local.sroa.170.124.vec.extract = extractelement <4 x float> %313, i64 3, !dbg !293
  %output_local.sroa.170.120.vec.extract = extractelement <4 x float> %313, i64 2, !dbg !293
  %output_local.sroa.170.116.vec.extract = extractelement <4 x float> %313, i64 1, !dbg !293
  %output_local.sroa.170.112.vec.extract = extractelement <4 x float> %313, i64 0, !dbg !293
  %conv.i.i.7 = fpext half %341 to float, !dbg !294
  %mul619.7 = fmul contract float %output_local.sroa.170.124.vec.extract, %conv.i.i.7, !dbg !299
  %436 = fptrunc float %mul619.7 to half, !dbg !290
  %437 = bitcast half %436 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.7 = zext i16 %437 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.7 = shl nuw i64 %__1.sroa.6.0.insert.ext.7, 48, !dbg !302
  %mul616.7 = fmul contract float %output_local.sroa.170.120.vec.extract, %conv.i.i.7, !dbg !303
  %438 = fptrunc float %mul616.7 to half, !dbg !281
  %439 = bitcast half %438 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.7 = zext i16 %439 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.7, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.7 = or disjoint i64 %__1.sroa.6.0.insert.shift.7, %__1.sroa.5.0.insert.shift.7, !dbg !302
  %mul613.7 = fmul contract float %output_local.sroa.170.116.vec.extract, %conv.i.i.7, !dbg !305
  %440 = fptrunc float %mul613.7 to half, !dbg !279
  %441 = bitcast half %440 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.7 = zext i16 %441 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.7, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.7 = or disjoint i64 %__1.sroa.5.0.insert.insert.7, %__1.sroa.4.0.insert.shift.7, !dbg !302
  %mul610.7 = fmul contract float %output_local.sroa.170.112.vec.extract, %conv.i.i.7, !dbg !308
  %442 = fptrunc float %mul610.7 to half, !dbg !270
  %443 = bitcast half %442 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.7 = zext i16 %443 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.7 = or disjoint i64 %__1.sroa.4.0.insert.insert.7, %__1.sroa.0.0.insert.ext.7, !dbg !302
  %add682.7 = or disjoint i64 %add674, 112, !dbg !313
  %gep904.7 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.7, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.7, ptr addrspace(1) %gep904.7, align 8, !dbg !311
  br label %for.inc693.7, !dbg !312

for.inc693.7:                                     ; preds = %if.then656.7, %if.then587.7, %for.inc693.6
  br i1 %cmp586, label %if.then587.8, label %for.inc693.8, !dbg !269

if.then587.8:                                     ; preds = %for.inc693.7
  %444 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %444), !dbg !270, !noalias !274
  %445 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %445), !dbg !279, !noalias !274
  %446 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %446), !dbg !281, !noalias !285
  %447 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %447), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.8, label %for.inc693.8, !dbg !292

if.then656.8:                                     ; preds = %if.then587.8
  %output_local.sroa.194.140.vec.extract = extractelement <4 x float> %314, i64 3, !dbg !293
  %output_local.sroa.194.136.vec.extract = extractelement <4 x float> %314, i64 2, !dbg !293
  %output_local.sroa.194.132.vec.extract = extractelement <4 x float> %314, i64 1, !dbg !293
  %output_local.sroa.194.128.vec.extract = extractelement <4 x float> %314, i64 0, !dbg !293
  %conv.i.i.8 = fpext half %341 to float, !dbg !294
  %mul619.8 = fmul contract float %output_local.sroa.194.140.vec.extract, %conv.i.i.8, !dbg !299
  %448 = fptrunc float %mul619.8 to half, !dbg !290
  %449 = bitcast half %448 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.8 = zext i16 %449 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.8 = shl nuw i64 %__1.sroa.6.0.insert.ext.8, 48, !dbg !302
  %mul616.8 = fmul contract float %output_local.sroa.194.136.vec.extract, %conv.i.i.8, !dbg !303
  %450 = fptrunc float %mul616.8 to half, !dbg !281
  %451 = bitcast half %450 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.8 = zext i16 %451 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.8 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.8, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.8 = or disjoint i64 %__1.sroa.6.0.insert.shift.8, %__1.sroa.5.0.insert.shift.8, !dbg !302
  %mul613.8 = fmul contract float %output_local.sroa.194.132.vec.extract, %conv.i.i.8, !dbg !305
  %452 = fptrunc float %mul613.8 to half, !dbg !279
  %453 = bitcast half %452 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.8 = zext i16 %453 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.8 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.8, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.8 = or disjoint i64 %__1.sroa.5.0.insert.insert.8, %__1.sroa.4.0.insert.shift.8, !dbg !302
  %mul610.8 = fmul contract float %output_local.sroa.194.128.vec.extract, %conv.i.i.8, !dbg !308
  %454 = fptrunc float %mul610.8 to half, !dbg !270
  %455 = bitcast half %454 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.8 = zext i16 %455 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.8 = or disjoint i64 %__1.sroa.4.0.insert.insert.8, %__1.sroa.0.0.insert.ext.8, !dbg !302
  %add682.8 = or disjoint i64 %add674, 128, !dbg !313
  %gep904.8 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.8, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.8, ptr addrspace(1) %gep904.8, align 8, !dbg !311
  br label %for.inc693.8, !dbg !312

for.inc693.8:                                     ; preds = %if.then656.8, %if.then587.8, %for.inc693.7
  br i1 %cmp586, label %if.then587.9, label %for.inc693.9, !dbg !269

if.then587.9:                                     ; preds = %for.inc693.8
  %456 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %456), !dbg !270, !noalias !274
  %457 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %457), !dbg !279, !noalias !274
  %458 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %458), !dbg !281, !noalias !285
  %459 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %459), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.9, label %for.inc693.9, !dbg !292

if.then656.9:                                     ; preds = %if.then587.9
  %output_local.sroa.218.156.vec.extract = extractelement <4 x float> %315, i64 3, !dbg !293
  %output_local.sroa.218.152.vec.extract = extractelement <4 x float> %315, i64 2, !dbg !293
  %output_local.sroa.218.148.vec.extract = extractelement <4 x float> %315, i64 1, !dbg !293
  %output_local.sroa.218.144.vec.extract = extractelement <4 x float> %315, i64 0, !dbg !293
  %conv.i.i.9 = fpext half %341 to float, !dbg !294
  %mul619.9 = fmul contract float %output_local.sroa.218.156.vec.extract, %conv.i.i.9, !dbg !299
  %460 = fptrunc float %mul619.9 to half, !dbg !290
  %461 = bitcast half %460 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.9 = zext i16 %461 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.9 = shl nuw i64 %__1.sroa.6.0.insert.ext.9, 48, !dbg !302
  %mul616.9 = fmul contract float %output_local.sroa.218.152.vec.extract, %conv.i.i.9, !dbg !303
  %462 = fptrunc float %mul616.9 to half, !dbg !281
  %463 = bitcast half %462 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.9 = zext i16 %463 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.9 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.9, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.9 = or disjoint i64 %__1.sroa.6.0.insert.shift.9, %__1.sroa.5.0.insert.shift.9, !dbg !302
  %mul613.9 = fmul contract float %output_local.sroa.218.148.vec.extract, %conv.i.i.9, !dbg !305
  %464 = fptrunc float %mul613.9 to half, !dbg !279
  %465 = bitcast half %464 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.9 = zext i16 %465 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.9 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.9, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.9 = or disjoint i64 %__1.sroa.5.0.insert.insert.9, %__1.sroa.4.0.insert.shift.9, !dbg !302
  %mul610.9 = fmul contract float %output_local.sroa.218.144.vec.extract, %conv.i.i.9, !dbg !308
  %466 = fptrunc float %mul610.9 to half, !dbg !270
  %467 = bitcast half %466 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.9 = zext i16 %467 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.9 = or disjoint i64 %__1.sroa.4.0.insert.insert.9, %__1.sroa.0.0.insert.ext.9, !dbg !302
  %add682.9 = or disjoint i64 %add674, 144, !dbg !313
  %gep904.9 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.9, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.9, ptr addrspace(1) %gep904.9, align 8, !dbg !311
  br label %for.inc693.9, !dbg !312

for.inc693.9:                                     ; preds = %if.then656.9, %if.then587.9, %for.inc693.8
  br i1 %cmp586, label %if.then587.10, label %for.inc693.10, !dbg !269

if.then587.10:                                    ; preds = %for.inc693.9
  %468 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %468), !dbg !270, !noalias !274
  %469 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %469), !dbg !279, !noalias !274
  %470 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %470), !dbg !281, !noalias !285
  %471 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %471), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.10, label %for.inc693.10, !dbg !292

if.then656.10:                                    ; preds = %if.then587.10
  %output_local.sroa.242.172.vec.extract = extractelement <4 x float> %316, i64 3, !dbg !293
  %output_local.sroa.242.168.vec.extract = extractelement <4 x float> %316, i64 2, !dbg !293
  %output_local.sroa.242.164.vec.extract = extractelement <4 x float> %316, i64 1, !dbg !293
  %output_local.sroa.242.160.vec.extract = extractelement <4 x float> %316, i64 0, !dbg !293
  %conv.i.i.10 = fpext half %341 to float, !dbg !294
  %mul619.10 = fmul contract float %output_local.sroa.242.172.vec.extract, %conv.i.i.10, !dbg !299
  %472 = fptrunc float %mul619.10 to half, !dbg !290
  %473 = bitcast half %472 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.10 = zext i16 %473 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.10 = shl nuw i64 %__1.sroa.6.0.insert.ext.10, 48, !dbg !302
  %mul616.10 = fmul contract float %output_local.sroa.242.168.vec.extract, %conv.i.i.10, !dbg !303
  %474 = fptrunc float %mul616.10 to half, !dbg !281
  %475 = bitcast half %474 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.10 = zext i16 %475 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.10 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.10, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.10 = or disjoint i64 %__1.sroa.6.0.insert.shift.10, %__1.sroa.5.0.insert.shift.10, !dbg !302
  %mul613.10 = fmul contract float %output_local.sroa.242.164.vec.extract, %conv.i.i.10, !dbg !305
  %476 = fptrunc float %mul613.10 to half, !dbg !279
  %477 = bitcast half %476 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.10 = zext i16 %477 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.10 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.10, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.10 = or disjoint i64 %__1.sroa.5.0.insert.insert.10, %__1.sroa.4.0.insert.shift.10, !dbg !302
  %mul610.10 = fmul contract float %output_local.sroa.242.160.vec.extract, %conv.i.i.10, !dbg !308
  %478 = fptrunc float %mul610.10 to half, !dbg !270
  %479 = bitcast half %478 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.10 = zext i16 %479 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.10 = or disjoint i64 %__1.sroa.4.0.insert.insert.10, %__1.sroa.0.0.insert.ext.10, !dbg !302
  %add682.10 = or disjoint i64 %add674, 160, !dbg !313
  %gep904.10 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.10, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.10, ptr addrspace(1) %gep904.10, align 8, !dbg !311
  br label %for.inc693.10, !dbg !312

for.inc693.10:                                    ; preds = %if.then656.10, %if.then587.10, %for.inc693.9
  br i1 %cmp586, label %if.then587.11, label %for.inc693.11, !dbg !269

if.then587.11:                                    ; preds = %for.inc693.10
  %480 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %480), !dbg !270, !noalias !274
  %481 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %481), !dbg !279, !noalias !274
  %482 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %482), !dbg !281, !noalias !285
  %483 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %483), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.11, label %for.inc693.11, !dbg !292

if.then656.11:                                    ; preds = %if.then587.11
  %output_local.sroa.266.188.vec.extract = extractelement <4 x float> %317, i64 3, !dbg !293
  %output_local.sroa.266.184.vec.extract = extractelement <4 x float> %317, i64 2, !dbg !293
  %output_local.sroa.266.180.vec.extract = extractelement <4 x float> %317, i64 1, !dbg !293
  %output_local.sroa.266.176.vec.extract = extractelement <4 x float> %317, i64 0, !dbg !293
  %conv.i.i.11 = fpext half %341 to float, !dbg !294
  %mul619.11 = fmul contract float %output_local.sroa.266.188.vec.extract, %conv.i.i.11, !dbg !299
  %484 = fptrunc float %mul619.11 to half, !dbg !290
  %485 = bitcast half %484 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.11 = zext i16 %485 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.11 = shl nuw i64 %__1.sroa.6.0.insert.ext.11, 48, !dbg !302
  %mul616.11 = fmul contract float %output_local.sroa.266.184.vec.extract, %conv.i.i.11, !dbg !303
  %486 = fptrunc float %mul616.11 to half, !dbg !281
  %487 = bitcast half %486 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.11 = zext i16 %487 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.11 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.11, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.11 = or disjoint i64 %__1.sroa.6.0.insert.shift.11, %__1.sroa.5.0.insert.shift.11, !dbg !302
  %mul613.11 = fmul contract float %output_local.sroa.266.180.vec.extract, %conv.i.i.11, !dbg !305
  %488 = fptrunc float %mul613.11 to half, !dbg !279
  %489 = bitcast half %488 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.11 = zext i16 %489 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.11 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.11, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.11 = or disjoint i64 %__1.sroa.5.0.insert.insert.11, %__1.sroa.4.0.insert.shift.11, !dbg !302
  %mul610.11 = fmul contract float %output_local.sroa.266.176.vec.extract, %conv.i.i.11, !dbg !308
  %490 = fptrunc float %mul610.11 to half, !dbg !270
  %491 = bitcast half %490 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.11 = zext i16 %491 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.11 = or disjoint i64 %__1.sroa.4.0.insert.insert.11, %__1.sroa.0.0.insert.ext.11, !dbg !302
  %add682.11 = or disjoint i64 %add674, 176, !dbg !313
  %gep904.11 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.11, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.11, ptr addrspace(1) %gep904.11, align 8, !dbg !311
  br label %for.inc693.11, !dbg !312

for.inc693.11:                                    ; preds = %if.then656.11, %if.then587.11, %for.inc693.10
  br i1 %cmp586, label %if.then587.12, label %for.inc693.12, !dbg !269

if.then587.12:                                    ; preds = %for.inc693.11
  %492 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %492), !dbg !270, !noalias !274
  %493 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %493), !dbg !279, !noalias !274
  %494 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %494), !dbg !281, !noalias !285
  %495 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %495), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.12, label %for.inc693.12, !dbg !292

if.then656.12:                                    ; preds = %if.then587.12
  %output_local.sroa.290.204.vec.extract = extractelement <4 x float> %318, i64 3, !dbg !293
  %output_local.sroa.290.200.vec.extract = extractelement <4 x float> %318, i64 2, !dbg !293
  %output_local.sroa.290.196.vec.extract = extractelement <4 x float> %318, i64 1, !dbg !293
  %output_local.sroa.290.192.vec.extract = extractelement <4 x float> %318, i64 0, !dbg !293
  %conv.i.i.12 = fpext half %341 to float, !dbg !294
  %mul619.12 = fmul contract float %output_local.sroa.290.204.vec.extract, %conv.i.i.12, !dbg !299
  %496 = fptrunc float %mul619.12 to half, !dbg !290
  %497 = bitcast half %496 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.12 = zext i16 %497 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.12 = shl nuw i64 %__1.sroa.6.0.insert.ext.12, 48, !dbg !302
  %mul616.12 = fmul contract float %output_local.sroa.290.200.vec.extract, %conv.i.i.12, !dbg !303
  %498 = fptrunc float %mul616.12 to half, !dbg !281
  %499 = bitcast half %498 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.12 = zext i16 %499 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.12 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.12, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.12 = or disjoint i64 %__1.sroa.6.0.insert.shift.12, %__1.sroa.5.0.insert.shift.12, !dbg !302
  %mul613.12 = fmul contract float %output_local.sroa.290.196.vec.extract, %conv.i.i.12, !dbg !305
  %500 = fptrunc float %mul613.12 to half, !dbg !279
  %501 = bitcast half %500 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.12 = zext i16 %501 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.12 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.12, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.12 = or disjoint i64 %__1.sroa.5.0.insert.insert.12, %__1.sroa.4.0.insert.shift.12, !dbg !302
  %mul610.12 = fmul contract float %output_local.sroa.290.192.vec.extract, %conv.i.i.12, !dbg !308
  %502 = fptrunc float %mul610.12 to half, !dbg !270
  %503 = bitcast half %502 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.12 = zext i16 %503 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.12 = or disjoint i64 %__1.sroa.4.0.insert.insert.12, %__1.sroa.0.0.insert.ext.12, !dbg !302
  %add682.12 = or disjoint i64 %add674, 192, !dbg !313
  %gep904.12 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.12, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.12, ptr addrspace(1) %gep904.12, align 8, !dbg !311
  br label %for.inc693.12, !dbg !312

for.inc693.12:                                    ; preds = %if.then656.12, %if.then587.12, %for.inc693.11
  br i1 %cmp586, label %if.then587.13, label %for.inc693.13, !dbg !269

if.then587.13:                                    ; preds = %for.inc693.12
  %504 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %504), !dbg !270, !noalias !274
  %505 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %505), !dbg !279, !noalias !274
  %506 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %506), !dbg !281, !noalias !285
  %507 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %507), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.13, label %for.inc693.13, !dbg !292

if.then656.13:                                    ; preds = %if.then587.13
  %output_local.sroa.314.220.vec.extract = extractelement <4 x float> %319, i64 3, !dbg !293
  %output_local.sroa.314.216.vec.extract = extractelement <4 x float> %319, i64 2, !dbg !293
  %output_local.sroa.314.212.vec.extract = extractelement <4 x float> %319, i64 1, !dbg !293
  %output_local.sroa.314.208.vec.extract = extractelement <4 x float> %319, i64 0, !dbg !293
  %conv.i.i.13 = fpext half %341 to float, !dbg !294
  %mul619.13 = fmul contract float %output_local.sroa.314.220.vec.extract, %conv.i.i.13, !dbg !299
  %508 = fptrunc float %mul619.13 to half, !dbg !290
  %509 = bitcast half %508 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.13 = zext i16 %509 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.13 = shl nuw i64 %__1.sroa.6.0.insert.ext.13, 48, !dbg !302
  %mul616.13 = fmul contract float %output_local.sroa.314.216.vec.extract, %conv.i.i.13, !dbg !303
  %510 = fptrunc float %mul616.13 to half, !dbg !281
  %511 = bitcast half %510 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.13 = zext i16 %511 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.13 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.13, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.13 = or disjoint i64 %__1.sroa.6.0.insert.shift.13, %__1.sroa.5.0.insert.shift.13, !dbg !302
  %mul613.13 = fmul contract float %output_local.sroa.314.212.vec.extract, %conv.i.i.13, !dbg !305
  %512 = fptrunc float %mul613.13 to half, !dbg !279
  %513 = bitcast half %512 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.13 = zext i16 %513 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.13 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.13, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.13 = or disjoint i64 %__1.sroa.5.0.insert.insert.13, %__1.sroa.4.0.insert.shift.13, !dbg !302
  %mul610.13 = fmul contract float %output_local.sroa.314.208.vec.extract, %conv.i.i.13, !dbg !308
  %514 = fptrunc float %mul610.13 to half, !dbg !270
  %515 = bitcast half %514 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.13 = zext i16 %515 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.13 = or disjoint i64 %__1.sroa.4.0.insert.insert.13, %__1.sroa.0.0.insert.ext.13, !dbg !302
  %add682.13 = or disjoint i64 %add674, 208, !dbg !313
  %gep904.13 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.13, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.13, ptr addrspace(1) %gep904.13, align 8, !dbg !311
  br label %for.inc693.13, !dbg !312

for.inc693.13:                                    ; preds = %if.then656.13, %if.then587.13, %for.inc693.12
  br i1 %cmp586, label %if.then587.14, label %for.inc693.14, !dbg !269

if.then587.14:                                    ; preds = %for.inc693.13
  %516 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %516), !dbg !270, !noalias !274
  %517 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %517), !dbg !279, !noalias !274
  %518 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %518), !dbg !281, !noalias !285
  %519 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %519), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.14, label %for.inc693.14, !dbg !292

if.then656.14:                                    ; preds = %if.then587.14
  %output_local.sroa.338.236.vec.extract = extractelement <4 x float> %320, i64 3, !dbg !293
  %output_local.sroa.338.232.vec.extract = extractelement <4 x float> %320, i64 2, !dbg !293
  %output_local.sroa.338.228.vec.extract = extractelement <4 x float> %320, i64 1, !dbg !293
  %output_local.sroa.338.224.vec.extract = extractelement <4 x float> %320, i64 0, !dbg !293
  %conv.i.i.14 = fpext half %341 to float, !dbg !294
  %mul619.14 = fmul contract float %output_local.sroa.338.236.vec.extract, %conv.i.i.14, !dbg !299
  %520 = fptrunc float %mul619.14 to half, !dbg !290
  %521 = bitcast half %520 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.14 = zext i16 %521 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.14 = shl nuw i64 %__1.sroa.6.0.insert.ext.14, 48, !dbg !302
  %mul616.14 = fmul contract float %output_local.sroa.338.232.vec.extract, %conv.i.i.14, !dbg !303
  %522 = fptrunc float %mul616.14 to half, !dbg !281
  %523 = bitcast half %522 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.14 = zext i16 %523 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.14 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.14, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.14 = or disjoint i64 %__1.sroa.6.0.insert.shift.14, %__1.sroa.5.0.insert.shift.14, !dbg !302
  %mul613.14 = fmul contract float %output_local.sroa.338.228.vec.extract, %conv.i.i.14, !dbg !305
  %524 = fptrunc float %mul613.14 to half, !dbg !279
  %525 = bitcast half %524 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.14 = zext i16 %525 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.14 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.14, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.14 = or disjoint i64 %__1.sroa.5.0.insert.insert.14, %__1.sroa.4.0.insert.shift.14, !dbg !302
  %mul610.14 = fmul contract float %output_local.sroa.338.224.vec.extract, %conv.i.i.14, !dbg !308
  %526 = fptrunc float %mul610.14 to half, !dbg !270
  %527 = bitcast half %526 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.14 = zext i16 %527 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.14 = or disjoint i64 %__1.sroa.4.0.insert.insert.14, %__1.sroa.0.0.insert.ext.14, !dbg !302
  %add682.14 = or disjoint i64 %add674, 224, !dbg !313
  %gep904.14 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.14, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.14, ptr addrspace(1) %gep904.14, align 8, !dbg !311
  br label %for.inc693.14, !dbg !312

for.inc693.14:                                    ; preds = %if.then656.14, %if.then587.14, %for.inc693.13
  br i1 %cmp586, label %if.then587.15, label %for.inc693.15, !dbg !269

if.then587.15:                                    ; preds = %for.inc693.14
  %528 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %528), !dbg !270, !noalias !274
  %529 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %529), !dbg !279, !noalias !274
  %530 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %530), !dbg !281, !noalias !285
  %531 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %531), !dbg !290, !noalias !285
  br i1 %or.cond, label %if.then656.15, label %for.inc693.15, !dbg !292

if.then656.15:                                    ; preds = %if.then587.15
  %output_local.sroa.362.252.vec.extract = extractelement <4 x float> %321, i64 3, !dbg !293
  %output_local.sroa.362.248.vec.extract = extractelement <4 x float> %321, i64 2, !dbg !293
  %output_local.sroa.362.244.vec.extract = extractelement <4 x float> %321, i64 1, !dbg !293
  %output_local.sroa.362.240.vec.extract = extractelement <4 x float> %321, i64 0, !dbg !293
  %conv.i.i.15 = fpext half %341 to float, !dbg !294
  %mul619.15 = fmul contract float %output_local.sroa.362.252.vec.extract, %conv.i.i.15, !dbg !299
  %532 = fptrunc float %mul619.15 to half, !dbg !290
  %533 = bitcast half %532 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.15 = zext i16 %533 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.15 = shl nuw i64 %__1.sroa.6.0.insert.ext.15, 48, !dbg !302
  %mul616.15 = fmul contract float %output_local.sroa.362.248.vec.extract, %conv.i.i.15, !dbg !303
  %534 = fptrunc float %mul616.15 to half, !dbg !281
  %535 = bitcast half %534 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.15 = zext i16 %535 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.15 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.15, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.15 = or disjoint i64 %__1.sroa.6.0.insert.shift.15, %__1.sroa.5.0.insert.shift.15, !dbg !302
  %mul613.15 = fmul contract float %output_local.sroa.362.244.vec.extract, %conv.i.i.15, !dbg !305
  %536 = fptrunc float %mul613.15 to half, !dbg !279
  %537 = bitcast half %536 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.15 = zext i16 %537 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.15 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.15, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.15 = or disjoint i64 %__1.sroa.5.0.insert.insert.15, %__1.sroa.4.0.insert.shift.15, !dbg !302
  %mul610.15 = fmul contract float %output_local.sroa.362.240.vec.extract, %conv.i.i.15, !dbg !308
  %538 = fptrunc float %mul610.15 to half, !dbg !270
  %539 = bitcast half %538 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.15 = zext i16 %539 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.15 = or disjoint i64 %__1.sroa.4.0.insert.insert.15, %__1.sroa.0.0.insert.ext.15, !dbg !302
  %add682.15 = or disjoint i64 %add674, 240, !dbg !313
  %gep904.15 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add682.15, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.15, ptr addrspace(1) %gep904.15, align 8, !dbg !311
  br label %for.inc693.15, !dbg !312

for.inc693.15:                                    ; preds = %if.then656.15, %if.then587.15, %for.inc693.14
  %540 = or disjoint i32 %mul95, %and101, !dbg !314
  %add585.16 = or disjoint i32 %540, 16, !dbg !314
  %cmp586.16 = icmp sgt i32 %cond.i.i, %add585.16, !dbg !268
  br i1 %cmp586.16, label %if.then587.16, label %for.inc693.16, !dbg !269

if.then587.16:                                    ; preds = %for.inc693.15
  %541 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %541), !dbg !270, !noalias !274
  %542 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %542), !dbg !279, !noalias !274
  %543 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %543), !dbg !281, !noalias !285
  %544 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %544), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.16, label %for.inc693.16, !dbg !292

if.then656.16:                                    ; preds = %if.then587.16
  %output_local.sroa.386.268.vec.extract = extractelement <4 x float> %323, i64 3, !dbg !293
  %output_local.sroa.386.264.vec.extract = extractelement <4 x float> %323, i64 2, !dbg !293
  %output_local.sroa.386.260.vec.extract = extractelement <4 x float> %323, i64 1, !dbg !293
  %output_local.sroa.386.256.vec.extract = extractelement <4 x float> %323, i64 0, !dbg !293
  %conv.i.i.16 = fpext half %345 to float, !dbg !294
  %mul619.16 = fmul contract float %output_local.sroa.386.268.vec.extract, %conv.i.i.16, !dbg !299
  %545 = fptrunc float %mul619.16 to half, !dbg !290
  %546 = bitcast half %545 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.16 = zext i16 %546 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.16 = shl nuw i64 %__1.sroa.6.0.insert.ext.16, 48, !dbg !302
  %mul616.16 = fmul contract float %output_local.sroa.386.264.vec.extract, %conv.i.i.16, !dbg !303
  %547 = fptrunc float %mul616.16 to half, !dbg !281
  %548 = bitcast half %547 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.16 = zext i16 %548 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.16 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.16, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.16 = or disjoint i64 %__1.sroa.6.0.insert.shift.16, %__1.sroa.5.0.insert.shift.16, !dbg !302
  %mul613.16 = fmul contract float %output_local.sroa.386.260.vec.extract, %conv.i.i.16, !dbg !305
  %549 = fptrunc float %mul613.16 to half, !dbg !279
  %550 = bitcast half %549 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.16 = zext i16 %550 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.16 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.16, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.16 = or disjoint i64 %__1.sroa.5.0.insert.insert.16, %__1.sroa.4.0.insert.shift.16, !dbg !302
  %mul610.16 = fmul contract float %output_local.sroa.386.256.vec.extract, %conv.i.i.16, !dbg !308
  %551 = fptrunc float %mul610.16 to half, !dbg !270
  %552 = bitcast half %551 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.16 = zext i16 %552 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.16 = or disjoint i64 %__1.sroa.4.0.insert.insert.16, %__1.sroa.0.0.insert.ext.16, !dbg !302
  %553 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.16 = getelementptr i8, ptr addrspace(1) %553, i64 229376, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.16, ptr addrspace(1) %gep904.16, align 8, !dbg !311
  br label %for.inc693.16, !dbg !312

for.inc693.16:                                    ; preds = %if.then656.16, %if.then587.16, %for.inc693.15
  br i1 %cmp586.16, label %if.then587.17, label %for.inc693.17, !dbg !269

if.then587.17:                                    ; preds = %for.inc693.16
  %554 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %554), !dbg !270, !noalias !274
  %555 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %555), !dbg !279, !noalias !274
  %556 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %556), !dbg !281, !noalias !285
  %557 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %557), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.17, label %for.inc693.17, !dbg !292

if.then656.17:                                    ; preds = %if.then587.17
  %output_local.sroa.410.284.vec.extract = extractelement <4 x float> %324, i64 3, !dbg !293
  %output_local.sroa.410.280.vec.extract = extractelement <4 x float> %324, i64 2, !dbg !293
  %output_local.sroa.410.276.vec.extract = extractelement <4 x float> %324, i64 1, !dbg !293
  %output_local.sroa.410.272.vec.extract = extractelement <4 x float> %324, i64 0, !dbg !293
  %conv.i.i.17 = fpext half %345 to float, !dbg !294
  %mul619.17 = fmul contract float %output_local.sroa.410.284.vec.extract, %conv.i.i.17, !dbg !299
  %558 = fptrunc float %mul619.17 to half, !dbg !290
  %559 = bitcast half %558 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.17 = zext i16 %559 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.17 = shl nuw i64 %__1.sroa.6.0.insert.ext.17, 48, !dbg !302
  %mul616.17 = fmul contract float %output_local.sroa.410.280.vec.extract, %conv.i.i.17, !dbg !303
  %560 = fptrunc float %mul616.17 to half, !dbg !281
  %561 = bitcast half %560 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.17 = zext i16 %561 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.17 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.17, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.17 = or disjoint i64 %__1.sroa.6.0.insert.shift.17, %__1.sroa.5.0.insert.shift.17, !dbg !302
  %mul613.17 = fmul contract float %output_local.sroa.410.276.vec.extract, %conv.i.i.17, !dbg !305
  %562 = fptrunc float %mul613.17 to half, !dbg !279
  %563 = bitcast half %562 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.17 = zext i16 %563 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.17 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.17, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.17 = or disjoint i64 %__1.sroa.5.0.insert.insert.17, %__1.sroa.4.0.insert.shift.17, !dbg !302
  %mul610.17 = fmul contract float %output_local.sroa.410.272.vec.extract, %conv.i.i.17, !dbg !308
  %564 = fptrunc float %mul610.17 to half, !dbg !270
  %565 = bitcast half %564 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.17 = zext i16 %565 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.17 = or disjoint i64 %__1.sroa.4.0.insert.insert.17, %__1.sroa.0.0.insert.ext.17, !dbg !302
  %566 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.17 = getelementptr i8, ptr addrspace(1) %566, i64 229408, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.17, ptr addrspace(1) %gep904.17, align 8, !dbg !311
  br label %for.inc693.17, !dbg !312

for.inc693.17:                                    ; preds = %if.then656.17, %if.then587.17, %for.inc693.16
  br i1 %cmp586.16, label %if.then587.18, label %for.inc693.18, !dbg !269

if.then587.18:                                    ; preds = %for.inc693.17
  %567 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %567), !dbg !270, !noalias !274
  %568 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %568), !dbg !279, !noalias !274
  %569 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %569), !dbg !281, !noalias !285
  %570 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %570), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.18, label %for.inc693.18, !dbg !292

if.then656.18:                                    ; preds = %if.then587.18
  %output_local.sroa.434.300.vec.extract = extractelement <4 x float> %325, i64 3, !dbg !293
  %output_local.sroa.434.296.vec.extract = extractelement <4 x float> %325, i64 2, !dbg !293
  %output_local.sroa.434.292.vec.extract = extractelement <4 x float> %325, i64 1, !dbg !293
  %output_local.sroa.434.288.vec.extract = extractelement <4 x float> %325, i64 0, !dbg !293
  %conv.i.i.18 = fpext half %345 to float, !dbg !294
  %mul619.18 = fmul contract float %output_local.sroa.434.300.vec.extract, %conv.i.i.18, !dbg !299
  %571 = fptrunc float %mul619.18 to half, !dbg !290
  %572 = bitcast half %571 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.18 = zext i16 %572 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.18 = shl nuw i64 %__1.sroa.6.0.insert.ext.18, 48, !dbg !302
  %mul616.18 = fmul contract float %output_local.sroa.434.296.vec.extract, %conv.i.i.18, !dbg !303
  %573 = fptrunc float %mul616.18 to half, !dbg !281
  %574 = bitcast half %573 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.18 = zext i16 %574 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.18 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.18, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.18 = or disjoint i64 %__1.sroa.6.0.insert.shift.18, %__1.sroa.5.0.insert.shift.18, !dbg !302
  %mul613.18 = fmul contract float %output_local.sroa.434.292.vec.extract, %conv.i.i.18, !dbg !305
  %575 = fptrunc float %mul613.18 to half, !dbg !279
  %576 = bitcast half %575 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.18 = zext i16 %576 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.18 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.18, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.18 = or disjoint i64 %__1.sroa.5.0.insert.insert.18, %__1.sroa.4.0.insert.shift.18, !dbg !302
  %mul610.18 = fmul contract float %output_local.sroa.434.288.vec.extract, %conv.i.i.18, !dbg !308
  %577 = fptrunc float %mul610.18 to half, !dbg !270
  %578 = bitcast half %577 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.18 = zext i16 %578 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.18 = or disjoint i64 %__1.sroa.4.0.insert.insert.18, %__1.sroa.0.0.insert.ext.18, !dbg !302
  %579 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.18 = getelementptr i8, ptr addrspace(1) %579, i64 229440, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.18, ptr addrspace(1) %gep904.18, align 8, !dbg !311
  br label %for.inc693.18, !dbg !312

for.inc693.18:                                    ; preds = %if.then656.18, %if.then587.18, %for.inc693.17
  br i1 %cmp586.16, label %if.then587.19, label %for.inc693.19, !dbg !269

if.then587.19:                                    ; preds = %for.inc693.18
  %580 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %580), !dbg !270, !noalias !274
  %581 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %581), !dbg !279, !noalias !274
  %582 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %582), !dbg !281, !noalias !285
  %583 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %583), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.19, label %for.inc693.19, !dbg !292

if.then656.19:                                    ; preds = %if.then587.19
  %output_local.sroa.458.316.vec.extract = extractelement <4 x float> %326, i64 3, !dbg !293
  %output_local.sroa.458.312.vec.extract = extractelement <4 x float> %326, i64 2, !dbg !293
  %output_local.sroa.458.308.vec.extract = extractelement <4 x float> %326, i64 1, !dbg !293
  %output_local.sroa.458.304.vec.extract = extractelement <4 x float> %326, i64 0, !dbg !293
  %conv.i.i.19 = fpext half %345 to float, !dbg !294
  %mul619.19 = fmul contract float %output_local.sroa.458.316.vec.extract, %conv.i.i.19, !dbg !299
  %584 = fptrunc float %mul619.19 to half, !dbg !290
  %585 = bitcast half %584 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.19 = zext i16 %585 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.19 = shl nuw i64 %__1.sroa.6.0.insert.ext.19, 48, !dbg !302
  %mul616.19 = fmul contract float %output_local.sroa.458.312.vec.extract, %conv.i.i.19, !dbg !303
  %586 = fptrunc float %mul616.19 to half, !dbg !281
  %587 = bitcast half %586 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.19 = zext i16 %587 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.19 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.19, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.19 = or disjoint i64 %__1.sroa.6.0.insert.shift.19, %__1.sroa.5.0.insert.shift.19, !dbg !302
  %mul613.19 = fmul contract float %output_local.sroa.458.308.vec.extract, %conv.i.i.19, !dbg !305
  %588 = fptrunc float %mul613.19 to half, !dbg !279
  %589 = bitcast half %588 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.19 = zext i16 %589 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.19 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.19, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.19 = or disjoint i64 %__1.sroa.5.0.insert.insert.19, %__1.sroa.4.0.insert.shift.19, !dbg !302
  %mul610.19 = fmul contract float %output_local.sroa.458.304.vec.extract, %conv.i.i.19, !dbg !308
  %590 = fptrunc float %mul610.19 to half, !dbg !270
  %591 = bitcast half %590 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.19 = zext i16 %591 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.19 = or disjoint i64 %__1.sroa.4.0.insert.insert.19, %__1.sroa.0.0.insert.ext.19, !dbg !302
  %592 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.19 = getelementptr i8, ptr addrspace(1) %592, i64 229472, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.19, ptr addrspace(1) %gep904.19, align 8, !dbg !311
  br label %for.inc693.19, !dbg !312

for.inc693.19:                                    ; preds = %if.then656.19, %if.then587.19, %for.inc693.18
  br i1 %cmp586.16, label %if.then587.20, label %for.inc693.20, !dbg !269

if.then587.20:                                    ; preds = %for.inc693.19
  %593 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %593), !dbg !270, !noalias !274
  %594 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %594), !dbg !279, !noalias !274
  %595 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %595), !dbg !281, !noalias !285
  %596 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %596), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.20, label %for.inc693.20, !dbg !292

if.then656.20:                                    ; preds = %if.then587.20
  %output_local.sroa.482.332.vec.extract = extractelement <4 x float> %327, i64 3, !dbg !293
  %output_local.sroa.482.328.vec.extract = extractelement <4 x float> %327, i64 2, !dbg !293
  %output_local.sroa.482.324.vec.extract = extractelement <4 x float> %327, i64 1, !dbg !293
  %output_local.sroa.482.320.vec.extract = extractelement <4 x float> %327, i64 0, !dbg !293
  %conv.i.i.20 = fpext half %345 to float, !dbg !294
  %mul619.20 = fmul contract float %output_local.sroa.482.332.vec.extract, %conv.i.i.20, !dbg !299
  %597 = fptrunc float %mul619.20 to half, !dbg !290
  %598 = bitcast half %597 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.20 = zext i16 %598 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.20 = shl nuw i64 %__1.sroa.6.0.insert.ext.20, 48, !dbg !302
  %mul616.20 = fmul contract float %output_local.sroa.482.328.vec.extract, %conv.i.i.20, !dbg !303
  %599 = fptrunc float %mul616.20 to half, !dbg !281
  %600 = bitcast half %599 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.20 = zext i16 %600 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.20 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.20, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.20 = or disjoint i64 %__1.sroa.6.0.insert.shift.20, %__1.sroa.5.0.insert.shift.20, !dbg !302
  %mul613.20 = fmul contract float %output_local.sroa.482.324.vec.extract, %conv.i.i.20, !dbg !305
  %601 = fptrunc float %mul613.20 to half, !dbg !279
  %602 = bitcast half %601 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.20 = zext i16 %602 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.20 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.20, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.20 = or disjoint i64 %__1.sroa.5.0.insert.insert.20, %__1.sroa.4.0.insert.shift.20, !dbg !302
  %mul610.20 = fmul contract float %output_local.sroa.482.320.vec.extract, %conv.i.i.20, !dbg !308
  %603 = fptrunc float %mul610.20 to half, !dbg !270
  %604 = bitcast half %603 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.20 = zext i16 %604 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.20 = or disjoint i64 %__1.sroa.4.0.insert.insert.20, %__1.sroa.0.0.insert.ext.20, !dbg !302
  %605 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.20 = getelementptr i8, ptr addrspace(1) %605, i64 229504, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.20, ptr addrspace(1) %gep904.20, align 8, !dbg !311
  br label %for.inc693.20, !dbg !312

for.inc693.20:                                    ; preds = %if.then656.20, %if.then587.20, %for.inc693.19
  br i1 %cmp586.16, label %if.then587.21, label %for.inc693.21, !dbg !269

if.then587.21:                                    ; preds = %for.inc693.20
  %606 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %606), !dbg !270, !noalias !274
  %607 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %607), !dbg !279, !noalias !274
  %608 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %608), !dbg !281, !noalias !285
  %609 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %609), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.21, label %for.inc693.21, !dbg !292

if.then656.21:                                    ; preds = %if.then587.21
  %output_local.sroa.506.348.vec.extract = extractelement <4 x float> %328, i64 3, !dbg !293
  %output_local.sroa.506.344.vec.extract = extractelement <4 x float> %328, i64 2, !dbg !293
  %output_local.sroa.506.340.vec.extract = extractelement <4 x float> %328, i64 1, !dbg !293
  %output_local.sroa.506.336.vec.extract = extractelement <4 x float> %328, i64 0, !dbg !293
  %conv.i.i.21 = fpext half %345 to float, !dbg !294
  %mul619.21 = fmul contract float %output_local.sroa.506.348.vec.extract, %conv.i.i.21, !dbg !299
  %610 = fptrunc float %mul619.21 to half, !dbg !290
  %611 = bitcast half %610 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.21 = zext i16 %611 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.21 = shl nuw i64 %__1.sroa.6.0.insert.ext.21, 48, !dbg !302
  %mul616.21 = fmul contract float %output_local.sroa.506.344.vec.extract, %conv.i.i.21, !dbg !303
  %612 = fptrunc float %mul616.21 to half, !dbg !281
  %613 = bitcast half %612 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.21 = zext i16 %613 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.21 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.21, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.21 = or disjoint i64 %__1.sroa.6.0.insert.shift.21, %__1.sroa.5.0.insert.shift.21, !dbg !302
  %mul613.21 = fmul contract float %output_local.sroa.506.340.vec.extract, %conv.i.i.21, !dbg !305
  %614 = fptrunc float %mul613.21 to half, !dbg !279
  %615 = bitcast half %614 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.21 = zext i16 %615 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.21 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.21, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.21 = or disjoint i64 %__1.sroa.5.0.insert.insert.21, %__1.sroa.4.0.insert.shift.21, !dbg !302
  %mul610.21 = fmul contract float %output_local.sroa.506.336.vec.extract, %conv.i.i.21, !dbg !308
  %616 = fptrunc float %mul610.21 to half, !dbg !270
  %617 = bitcast half %616 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.21 = zext i16 %617 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.21 = or disjoint i64 %__1.sroa.4.0.insert.insert.21, %__1.sroa.0.0.insert.ext.21, !dbg !302
  %618 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.21 = getelementptr i8, ptr addrspace(1) %618, i64 229536, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.21, ptr addrspace(1) %gep904.21, align 8, !dbg !311
  br label %for.inc693.21, !dbg !312

for.inc693.21:                                    ; preds = %if.then656.21, %if.then587.21, %for.inc693.20
  br i1 %cmp586.16, label %if.then587.22, label %for.inc693.22, !dbg !269

if.then587.22:                                    ; preds = %for.inc693.21
  %619 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %619), !dbg !270, !noalias !274
  %620 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %620), !dbg !279, !noalias !274
  %621 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %621), !dbg !281, !noalias !285
  %622 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %622), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.22, label %for.inc693.22, !dbg !292

if.then656.22:                                    ; preds = %if.then587.22
  %output_local.sroa.530.364.vec.extract = extractelement <4 x float> %329, i64 3, !dbg !293
  %output_local.sroa.530.360.vec.extract = extractelement <4 x float> %329, i64 2, !dbg !293
  %output_local.sroa.530.356.vec.extract = extractelement <4 x float> %329, i64 1, !dbg !293
  %output_local.sroa.530.352.vec.extract = extractelement <4 x float> %329, i64 0, !dbg !293
  %conv.i.i.22 = fpext half %345 to float, !dbg !294
  %mul619.22 = fmul contract float %output_local.sroa.530.364.vec.extract, %conv.i.i.22, !dbg !299
  %623 = fptrunc float %mul619.22 to half, !dbg !290
  %624 = bitcast half %623 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.22 = zext i16 %624 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.22 = shl nuw i64 %__1.sroa.6.0.insert.ext.22, 48, !dbg !302
  %mul616.22 = fmul contract float %output_local.sroa.530.360.vec.extract, %conv.i.i.22, !dbg !303
  %625 = fptrunc float %mul616.22 to half, !dbg !281
  %626 = bitcast half %625 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.22 = zext i16 %626 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.22 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.22, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.22 = or disjoint i64 %__1.sroa.6.0.insert.shift.22, %__1.sroa.5.0.insert.shift.22, !dbg !302
  %mul613.22 = fmul contract float %output_local.sroa.530.356.vec.extract, %conv.i.i.22, !dbg !305
  %627 = fptrunc float %mul613.22 to half, !dbg !279
  %628 = bitcast half %627 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.22 = zext i16 %628 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.22 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.22, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.22 = or disjoint i64 %__1.sroa.5.0.insert.insert.22, %__1.sroa.4.0.insert.shift.22, !dbg !302
  %mul610.22 = fmul contract float %output_local.sroa.530.352.vec.extract, %conv.i.i.22, !dbg !308
  %629 = fptrunc float %mul610.22 to half, !dbg !270
  %630 = bitcast half %629 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.22 = zext i16 %630 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.22 = or disjoint i64 %__1.sroa.4.0.insert.insert.22, %__1.sroa.0.0.insert.ext.22, !dbg !302
  %631 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.22 = getelementptr i8, ptr addrspace(1) %631, i64 229568, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.22, ptr addrspace(1) %gep904.22, align 8, !dbg !311
  br label %for.inc693.22, !dbg !312

for.inc693.22:                                    ; preds = %if.then656.22, %if.then587.22, %for.inc693.21
  br i1 %cmp586.16, label %if.then587.23, label %for.inc693.23, !dbg !269

if.then587.23:                                    ; preds = %for.inc693.22
  %632 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %632), !dbg !270, !noalias !274
  %633 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %633), !dbg !279, !noalias !274
  %634 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %634), !dbg !281, !noalias !285
  %635 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %635), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.23, label %for.inc693.23, !dbg !292

if.then656.23:                                    ; preds = %if.then587.23
  %output_local.sroa.554.380.vec.extract = extractelement <4 x float> %330, i64 3, !dbg !293
  %output_local.sroa.554.376.vec.extract = extractelement <4 x float> %330, i64 2, !dbg !293
  %output_local.sroa.554.372.vec.extract = extractelement <4 x float> %330, i64 1, !dbg !293
  %output_local.sroa.554.368.vec.extract = extractelement <4 x float> %330, i64 0, !dbg !293
  %conv.i.i.23 = fpext half %345 to float, !dbg !294
  %mul619.23 = fmul contract float %output_local.sroa.554.380.vec.extract, %conv.i.i.23, !dbg !299
  %636 = fptrunc float %mul619.23 to half, !dbg !290
  %637 = bitcast half %636 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.23 = zext i16 %637 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.23 = shl nuw i64 %__1.sroa.6.0.insert.ext.23, 48, !dbg !302
  %mul616.23 = fmul contract float %output_local.sroa.554.376.vec.extract, %conv.i.i.23, !dbg !303
  %638 = fptrunc float %mul616.23 to half, !dbg !281
  %639 = bitcast half %638 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.23 = zext i16 %639 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.23 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.23, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.23 = or disjoint i64 %__1.sroa.6.0.insert.shift.23, %__1.sroa.5.0.insert.shift.23, !dbg !302
  %mul613.23 = fmul contract float %output_local.sroa.554.372.vec.extract, %conv.i.i.23, !dbg !305
  %640 = fptrunc float %mul613.23 to half, !dbg !279
  %641 = bitcast half %640 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.23 = zext i16 %641 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.23 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.23, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.23 = or disjoint i64 %__1.sroa.5.0.insert.insert.23, %__1.sroa.4.0.insert.shift.23, !dbg !302
  %mul610.23 = fmul contract float %output_local.sroa.554.368.vec.extract, %conv.i.i.23, !dbg !308
  %642 = fptrunc float %mul610.23 to half, !dbg !270
  %643 = bitcast half %642 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.23 = zext i16 %643 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.23 = or disjoint i64 %__1.sroa.4.0.insert.insert.23, %__1.sroa.0.0.insert.ext.23, !dbg !302
  %644 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.23 = getelementptr i8, ptr addrspace(1) %644, i64 229600, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.23, ptr addrspace(1) %gep904.23, align 8, !dbg !311
  br label %for.inc693.23, !dbg !312

for.inc693.23:                                    ; preds = %if.then656.23, %if.then587.23, %for.inc693.22
  br i1 %cmp586.16, label %if.then587.24, label %for.inc693.24, !dbg !269

if.then587.24:                                    ; preds = %for.inc693.23
  %645 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %645), !dbg !270, !noalias !274
  %646 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %646), !dbg !279, !noalias !274
  %647 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %647), !dbg !281, !noalias !285
  %648 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %648), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.24, label %for.inc693.24, !dbg !292

if.then656.24:                                    ; preds = %if.then587.24
  %output_local.sroa.578.396.vec.extract = extractelement <4 x float> %331, i64 3, !dbg !293
  %output_local.sroa.578.392.vec.extract = extractelement <4 x float> %331, i64 2, !dbg !293
  %output_local.sroa.578.388.vec.extract = extractelement <4 x float> %331, i64 1, !dbg !293
  %output_local.sroa.578.384.vec.extract = extractelement <4 x float> %331, i64 0, !dbg !293
  %conv.i.i.24 = fpext half %345 to float, !dbg !294
  %mul619.24 = fmul contract float %output_local.sroa.578.396.vec.extract, %conv.i.i.24, !dbg !299
  %649 = fptrunc float %mul619.24 to half, !dbg !290
  %650 = bitcast half %649 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.24 = zext i16 %650 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.24 = shl nuw i64 %__1.sroa.6.0.insert.ext.24, 48, !dbg !302
  %mul616.24 = fmul contract float %output_local.sroa.578.392.vec.extract, %conv.i.i.24, !dbg !303
  %651 = fptrunc float %mul616.24 to half, !dbg !281
  %652 = bitcast half %651 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.24 = zext i16 %652 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.24 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.24, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.24 = or disjoint i64 %__1.sroa.6.0.insert.shift.24, %__1.sroa.5.0.insert.shift.24, !dbg !302
  %mul613.24 = fmul contract float %output_local.sroa.578.388.vec.extract, %conv.i.i.24, !dbg !305
  %653 = fptrunc float %mul613.24 to half, !dbg !279
  %654 = bitcast half %653 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.24 = zext i16 %654 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.24 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.24, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.24 = or disjoint i64 %__1.sroa.5.0.insert.insert.24, %__1.sroa.4.0.insert.shift.24, !dbg !302
  %mul610.24 = fmul contract float %output_local.sroa.578.384.vec.extract, %conv.i.i.24, !dbg !308
  %655 = fptrunc float %mul610.24 to half, !dbg !270
  %656 = bitcast half %655 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.24 = zext i16 %656 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.24 = or disjoint i64 %__1.sroa.4.0.insert.insert.24, %__1.sroa.0.0.insert.ext.24, !dbg !302
  %657 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.24 = getelementptr i8, ptr addrspace(1) %657, i64 229632, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.24, ptr addrspace(1) %gep904.24, align 8, !dbg !311
  br label %for.inc693.24, !dbg !312

for.inc693.24:                                    ; preds = %if.then656.24, %if.then587.24, %for.inc693.23
  br i1 %cmp586.16, label %if.then587.25, label %for.inc693.25, !dbg !269

if.then587.25:                                    ; preds = %for.inc693.24
  %658 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %658), !dbg !270, !noalias !274
  %659 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %659), !dbg !279, !noalias !274
  %660 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %660), !dbg !281, !noalias !285
  %661 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %661), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.25, label %for.inc693.25, !dbg !292

if.then656.25:                                    ; preds = %if.then587.25
  %output_local.sroa.602.412.vec.extract = extractelement <4 x float> %332, i64 3, !dbg !293
  %output_local.sroa.602.408.vec.extract = extractelement <4 x float> %332, i64 2, !dbg !293
  %output_local.sroa.602.404.vec.extract = extractelement <4 x float> %332, i64 1, !dbg !293
  %output_local.sroa.602.400.vec.extract = extractelement <4 x float> %332, i64 0, !dbg !293
  %conv.i.i.25 = fpext half %345 to float, !dbg !294
  %mul619.25 = fmul contract float %output_local.sroa.602.412.vec.extract, %conv.i.i.25, !dbg !299
  %662 = fptrunc float %mul619.25 to half, !dbg !290
  %663 = bitcast half %662 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.25 = zext i16 %663 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.25 = shl nuw i64 %__1.sroa.6.0.insert.ext.25, 48, !dbg !302
  %mul616.25 = fmul contract float %output_local.sroa.602.408.vec.extract, %conv.i.i.25, !dbg !303
  %664 = fptrunc float %mul616.25 to half, !dbg !281
  %665 = bitcast half %664 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.25 = zext i16 %665 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.25 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.25, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.25 = or disjoint i64 %__1.sroa.6.0.insert.shift.25, %__1.sroa.5.0.insert.shift.25, !dbg !302
  %mul613.25 = fmul contract float %output_local.sroa.602.404.vec.extract, %conv.i.i.25, !dbg !305
  %666 = fptrunc float %mul613.25 to half, !dbg !279
  %667 = bitcast half %666 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.25 = zext i16 %667 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.25 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.25, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.25 = or disjoint i64 %__1.sroa.5.0.insert.insert.25, %__1.sroa.4.0.insert.shift.25, !dbg !302
  %mul610.25 = fmul contract float %output_local.sroa.602.400.vec.extract, %conv.i.i.25, !dbg !308
  %668 = fptrunc float %mul610.25 to half, !dbg !270
  %669 = bitcast half %668 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.25 = zext i16 %669 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.25 = or disjoint i64 %__1.sroa.4.0.insert.insert.25, %__1.sroa.0.0.insert.ext.25, !dbg !302
  %670 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.25 = getelementptr i8, ptr addrspace(1) %670, i64 229664, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.25, ptr addrspace(1) %gep904.25, align 8, !dbg !311
  br label %for.inc693.25, !dbg !312

for.inc693.25:                                    ; preds = %if.then656.25, %if.then587.25, %for.inc693.24
  br i1 %cmp586.16, label %if.then587.26, label %for.inc693.26, !dbg !269

if.then587.26:                                    ; preds = %for.inc693.25
  %671 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %671), !dbg !270, !noalias !274
  %672 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %672), !dbg !279, !noalias !274
  %673 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %673), !dbg !281, !noalias !285
  %674 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %674), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.26, label %for.inc693.26, !dbg !292

if.then656.26:                                    ; preds = %if.then587.26
  %output_local.sroa.626.428.vec.extract = extractelement <4 x float> %333, i64 3, !dbg !293
  %output_local.sroa.626.424.vec.extract = extractelement <4 x float> %333, i64 2, !dbg !293
  %output_local.sroa.626.420.vec.extract = extractelement <4 x float> %333, i64 1, !dbg !293
  %output_local.sroa.626.416.vec.extract = extractelement <4 x float> %333, i64 0, !dbg !293
  %conv.i.i.26 = fpext half %345 to float, !dbg !294
  %mul619.26 = fmul contract float %output_local.sroa.626.428.vec.extract, %conv.i.i.26, !dbg !299
  %675 = fptrunc float %mul619.26 to half, !dbg !290
  %676 = bitcast half %675 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.26 = zext i16 %676 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.26 = shl nuw i64 %__1.sroa.6.0.insert.ext.26, 48, !dbg !302
  %mul616.26 = fmul contract float %output_local.sroa.626.424.vec.extract, %conv.i.i.26, !dbg !303
  %677 = fptrunc float %mul616.26 to half, !dbg !281
  %678 = bitcast half %677 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.26 = zext i16 %678 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.26 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.26, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.26 = or disjoint i64 %__1.sroa.6.0.insert.shift.26, %__1.sroa.5.0.insert.shift.26, !dbg !302
  %mul613.26 = fmul contract float %output_local.sroa.626.420.vec.extract, %conv.i.i.26, !dbg !305
  %679 = fptrunc float %mul613.26 to half, !dbg !279
  %680 = bitcast half %679 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.26 = zext i16 %680 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.26 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.26, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.26 = or disjoint i64 %__1.sroa.5.0.insert.insert.26, %__1.sroa.4.0.insert.shift.26, !dbg !302
  %mul610.26 = fmul contract float %output_local.sroa.626.416.vec.extract, %conv.i.i.26, !dbg !308
  %681 = fptrunc float %mul610.26 to half, !dbg !270
  %682 = bitcast half %681 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.26 = zext i16 %682 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.26 = or disjoint i64 %__1.sroa.4.0.insert.insert.26, %__1.sroa.0.0.insert.ext.26, !dbg !302
  %683 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.26 = getelementptr i8, ptr addrspace(1) %683, i64 229696, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.26, ptr addrspace(1) %gep904.26, align 8, !dbg !311
  br label %for.inc693.26, !dbg !312

for.inc693.26:                                    ; preds = %if.then656.26, %if.then587.26, %for.inc693.25
  br i1 %cmp586.16, label %if.then587.27, label %for.inc693.27, !dbg !269

if.then587.27:                                    ; preds = %for.inc693.26
  %684 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %684), !dbg !270, !noalias !274
  %685 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %685), !dbg !279, !noalias !274
  %686 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %686), !dbg !281, !noalias !285
  %687 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %687), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.27, label %for.inc693.27, !dbg !292

if.then656.27:                                    ; preds = %if.then587.27
  %output_local.sroa.650.444.vec.extract = extractelement <4 x float> %334, i64 3, !dbg !293
  %output_local.sroa.650.440.vec.extract = extractelement <4 x float> %334, i64 2, !dbg !293
  %output_local.sroa.650.436.vec.extract = extractelement <4 x float> %334, i64 1, !dbg !293
  %output_local.sroa.650.432.vec.extract = extractelement <4 x float> %334, i64 0, !dbg !293
  %conv.i.i.27 = fpext half %345 to float, !dbg !294
  %mul619.27 = fmul contract float %output_local.sroa.650.444.vec.extract, %conv.i.i.27, !dbg !299
  %688 = fptrunc float %mul619.27 to half, !dbg !290
  %689 = bitcast half %688 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.27 = zext i16 %689 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.27 = shl nuw i64 %__1.sroa.6.0.insert.ext.27, 48, !dbg !302
  %mul616.27 = fmul contract float %output_local.sroa.650.440.vec.extract, %conv.i.i.27, !dbg !303
  %690 = fptrunc float %mul616.27 to half, !dbg !281
  %691 = bitcast half %690 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.27 = zext i16 %691 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.27 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.27, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.27 = or disjoint i64 %__1.sroa.6.0.insert.shift.27, %__1.sroa.5.0.insert.shift.27, !dbg !302
  %mul613.27 = fmul contract float %output_local.sroa.650.436.vec.extract, %conv.i.i.27, !dbg !305
  %692 = fptrunc float %mul613.27 to half, !dbg !279
  %693 = bitcast half %692 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.27 = zext i16 %693 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.27 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.27, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.27 = or disjoint i64 %__1.sroa.5.0.insert.insert.27, %__1.sroa.4.0.insert.shift.27, !dbg !302
  %mul610.27 = fmul contract float %output_local.sroa.650.432.vec.extract, %conv.i.i.27, !dbg !308
  %694 = fptrunc float %mul610.27 to half, !dbg !270
  %695 = bitcast half %694 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.27 = zext i16 %695 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.27 = or disjoint i64 %__1.sroa.4.0.insert.insert.27, %__1.sroa.0.0.insert.ext.27, !dbg !302
  %696 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.27 = getelementptr i8, ptr addrspace(1) %696, i64 229728, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.27, ptr addrspace(1) %gep904.27, align 8, !dbg !311
  br label %for.inc693.27, !dbg !312

for.inc693.27:                                    ; preds = %if.then656.27, %if.then587.27, %for.inc693.26
  br i1 %cmp586.16, label %if.then587.28, label %for.inc693.28, !dbg !269

if.then587.28:                                    ; preds = %for.inc693.27
  %697 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %697), !dbg !270, !noalias !274
  %698 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %698), !dbg !279, !noalias !274
  %699 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %699), !dbg !281, !noalias !285
  %700 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %700), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.28, label %for.inc693.28, !dbg !292

if.then656.28:                                    ; preds = %if.then587.28
  %output_local.sroa.674.460.vec.extract = extractelement <4 x float> %335, i64 3, !dbg !293
  %output_local.sroa.674.456.vec.extract = extractelement <4 x float> %335, i64 2, !dbg !293
  %output_local.sroa.674.452.vec.extract = extractelement <4 x float> %335, i64 1, !dbg !293
  %output_local.sroa.674.448.vec.extract = extractelement <4 x float> %335, i64 0, !dbg !293
  %conv.i.i.28 = fpext half %345 to float, !dbg !294
  %mul619.28 = fmul contract float %output_local.sroa.674.460.vec.extract, %conv.i.i.28, !dbg !299
  %701 = fptrunc float %mul619.28 to half, !dbg !290
  %702 = bitcast half %701 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.28 = zext i16 %702 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.28 = shl nuw i64 %__1.sroa.6.0.insert.ext.28, 48, !dbg !302
  %mul616.28 = fmul contract float %output_local.sroa.674.456.vec.extract, %conv.i.i.28, !dbg !303
  %703 = fptrunc float %mul616.28 to half, !dbg !281
  %704 = bitcast half %703 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.28 = zext i16 %704 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.28 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.28, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.28 = or disjoint i64 %__1.sroa.6.0.insert.shift.28, %__1.sroa.5.0.insert.shift.28, !dbg !302
  %mul613.28 = fmul contract float %output_local.sroa.674.452.vec.extract, %conv.i.i.28, !dbg !305
  %705 = fptrunc float %mul613.28 to half, !dbg !279
  %706 = bitcast half %705 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.28 = zext i16 %706 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.28 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.28, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.28 = or disjoint i64 %__1.sroa.5.0.insert.insert.28, %__1.sroa.4.0.insert.shift.28, !dbg !302
  %mul610.28 = fmul contract float %output_local.sroa.674.448.vec.extract, %conv.i.i.28, !dbg !308
  %707 = fptrunc float %mul610.28 to half, !dbg !270
  %708 = bitcast half %707 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.28 = zext i16 %708 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.28 = or disjoint i64 %__1.sroa.4.0.insert.insert.28, %__1.sroa.0.0.insert.ext.28, !dbg !302
  %709 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.28 = getelementptr i8, ptr addrspace(1) %709, i64 229760, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.28, ptr addrspace(1) %gep904.28, align 8, !dbg !311
  br label %for.inc693.28, !dbg !312

for.inc693.28:                                    ; preds = %if.then656.28, %if.then587.28, %for.inc693.27
  br i1 %cmp586.16, label %if.then587.29, label %for.inc693.29, !dbg !269

if.then587.29:                                    ; preds = %for.inc693.28
  %710 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %710), !dbg !270, !noalias !274
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !279, !noalias !274
  %712 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %712), !dbg !281, !noalias !285
  %713 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %713), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.29, label %for.inc693.29, !dbg !292

if.then656.29:                                    ; preds = %if.then587.29
  %output_local.sroa.698.476.vec.extract = extractelement <4 x float> %336, i64 3, !dbg !293
  %output_local.sroa.698.472.vec.extract = extractelement <4 x float> %336, i64 2, !dbg !293
  %output_local.sroa.698.468.vec.extract = extractelement <4 x float> %336, i64 1, !dbg !293
  %output_local.sroa.698.464.vec.extract = extractelement <4 x float> %336, i64 0, !dbg !293
  %conv.i.i.29 = fpext half %345 to float, !dbg !294
  %mul619.29 = fmul contract float %output_local.sroa.698.476.vec.extract, %conv.i.i.29, !dbg !299
  %714 = fptrunc float %mul619.29 to half, !dbg !290
  %715 = bitcast half %714 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.29 = zext i16 %715 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.29 = shl nuw i64 %__1.sroa.6.0.insert.ext.29, 48, !dbg !302
  %mul616.29 = fmul contract float %output_local.sroa.698.472.vec.extract, %conv.i.i.29, !dbg !303
  %716 = fptrunc float %mul616.29 to half, !dbg !281
  %717 = bitcast half %716 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.29 = zext i16 %717 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.29 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.29, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.29 = or disjoint i64 %__1.sroa.6.0.insert.shift.29, %__1.sroa.5.0.insert.shift.29, !dbg !302
  %mul613.29 = fmul contract float %output_local.sroa.698.468.vec.extract, %conv.i.i.29, !dbg !305
  %718 = fptrunc float %mul613.29 to half, !dbg !279
  %719 = bitcast half %718 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.29 = zext i16 %719 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.29 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.29, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.29 = or disjoint i64 %__1.sroa.5.0.insert.insert.29, %__1.sroa.4.0.insert.shift.29, !dbg !302
  %mul610.29 = fmul contract float %output_local.sroa.698.464.vec.extract, %conv.i.i.29, !dbg !308
  %720 = fptrunc float %mul610.29 to half, !dbg !270
  %721 = bitcast half %720 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.29 = zext i16 %721 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.29 = or disjoint i64 %__1.sroa.4.0.insert.insert.29, %__1.sroa.0.0.insert.ext.29, !dbg !302
  %722 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.29 = getelementptr i8, ptr addrspace(1) %722, i64 229792, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.29, ptr addrspace(1) %gep904.29, align 8, !dbg !311
  br label %for.inc693.29, !dbg !312

for.inc693.29:                                    ; preds = %if.then656.29, %if.then587.29, %for.inc693.28
  br i1 %cmp586.16, label %if.then587.30, label %for.inc693.30, !dbg !269

if.then587.30:                                    ; preds = %for.inc693.29
  %723 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %723), !dbg !270, !noalias !274
  %724 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %724), !dbg !279, !noalias !274
  %725 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %725), !dbg !281, !noalias !285
  %726 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %726), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.30, label %for.inc693.30, !dbg !292

if.then656.30:                                    ; preds = %if.then587.30
  %output_local.sroa.722.492.vec.extract = extractelement <4 x float> %337, i64 3, !dbg !293
  %output_local.sroa.722.488.vec.extract = extractelement <4 x float> %337, i64 2, !dbg !293
  %output_local.sroa.722.484.vec.extract = extractelement <4 x float> %337, i64 1, !dbg !293
  %output_local.sroa.722.480.vec.extract = extractelement <4 x float> %337, i64 0, !dbg !293
  %conv.i.i.30 = fpext half %345 to float, !dbg !294
  %mul619.30 = fmul contract float %output_local.sroa.722.492.vec.extract, %conv.i.i.30, !dbg !299
  %727 = fptrunc float %mul619.30 to half, !dbg !290
  %728 = bitcast half %727 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.30 = zext i16 %728 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.30 = shl nuw i64 %__1.sroa.6.0.insert.ext.30, 48, !dbg !302
  %mul616.30 = fmul contract float %output_local.sroa.722.488.vec.extract, %conv.i.i.30, !dbg !303
  %729 = fptrunc float %mul616.30 to half, !dbg !281
  %730 = bitcast half %729 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.30 = zext i16 %730 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.30 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.30, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.30 = or disjoint i64 %__1.sroa.6.0.insert.shift.30, %__1.sroa.5.0.insert.shift.30, !dbg !302
  %mul613.30 = fmul contract float %output_local.sroa.722.484.vec.extract, %conv.i.i.30, !dbg !305
  %731 = fptrunc float %mul613.30 to half, !dbg !279
  %732 = bitcast half %731 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.30 = zext i16 %732 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.30 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.30, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.30 = or disjoint i64 %__1.sroa.5.0.insert.insert.30, %__1.sroa.4.0.insert.shift.30, !dbg !302
  %mul610.30 = fmul contract float %output_local.sroa.722.480.vec.extract, %conv.i.i.30, !dbg !308
  %733 = fptrunc float %mul610.30 to half, !dbg !270
  %734 = bitcast half %733 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.30 = zext i16 %734 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.30 = or disjoint i64 %__1.sroa.4.0.insert.insert.30, %__1.sroa.0.0.insert.ext.30, !dbg !302
  %735 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.30 = getelementptr i8, ptr addrspace(1) %735, i64 229824, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.30, ptr addrspace(1) %gep904.30, align 8, !dbg !311
  br label %for.inc693.30, !dbg !312

for.inc693.30:                                    ; preds = %if.then656.30, %if.then587.30, %for.inc693.29
  br i1 %cmp586.16, label %if.then587.31, label %for.inc693.31, !dbg !269

if.then587.31:                                    ; preds = %for.inc693.30
  %736 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %736), !dbg !270, !noalias !274
  %737 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !279
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !279, !noalias !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %737), !dbg !279, !noalias !274
  %738 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %738), !dbg !281, !noalias !285
  %739 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !290
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !290, !noalias !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %739), !dbg !290, !noalias !285
  br i1 %or.cond.1, label %if.then656.31, label %for.inc693.31, !dbg !292

if.then656.31:                                    ; preds = %if.then587.31
  %output_local.sroa.746.508.vec.extract = extractelement <4 x float> %338, i64 3, !dbg !293
  %output_local.sroa.746.504.vec.extract = extractelement <4 x float> %338, i64 2, !dbg !293
  %output_local.sroa.746.500.vec.extract = extractelement <4 x float> %338, i64 1, !dbg !293
  %output_local.sroa.746.496.vec.extract = extractelement <4 x float> %338, i64 0, !dbg !293
  %conv.i.i.31 = fpext half %345 to float, !dbg !294
  %mul619.31 = fmul contract float %output_local.sroa.746.508.vec.extract, %conv.i.i.31, !dbg !299
  %740 = fptrunc float %mul619.31 to half, !dbg !290
  %741 = bitcast half %740 to i16, !dbg !300
  %__1.sroa.6.0.insert.ext.31 = zext i16 %741 to i64, !dbg !302
  %__1.sroa.6.0.insert.shift.31 = shl nuw i64 %__1.sroa.6.0.insert.ext.31, 48, !dbg !302
  %mul616.31 = fmul contract float %output_local.sroa.746.504.vec.extract, %conv.i.i.31, !dbg !303
  %742 = fptrunc float %mul616.31 to half, !dbg !281
  %743 = bitcast half %742 to i16, !dbg !304
  %__1.sroa.5.0.insert.ext.31 = zext i16 %743 to i64, !dbg !302
  %__1.sroa.5.0.insert.shift.31 = shl nuw nsw i64 %__1.sroa.5.0.insert.ext.31, 32, !dbg !302
  %__1.sroa.5.0.insert.insert.31 = or disjoint i64 %__1.sroa.6.0.insert.shift.31, %__1.sroa.5.0.insert.shift.31, !dbg !302
  %mul613.31 = fmul contract float %output_local.sroa.746.500.vec.extract, %conv.i.i.31, !dbg !305
  %744 = fptrunc float %mul613.31 to half, !dbg !279
  %745 = bitcast half %744 to i16, !dbg !306
  %__1.sroa.4.0.insert.ext.31 = zext i16 %745 to i64, !dbg !302
  %__1.sroa.4.0.insert.shift.31 = shl nuw nsw i64 %__1.sroa.4.0.insert.ext.31, 16, !dbg !302
  %__1.sroa.4.0.insert.insert.31 = or disjoint i64 %__1.sroa.5.0.insert.insert.31, %__1.sroa.4.0.insert.shift.31, !dbg !302
  %mul610.31 = fmul contract float %output_local.sroa.746.496.vec.extract, %conv.i.i.31, !dbg !308
  %746 = fptrunc float %mul610.31 to half, !dbg !270
  %747 = bitcast half %746 to i16, !dbg !309
  %__1.sroa.0.0.insert.ext.31 = zext i16 %747 to i64, !dbg !302
  %__1.sroa.0.0.insert.insert.31 = or disjoint i64 %__1.sroa.4.0.insert.insert.31, %__1.sroa.0.0.insert.ext.31, !dbg !302
  %748 = getelementptr %struct.__half, ptr addrspace(1) %invariant.gep903, i64 %add674, !dbg !310
  %gep904.31 = getelementptr i8, ptr addrspace(1) %748, i64 229856, !dbg !310
  store i64 %__1.sroa.0.0.insert.insert.31, ptr addrspace(1) %gep904.31, align 8, !dbg !311
  br label %for.inc693.31, !dbg !312

for.inc693.31:                                    ; preds = %if.then656.31, %if.then587.31, %for.inc693.30
  ret void, !dbg !315
}

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.x() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.y() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.z() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.thread.id.x() #5

; Function Attrs: convergent nounwind willreturn
declare void @llvm.mxc.barrier() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.implicitarg.ptr() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.dispatch.ptr() #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i1 @llvm.mxc.is.private(ptr nocapture) #5

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sleep(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nounwind speculatable willreturn memory(inaccessiblemem: read)
declare i32 @llvm.mxc.gethwreg(i32 immarg) #9

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sethwreg(i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noalias nocapture writeonly, ptr addrspace(4) noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { mustprogress noreturn nounwind "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="256" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { convergent nounwind willreturn memory(none) }
attributes #5 = { nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent nounwind willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/moe/restart-rep/v004_step2_router_weight_register_reuse_sc-16g/codegen/v004_step2_router_weight_register_reuse_sc-16g_case2_generated_device.cpp", directory: "/root/tilelang-metax")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 1}
!5 = distinct !DISubprogram(name: "__cxa_pure_virtual", scope: !6, file: !6, line: 38, type: !7, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!6 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h", directory: "")
!7 = !DISubroutineType(types: !8)
!8 = !{}
!9 = !DILocation(line: 39, column: 3, scope: !5)
!10 = !DILocation(line: 40, column: 1, scope: !5)
!11 = distinct !DISubprogram(name: "__cxa_deleted_virtual", scope: !6, file: !6, line: 43, type: !7, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!12 = !DILocation(line: 44, column: 3, scope: !11)
!13 = !DILocation(line: 45, column: 1, scope: !11)
!14 = distinct !DISubprogram(name: "__mcImplicitDeviceSynchronize", scope: !15, file: !15, line: 92, type: !7, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!15 = !DIFile(filename: "/opt/maca-3.7.1/include/mckl/mc_device_runtime.h", directory: "")
!16 = !DILocation(line: 94, column: 5, scope: !14)
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!22, !24, i64 16}
!22 = !{!"_ZTS21_DynamicParallMqlWrap", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !24, i64 16, !24, i64 24, !25, i64 32}
!23 = !{!"int", !19, i64 0}
!24 = !{!"any pointer", !19, i64 0}
!25 = !{!"_ZTS28mxc_kernel_dispatch_packet_s", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !26, i64 10, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !18, i64 32, !24, i64 40, !18, i64 48, !27, i64 56}
!26 = !{!"short", !19, i64 0}
!27 = !{!"_ZTS12mxc_signal_s", !18, i64 0}
!28 = !{i32 1, i32 -2147483648}
!29 = !{i32 0, i32 2147483647}
!30 = !{!23, !23, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!22, !23, i64 4}
!34 = !{!22, !24, i64 24}
!35 = !{!22, !23, i64 0}
!36 = !{!37, !24, i64 24}
!37 = !{!"_ZTS28_DynamicParallSchedulerParam", !18, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !23, i64 104, !23, i64 108, !23, i64 112, !23, i64 116, !23, i64 120, !23, i64 124}
!38 = !{!37, !18, i64 80}
!39 = !DILocation(line: 95, column: 1, scope: !14)
!40 = distinct !DISubprogram(name: "kernel_kernel", scope: !41, file: !41, line: 11, type: !7, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!41 = !DIFile(filename: "race_tests/moe/restart-rep/v004_step2_router_weight_register_reuse_sc-16g/codegen/v004_step2_router_weight_register_reuse_sc-16g_case2_generated_device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 17, column: 46, scope: !40)
!46 = !DILocation(line: 17, column: 23, scope: !40)
!47 = !DILocation(line: 18, column: 24, scope: !40)
!48 = !DILocation(line: 19, column: 38, scope: !40)
!49 = !DILocation(line: 19, column: 47, scope: !40)
!50 = !DILocation(line: 19, column: 79, scope: !40)
!51 = !DILocation(line: 20, column: 54, scope: !40)
!52 = !DILocation(line: 20, column: 93, scope: !40)
!53 = !DILocation(line: 19, column: 45, scope: !40)
!54 = !DILocation(line: 19, column: 77, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 33, column: 374, scope: !40)
!57 = !DILocation(line: 33, column: 95, scope: !40)
!58 = !DILocation(line: 33, column: 180, scope: !40)
!59 = !DILocation(line: 33, column: 265, scope: !40)
!60 = !DILocation(line: 33, column: 40, scope: !40)
!61 = !DILocation(line: 33, column: 343, scope: !40)
!62 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!63 = !{i32 -1, i32 5, i32 -1, i32 -1}
!64 = !DILocation(line: 33, column: 495, scope: !40)
!65 = !DILocation(line: 33, column: 59, scope: !40)
!66 = !DILocation(line: 37, column: 381, scope: !40)
!67 = !DILocation(line: 37, column: 40, scope: !40)
!68 = !DILocation(line: 37, column: 352, scope: !40)
!69 = !{i32 -1, i32 6, i32 -1, i32 -1}
!70 = !DILocation(line: 39, column: 3, scope: !40)
!71 = !DILocation(line: 0, scope: !40)
!72 = !DILocation(line: 44, column: 117, scope: !40)
!73 = !DILocation(line: 96, column: 115, scope: !40)
!74 = !DILocation(line: 45, column: 35, scope: !40)
!75 = !DILocation(line: 45, column: 17, scope: !40)
!76 = !DILocation(line: 46, column: 7, scope: !40)
!77 = !DILocation(line: 49, column: 43, scope: !40)
!78 = !DILocation(line: 45, column: 301, scope: !40)
!79 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "__barrier", scope: !81, file: !81, line: 57, type: !7, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!81 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!82 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "__syncthreads", scope: !81, file: !81, line: 73, type: !7, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!84 = distinct !DILocation(line: 51, column: 5, scope: !40)
!85 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !82)
!86 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !82)
!87 = !DILocation(line: 54, column: 50, scope: !40)
!88 = !DILocation(line: 60, column: 64, scope: !40)
!89 = !DILocation(line: 68, column: 52, scope: !40)
!90 = !DILocation(line: 74, column: 62, scope: !40)
!91 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !92)
!92 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !93)
!93 = distinct !DILocation(line: 82, column: 5, scope: !40)
!94 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !92)
!95 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !92)
!96 = !DILocation(line: 85, column: 376, scope: !40)
!97 = !DILocation(line: 85, column: 345, scope: !40)
!98 = !DILocation(line: 85, column: 511, scope: !40)
!99 = !DILocation(line: 89, column: 383, scope: !40)
!100 = !DILocation(line: 89, column: 354, scope: !40)
!101 = !DILocation(line: 39, column: 28, scope: !40)
!102 = !DILocation(line: 39, column: 21, scope: !40)
!103 = distinct !{!103, !70, !104, !32}
!104 = !DILocation(line: 91, column: 3, scope: !40)
!105 = !DILocation(line: 97, column: 35, scope: !40)
!106 = !DILocation(line: 97, column: 17, scope: !40)
!107 = !DILocation(line: 98, column: 5, scope: !40)
!108 = !DILocation(line: 101, column: 41, scope: !40)
!109 = !DILocation(line: 97, column: 319, scope: !40)
!110 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !111)
!111 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !112)
!112 = distinct !DILocation(line: 103, column: 3, scope: !40)
!113 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !111)
!114 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !111)
!115 = !DILocation(line: 106, column: 50, scope: !40)
!116 = !DILocation(line: 112, column: 65, scope: !40)
!117 = !DILocation(line: 120, column: 50, scope: !40)
!118 = !DILocation(line: 126, column: 63, scope: !40)
!119 = !DILocation(line: 708, column: 10, scope: !120, inlinedAt: !122)
!120 = distinct !DISubprogram(name: "min", scope: !121, file: !121, line: 707, type: !7, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!121 = !DIFile(filename: "/opt/maca-3.7.1/include/common/__clang_macac_math.h", directory: "")
!122 = distinct !DILocation(line: 20, column: 28, scope: !40)
!123 = !DILocation(line: 135, column: 3, scope: !40)
!124 = !DILocation(line: 176, column: 95, scope: !40)
!125 = !DILocation(line: 176, column: 9, scope: !40)
!126 = !DILocation(line: 141, column: 19, scope: !40)
!127 = !DILocation(line: 158, column: 27, scope: !40)
!128 = !DILocation(line: 285, column: 49, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "exp2f", scope: !121, file: !121, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!130 = distinct !DILocation(line: 162, column: 19, scope: !40)
!131 = !DILocation(line: 166, column: 26, scope: !40)
!132 = !DILocation(line: 170, column: 24, scope: !40)
!133 = !DILocation(line: 174, column: 20, scope: !40)
!134 = !DILocation(line: 157, column: 27, scope: !40)
!135 = !DILocation(line: 285, column: 49, scope: !129, inlinedAt: !136)
!136 = distinct !DILocation(line: 161, column: 19, scope: !40)
!137 = !DILocation(line: 165, column: 26, scope: !40)
!138 = !DILocation(line: 169, column: 24, scope: !40)
!139 = !DILocation(line: 173, column: 20, scope: !40)
!140 = !DILocation(line: 156, column: 27, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !129, inlinedAt: !142)
!142 = distinct !DILocation(line: 160, column: 19, scope: !40)
!143 = !DILocation(line: 164, column: 26, scope: !40)
!144 = !DILocation(line: 168, column: 24, scope: !40)
!145 = !DILocation(line: 172, column: 20, scope: !40)
!146 = !DILocation(line: 155, column: 27, scope: !40)
!147 = !DILocation(line: 285, column: 49, scope: !129, inlinedAt: !148)
!148 = distinct !DILocation(line: 159, column: 19, scope: !40)
!149 = !DILocation(line: 163, column: 26, scope: !40)
!150 = !DILocation(line: 167, column: 24, scope: !40)
!151 = !DILocation(line: 171, column: 20, scope: !40)
!152 = !DILocation(line: 181, column: 27, scope: !40)
!153 = !DILocation(line: 183, column: 28, scope: !40)
!154 = !DILocation(line: 184, column: 28, scope: !40)
!155 = !DILocation(line: 185, column: 28, scope: !40)
!156 = !DILocation(line: 186, column: 28, scope: !40)
!157 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !160)
!158 = distinct !DISubprogram(name: "__float2half_rn", scope: !159, file: !159, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = !DIFile(filename: "/opt/maca-3.7.1/include/common/maca_fp16.hpp", directory: "")
!160 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !159, file: !159, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__float22half2_rn", scope: !159, file: !159, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 187, column: 33, scope: !40)
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZL17__floats2half2_rnff: %agg.result"}
!167 = distinct !{!167, !"_ZL17__floats2half2_rnff"}
!168 = distinct !{!168, !169, !"_ZL17__float22half2_rn6float2: %agg.result"}
!169 = distinct !{!169, !"_ZL17__float22half2_rn6float2"}
!170 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !171)
!171 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !162)
!172 = !DILocation(line: 596, column: 67, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "__half2", scope: !159, file: !159, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !162)
!175 = !DILocation(line: 596, column: 73, scope: !173, inlinedAt: !174)
!176 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !177)
!177 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !178)
!178 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !179)
!179 = distinct !DILocation(line: 188, column: 33, scope: !40)
!180 = !{!181, !183}
!181 = distinct !{!181, !182, !"_ZL17__floats2half2_rnff: %agg.result"}
!182 = distinct !{!182, !"_ZL17__floats2half2_rnff"}
!183 = distinct !{!183, !184, !"_ZL17__float22half2_rn6float2: %agg.result"}
!184 = distinct !{!184, !"_ZL17__float22half2_rn6float2"}
!185 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !186)
!186 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !178)
!187 = !DILocation(line: 596, column: 67, scope: !173, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !178)
!189 = !DILocation(line: 596, column: 73, scope: !173, inlinedAt: !188)
!190 = !DILocation(line: 189, column: 31, scope: !40)
!191 = !DILocation(line: 189, column: 445, scope: !40)
!192 = !DILocation(line: 190, column: 9, scope: !40)
!193 = !DILocation(line: 189, column: 314, scope: !40)
!194 = !DILocation(line: 176, column: 66, scope: !40)
!195 = !DILocation(line: 194, column: 1, scope: !40)
!196 = distinct !DISubprogram(name: "kernel_kernel_1", scope: !41, file: !41, line: 196, type: !7, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !198)
!198 = distinct !DILocation(line: 203, column: 46, scope: !196)
!199 = !DILocation(line: 203, column: 23, scope: !196)
!200 = !DILocation(line: 204, column: 24, scope: !196)
!201 = !DILocation(line: 205, column: 38, scope: !196)
!202 = !DILocation(line: 205, column: 47, scope: !196)
!203 = !DILocation(line: 205, column: 79, scope: !196)
!204 = !DILocation(line: 206, column: 54, scope: !196)
!205 = !DILocation(line: 206, column: 93, scope: !196)
!206 = !DILocation(line: 205, column: 45, scope: !196)
!207 = !DILocation(line: 205, column: 77, scope: !196)
!208 = !DILocation(line: 214, column: 375, scope: !196)
!209 = !DILocation(line: 214, column: 96, scope: !196)
!210 = !DILocation(line: 214, column: 181, scope: !196)
!211 = !DILocation(line: 214, column: 266, scope: !196)
!212 = !DILocation(line: 214, column: 41, scope: !196)
!213 = !DILocation(line: 214, column: 344, scope: !196)
!214 = !DILocation(line: 214, column: 60, scope: !196)
!215 = !DILocation(line: 214, column: 495, scope: !196)
!216 = !DILocation(line: 216, column: 3, scope: !196)
!217 = !DILocation(line: 0, scope: !196)
!218 = !DILocation(line: 221, column: 117, scope: !196)
!219 = !DILocation(line: 255, column: 115, scope: !196)
!220 = !DILocation(line: 222, column: 39, scope: !196)
!221 = !DILocation(line: 222, column: 17, scope: !196)
!222 = !DILocation(line: 223, column: 7, scope: !196)
!223 = !DILocation(line: 226, column: 47, scope: !196)
!224 = !DILocation(line: 222, column: 303, scope: !196)
!225 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !226)
!226 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !227)
!227 = distinct !DILocation(line: 228, column: 5, scope: !196)
!228 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !226)
!229 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !226)
!230 = !DILocation(line: 231, column: 48, scope: !196)
!231 = !DILocation(line: 237, column: 60, scope: !196)
!232 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !233)
!233 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !234)
!234 = distinct !DILocation(line: 245, column: 5, scope: !196)
!235 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !233)
!236 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !233)
!237 = !DILocation(line: 248, column: 377, scope: !196)
!238 = !DILocation(line: 248, column: 346, scope: !196)
!239 = !DILocation(line: 248, column: 511, scope: !196)
!240 = !DILocation(line: 216, column: 27, scope: !196)
!241 = !DILocation(line: 216, column: 21, scope: !196)
!242 = distinct !{!242, !216, !243, !32}
!243 = !DILocation(line: 250, column: 3, scope: !196)
!244 = !DILocation(line: 256, column: 39, scope: !196)
!245 = !DILocation(line: 256, column: 17, scope: !196)
!246 = !DILocation(line: 257, column: 5, scope: !196)
!247 = !DILocation(line: 260, column: 45, scope: !196)
!248 = !DILocation(line: 256, column: 321, scope: !196)
!249 = !DILocation(line: 60, column: 3, scope: !80, inlinedAt: !250)
!250 = distinct !DILocation(line: 74, column: 3, scope: !83, inlinedAt: !251)
!251 = distinct !DILocation(line: 262, column: 3, scope: !196)
!252 = !DILocation(line: 61, column: 3, scope: !80, inlinedAt: !250)
!253 = !DILocation(line: 62, column: 3, scope: !80, inlinedAt: !250)
!254 = !DILocation(line: 265, column: 48, scope: !196)
!255 = !DILocation(line: 271, column: 60, scope: !196)
!256 = !DILocation(line: 708, column: 10, scope: !120, inlinedAt: !257)
!257 = distinct !DILocation(line: 206, column: 28, scope: !196)
!258 = !DILocation(line: 279, column: 3, scope: !196)
!259 = !DILocation(line: 281, column: 63, scope: !196)
!260 = !DILocation(line: 281, column: 92, scope: !196)
!261 = !DILocation(line: 281, column: 9, scope: !196)
!262 = !DILocation(line: 283, column: 114, scope: !196)
!263 = !DILocation(line: 284, column: 21, scope: !196)
!264 = !DILocation(line: 284, column: 19, scope: !196)
!265 = !{!26, !26, i64 0}
!266 = !DILocation(line: 285, column: 7, scope: !196)
!267 = !DILocation(line: 292, column: 3, scope: !196)
!268 = !DILocation(line: 293, column: 94, scope: !196)
!269 = !DILocation(line: 293, column: 9, scope: !196)
!270 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !272)
!272 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !273)
!273 = distinct !DILocation(line: 302, column: 29, scope: !196)
!274 = !{!275, !277}
!275 = distinct !{!275, !276, !"_ZL17__floats2half2_rnff: %agg.result"}
!276 = distinct !{!276, !"_ZL17__floats2half2_rnff"}
!277 = distinct !{!277, !278, !"_ZL17__float22half2_rn6float2: %agg.result"}
!278 = distinct !{!278, !"_ZL17__float22half2_rn6float2"}
!279 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !280)
!280 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !272)
!281 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !282)
!282 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !283)
!283 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !284)
!284 = distinct !DILocation(line: 303, column: 29, scope: !196)
!285 = !{!286, !288}
!286 = distinct !{!286, !287, !"_ZL17__floats2half2_rnff: %agg.result"}
!287 = distinct !{!287, !"_ZL17__floats2half2_rnff"}
!288 = distinct !{!288, !289, !"_ZL17__float22half2_rn6float2: %agg.result"}
!289 = distinct !{!289, !"_ZL17__float22half2_rn6float2"}
!290 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !291)
!291 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !283)
!292 = !DILocation(line: 305, column: 11, scope: !196)
!293 = !DILocation(line: 296, column: 21, scope: !196)
!294 = !DILocation(line: 1082, column: 16, scope: !295, inlinedAt: !296)
!295 = distinct !DISubprogram(name: "__half2float", scope: !159, file: !159, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!296 = distinct !DILocation(line: 136, column: 55, scope: !297, inlinedAt: !298)
!297 = distinct !DISubprogram(name: "operator float", scope: !159, file: !159, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!298 = distinct !DILocation(line: 297, column: 43, scope: !196)
!299 = !DILocation(line: 301, column: 22, scope: !196)
!300 = !DILocation(line: 596, column: 73, scope: !173, inlinedAt: !301)
!301 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !283)
!302 = !DILocation(line: 304, column: 40, scope: !196)
!303 = !DILocation(line: 300, column: 22, scope: !196)
!304 = !DILocation(line: 596, column: 67, scope: !173, inlinedAt: !301)
!305 = !DILocation(line: 299, column: 22, scope: !196)
!306 = !DILocation(line: 596, column: 73, scope: !173, inlinedAt: !307)
!307 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !272)
!308 = !DILocation(line: 298, column: 22, scope: !196)
!309 = !DILocation(line: 596, column: 67, scope: !173, inlinedAt: !307)
!310 = !DILocation(line: 307, column: 28, scope: !196)
!311 = !DILocation(line: 307, column: 443, scope: !196)
!312 = !DILocation(line: 308, column: 9, scope: !196)
!313 = !DILocation(line: 307, column: 312, scope: !196)
!314 = !DILocation(line: 293, column: 65, scope: !196)
!315 = !DILocation(line: 312, column: 1, scope: !196)
