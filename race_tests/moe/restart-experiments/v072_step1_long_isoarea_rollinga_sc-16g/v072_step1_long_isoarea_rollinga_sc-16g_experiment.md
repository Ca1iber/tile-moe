# v072 Step1 long-expert iso-area rolling-A（sc-16g）

## Observed evidence

- v070 的 BM256×BN64 双 A 长核达到 256 registers/thread、产生 private allocation，长核约 2.081 ms。
- v071 single-A 把资源降到 222 registers/thread、private total 0，长核降至 1.295 ms，但拆分 Step1 仍比 v59 慢 16.502%。
- v071 的 Step1→Step2 gap 只有 0.0028 ms，回退不是 kernel 间空泡，而是长核本体。
- 先前 8-wave 同形状研究中，受保护 rolling-A 相对完全同步 single-A 曾缩短长核约 13%。

## Verified bottleneck

v071 已消除寄存器/private-memory异常；剩余问题是同步 single-A 把每个 K tile 的 A load 与 Gate/Up load/MMA 串行化，缺少 tile 内有效重叠。

## Current hypothesis

在每个 32-column A stripe 完成 MMA 后，立即用该已消费位置加载下一 K tile 的同一 stripe，可用一份 A shared fragment 恢复部分 load/MMA 重叠，同时不恢复双 A 的寄存器容量。

## Proposed mechanism

- 保持 v071 的 `BM256×BN64 / 256 threads / 4 waves`、grid、Gate/Up staging 与 Step2。
- K=0 的 A tile 在循环前完整加载。
- 每个 `ki` 完成 Gate/Up MMA 后，若存在下一 K tile，将下一 tile 的 32-column stripe 写入刚消费的 shared stripe。
- 保留 actual-row load predicate 与 `k + 1 < step1_k_tiles` 边界保护。
- 不使用 async copy、foreign call 或 injected source。

## Predicted metric changes

- full-padding correctness 与 OJ source/generated-code validator 通过。
- long kernel MT registers 保持接近 v071 的 222，private allocation保持0。
- long kernel 相对 v071 的1.295 ms至少下降10%；若机制足够，Case1端到端相对v59至少改善1.2%。

## Falsifying result

任一项成立即拒绝：正确性/合规失败、资源回到private/256-register状态、long kernel没有显著缩短，或低噪声配对端到端相对v59提升不足1.2%。

## Risks

- shared-memory producer写下一stripe与其它wave消费当前stripe之间可能需要额外同步；若编译器未保持预期顺序，correctness会直接否决。
- rolling store可能与Gate/Up load争用MTE或增加同步依赖，即使静态指令更少也不一定更快。
