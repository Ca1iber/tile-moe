# v132：consumer-native up_logits K-plane +256B（放弃）

- Parent：external-OJ-AC v110。
- 机制：每个 native K64 plane 从 8192 FP16 增至 8320 FP16（16384B→16640B），逻辑元素/流量不变。
- Codegen：三 case 均物化 16640B stride；资源档不变。
- 正确性/OJ source：全部 PASS。
- AB/BA 中位：Case1 `+0.084%`、Case2 `-0.036%`、Case3 `+0.087%`，均为噪声。
- 结论：v085 的 row-major pitch 冲突在 v110 native layout 中已不存在；不要继续 native K-plane padding sweep。
- 完整证据：`restart-rep/v132_native_up_logits_kpitch_pad128_sc-16g/`。
