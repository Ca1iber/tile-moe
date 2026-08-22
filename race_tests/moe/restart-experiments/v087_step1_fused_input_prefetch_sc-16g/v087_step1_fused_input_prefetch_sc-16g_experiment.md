# v087 Step1 fused full-tile input prefetch 实验

- Parent：v086，SHA-256 `43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- Candidate：SHA-256 `f60fb343837c5c69bb551f69191fc551bff57374a1d11877b1d9c74c730a4662`。
- 唯一机制：在 v086 tile-major A 布局上，将 Step1 每个 tile 的两个 64-row tail-pruned A 载入合成一个 128-row 载入；其余计算、grid、barrier、prepack、Step2 均不变。
- 正确性：三 Case 完整 padded output PASS；OJ source 与三份 generated-device source PASS。
- 性能：Case1/2/3 paired median 分别 `-2.554%/-1.587%/-1.760%`。
- Profile：Case3 Step1 paired median `-3.490%`，Step2 `-0.164%`；Step1 ISA 约缩短 6.5%，ST `54→42`。
- 决策：通过本地 1.2% 门槛，归档 v087；外部 OJ 未执行，SOTA 状态保持 inconclusive。
