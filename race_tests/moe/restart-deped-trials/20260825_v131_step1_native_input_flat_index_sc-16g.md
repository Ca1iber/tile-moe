# v131：Step1 native 输入显式一维索引（放弃）

- Parent：external-OJ-AC v110。
- 假设：显式扁平化五维 consumer-native workspace 可以减少 Step1 地址计算和整数临时量。
- 结果：三 case generated device C++ SHA-256 均与 v110 完全一致，Step1 仍为 226 MT / 42 ST / 2 waves/PEU。
- 正确性：三官方 shape PASS；OJ source validator PASS。
- 结论：编译器早已把原多维索引规约成同一线性地址，本方向没有生成机器码层机制；按 codegen falsifier 停止，不做正式 AB/BA，不创建 submission。
- 避免重复：不要再尝试只改变 native workspace 的 shape/view、显式 stride 或等价线性表达式；除非同时改变真实物理布局或访存请求顺序。
- 完整证据：`restart-rep/v131_step1_native_input_flat_index_sc-16g/`。

