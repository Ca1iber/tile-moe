# v111 full-block 无谓词 native 读取反例

- 基线：v110 locally-qualified candidate。
- 源码 SHA256：`639652feb8a7e294f8b46e0ebd9233bd7b580eb3ab3a8389a4f4615fb75bba88`。
- 假设：Cases2/3 对 `actual_rows == 128` 的完整块走统一无谓词读取，tail 块保留 row predicate，可避免 v109 的无效 tail 流量。
- 正确性：Case2 PASS；Case1 生成代码 SHA 与 v110 完全一致。
- Case2 短测：三轮变化 `+3.631% / +3.507% / +3.562%`，中位稳定回退 `3.562%`。
- 资源：Case2 Step2 从 v110 的 220 MT / 52 ST 变为 220/54；生成 C++ 从 28.4 KB 增至 29.5 KB。

结论：uniform full/tail 分支和重复 load path 的代码成本显著超过省下的 lane predicate；不继续 Case3，保持 v110。后续若要优化 Cases2/3，不能在热 K 循环内复制完整 load path。
