# v086 Step1 input tile-major prepack 实验

- Parent：v085，SHA-256 `6d4aa3a6f428d023adf6b681ea3a4429e5fd563d84f4fdd12fb85a8aab5be3d5`。
- Candidate：SHA-256 `43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- 唯一机制：增加同步输入 prepack kernel，按 Step1 的 `128x64` A tile 连续布局；保留 v085 的 GEMM、producer 顺序、tail pruning、up_logits pitch 与 Step2。
- 正确性：三 Case 完整 padded output PASS。
- 性能：Case1/2/3 paired median 分别 `-4.016%/-2.052%/-1.405%`。
- Profile：Case3 prepack约 `0.243ms`，Step1中位 `-5.825%`，Step2无实质变化。
- 决策：通过本地 1.2% 门槛，归档 v086；外部 OJ 未执行，SOTA 状态保持 inconclusive。
