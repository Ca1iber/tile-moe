# v106/v107 consumer-native `up_logits` 前置试验

基线为 external-OJ-AC v102。

- v106（SHA256 `238cbec81a02940bddb0984bc0ea8275c67e7c776801a0de17a10966478e5fee`）仅对 Case3 启用 consumer-native 中间布局，并保持 Step2 half-interleaved A/Down feed。短测中位提升 `0.816%`，未达到 1.2% 单独候选门槛；三 kernel trace 显示 Step2 本体提升约 `2.145%`，证明方向有效，因此继续扩展而非提交。
- v107（SHA256 `9777fef053ee2201007542f6656aba90c72544e6a2e0f64e2b6342219c8fdedc`）把整块 native A 提前到 split Down copies 之前。Case3 中位仅提升 `0.778%`，略差于 v106，说明 half-interleaving 对隐藏延迟仍有价值，放弃 full-A-first 变体。
- v108 保留 v106 的调度并扩展至三个官方 Case，最终在 Case1 越过 1.2% 门槛。

结论：consumer-native 布局是有效方向，但不能为了减少静态结构而破坏 A 与 Down copy 的既有重叠；后续应保留 half-interleaved feed。
