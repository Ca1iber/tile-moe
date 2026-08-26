# v143 假设：Case3 长 expert 使用等面积 Step2 tile，并跳过 Step1 padding 行激活

v110 在 Case3 的 64 个 expert 上统一使用 Step2 `M128 x N256` CTA。官方 Case3 的 expert 行数固定分成 32 个 100-row expert 和 32 个 184-row expert；后者需要两个 M128 row tile，导致相同 Down 权重被两个 CTA 重复读取。

假设：仅对 Case3 的 184-row expert 改用等面积 `M256 x N128` 逻辑 tile，在一个 CTA 内维护上下两个 `M128 x N128` 累加器并复用每个 Down `N128 x K64` tile；100-row expert 保留 v110 路径。同时，Step1 的 SiLU 只计算真实行，避免 padding 行激活。两项组合应在不改变有效行计算顺序的前提下缩短 Case3 Step2 和少量 Step1 时间。

成功判据：三种官方 shape 完整正确且 OJ 静态检查通过；同进程 AB/BA 5 轮、每轮 50 次下，目标 Case3 每轮均相对 v110 提升至少 1.2%，其他 Case 不出现有意义回退；mcTracer 将主要收益定位到 Step2。
