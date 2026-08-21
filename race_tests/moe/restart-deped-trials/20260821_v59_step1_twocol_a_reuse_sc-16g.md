# v59 Step1 双 column-warp A 复用（sc-16g）

尝试沿N合并两个BN128 CTA为一个BN256/512-thread/8-wave CTA：总waves、权重与MMA理论不变，A读取减半，CTA数减半。

correctness与合规PASS，但Case1端到端回退32.096%；mcTracer Step1 `1.738→2.643 ms`，回退52.032%。候选运行时为64KiB shared、238 registers/thread、无private；Step2与launch gap不是主因。

结论：A复用成立不代表加速，8-wave双列CTA协调与64KiB资源成本占主导。不要继续派生512-thread双column-warp版本。完整证据：`restart-rep/v074_step1_case1_twocol_sc-16g/`。
