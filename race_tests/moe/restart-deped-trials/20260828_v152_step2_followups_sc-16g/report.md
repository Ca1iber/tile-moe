# v152 Step2 后续控制实验（sc-16g，已放弃）

## 身份与边界

- 起点分支/提交：`dorm` / `abe756283f8a`
- 父版本：`v152_dynamic_step2_m192n128_sc-16g`
- 父源码 SHA-256：`ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- 目标机器：`sc-16g`
- 约束：仅 TileLang primitive；无异步拷贝、无外部源码注入、无 MXMACA builtin、未关闭 race checker。
- 判定门槛：正式配对基准相对父版本至少提升 1.2%；筛选阶段明显回退或编译失败时直接停止。

所有性能数据均来自项目原生 `run_permuted_fullcheck.py`，协议为 Case3、AB/BA、`rounds=1`、`warmup=2`、`repeat=10`。这是快速筛选证据，不是正式版本 verdict。

## 共同观测与假设

v152 将长 expert 的两个物理 M128 workspace block 合并为一个动态 M192xN128 Step2 CTA，Case3 Step2 从 v151 的 2.617344 ms 降至 2.403584 ms，端到端正式配对中位数提升 2.8678%。后续实验检验三个问题：

1. 在保持总 dispatched wave 数近似不变时，把两个 N128 CTA 合并成一个 N256/8-wave CTA能否减少调度及重复 A 加载；
2. M192 是否可用 6 个 row wave 精确覆盖三组 64 行，降低无效行/warp；
3. 在 M192xN128/4-wave 不变时，手工交错 A 与 Down 的同步加载能否隐藏 HBM 延迟。

对应 falsifier 分别为：端到端没有达到 1.2%、TileLang 无法合法推导布局、或手工加载生成导致显著回退。

## A. M192xN256 / 8-wave CTA

- 源码：`sources/trial_v152_step2_m192n256_8wave.py`
- SHA-256：`4a4d193d59612f8c6756d43e113b4bbdf95922324c74838a3939c411039d609b`
- 机制：长 Step2 使用 512 threads、8 waves、N256；grid 从 56x32 变为 28x32，使 dispatched wave 总数近似不变，并期望一次 A tile 服务两倍 N。
- OJ 源码校验：PASS。
- 全有效行正确性：PASS，`rtol=1e-2, atol=1e-2`。
- Case3：父 7.030963 ms，候选 7.758464 ms，回退 **10.3471%**。
- codegen：长 kernel `kernel_kernel_6` 为 192 MT registers、32 ST registers、静态最大 2 waves/PEU；无 async-copy、无 barrier-wait。资源并未恶化到足以单独解释结果。
- 结论：更大的 CTA/shared 同步域、A 复制/消费拓扑和更长的单 CTA 生命周期抵消了 CTA 数减少；N256 合并不是 v152 的可行延伸。

## B. M192xN128 / 6-wave CTA

- 源码：`sources/trial_v152_step2_m192n128_6wave.py`
- SHA-256：`9a0f654a5104fef211b17bd4e064df860539b4fcf20ab3638988014a7b1dea75`
- 机制：384 threads、6 row waves，以 32-row warp tile 精确覆盖 M192。
- OJ 源码校验：PASS。
- 编译/正确性：FAILED before execution。
- 确切失败：`layout_inference.cc:1182`，`no available layout found`；完整堆栈见 `results/trial_v152_step2_m192n128_6wave_compile.log`。
- 结论：当前自定义 emitter 与 TileLang layout inference 无法表达 6-wave fragment/store 映射；没有性能结论，不再继续扭曲布局规避编译器。

## C. M192xN128 手工交错 A/Down 加载

- 源码：`sources/trial_v152_step2_m192_interleaved_loads.py`
- SHA-256：`7a73220c009b42707d5e2ab2ed8293088fc50e6a707acf7f4984d4bced675f9d`
- 机制：保持 v152 的 256 threads、4 waves、M192xN128，改为 stage0 加载前两 row-wave 的 A 及 Down 前 64 行，stage1 加载后两 row-wave 的 A 及 Down 后 64 行，再同步/MMA。
- OJ 源码校验：PASS。
- 全有效行正确性：PASS，`rtol=1e-2, atol=1e-2`。
- Case3：父 7.036109 ms，候选 10.444775 ms，回退 **48.4453%**。
- 结论：手工 scalar/vector 循环破坏了后端对整体 `T.copy` 的批量向量加载与调度；静态指令/地址计算膨胀远大于任何延迟隐藏收益。后续不以手写拆分替换这一处 `T.copy`。

## 总结

三个实验分别被性能、编译器表达能力和代码生成效率否定。它们不满足 1.2% 晋级门槛，不创建版本号、不推进 `dorm`、不进入 `restart-submission`。保留的正向线索是：v152 的 M192xN128/4-wave 长 Step2 拓扑仍是当前局部最优；下一方向应改变数据复用或工作分配机制，而不是扩大 CTA、强行使用 6-wave，或把编译器可识别的整体 `T.copy` 拆成手工加载。

## 复现命令

```bash
/opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/validate_oj_submission.py <candidate.py>
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/run_permuted_fullcheck.py --parent race_tests/moe/restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py --candidate <candidate.py> --case 3 --output <screen.json> --rounds 1 --warmup 2 --repeat 10
```
