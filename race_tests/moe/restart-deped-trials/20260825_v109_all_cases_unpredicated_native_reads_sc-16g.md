# v109 全 Case 无谓词 native 读取反例

- 基线：v108 locally-qualified candidate。
- 源码 SHA256：`4ec92c574a29c1ad6e91a47b6fdcbd6ff0cc4c250a96ed2cf8328fddc6f5ede0`。
- 改动：三个官方 Case 都删除 Step2 native workspace 读取的 valid-row 谓词。
- 正确性：三 Case 均 PASS。
- 短测中位变化：Case1 `-3.575%`，Case2 `+0.486%`，Case3 `+0.418%`。
- 资源：Case1 Step2 204→202 MT；Cases2/3 220/52→218/42，但资源下降没有转化为速度提升。

结论：谓词成本高度依赖形状。Case1 的 Step2 K 循环长，删除谓词收益显著；Cases2/3 的额外无效行流量超过控制收益。放弃全 Case 启用，v110 仅编译期选择 Case1，Cases2/3 byte-identical 回到 v108。
