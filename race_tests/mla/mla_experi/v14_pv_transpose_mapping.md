# v14 PV transpose mapping

## 目的

尝试把 PV 从 `P[H,N] @ V[N,D] -> O[H,D]` 改成 `V^T[D,N] @ P^T[N,H] -> O^T[D,H]`，验证 QK 的 C fragment 是否能直接作为 PV 的 B-transposed operand。

## 测试 case

- case17 batch=8 kv_ctx=2048 num_split=32

## 结果

- status: FAIL
- error: `InternalError: Layout infer conflict between acc_s and acc_s_cast in T.Parallel loop:     loop Fragment([16, 32] -> [8], replicate: 4, thread: 256, forward_thread: _rep * 64 + _j // 8 * 16 + _i, forward_index: [_j % 8])     fragment Fragment([16, 32] -> [4], replicate: 1, thread: 128, forward_thread: _j // 4 * 16 + _i, forward_index: [_j % 4]) `
