# v14 direct acc_s -> acc_s_cast experiment

## 目的

验证是否可以去掉 `S_shared` 中转，把 `T.copy(acc_s, S_shared); T.copy(S_shared, acc_s_cast)` 改成 `T.copy(acc_s, acc_s_cast)`。

## 结果

| case | batch | kv_ctx | num_split | status | latency ms |
|---:|---:|---:|---:|---|---:|
| 17 | 8 | 2048 | 32 | FAIL: InternalError: Layout infer conflict between acc_s and acc_s_cast in T.Parallel loop:
    loop Fragment([16, 32] -> [8], replicate: 2, thread: 128, forward_thread: _rep * 64 + _j / |  |

结论：direct fragment copy 当前不可用或 correctness 不通过，错误：`InternalError: Layout infer conflict between acc_s and acc_s_cast in T.Parallel loop:
    loop Fragment([16, 32] -> [8], replicate: 2, thread: 128, forward_thread: _rep * 64 + _j // 8 * 16 + _i, forward_index: [_j % 8])
    fragment Fragment([16, 32] -> [4], replicate: 1, thread: 128, forward_thread: _j // 4 * 16 + _i, forward_index: [_j % 4])
`。
