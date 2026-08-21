# v070 Step1 long-expert iso-area tile（sc-16g）

## Observed evidence

- 精确父版本 v59 SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`。
- Case1 Step1 约 1.74 ms，长 expert 为 184 行，v59 用两个 BM128 row CTA。
- 旧 BM256×BN128 8-wave hybrid 将 Step1 global read 降低 28.63%，但长核 MMA duty 降至 29.44%，端到端回归 17.03%。

## Verified bottleneck

旧 BM256 路径的问题是 512-thread/8-wave CTA 的 operand-feed 与协调效率，而不是权重流量没有下降。

## Current hypothesis

把长 expert 的 Step1 Tile 从 `BM256×BN128/8 waves` 改成等面积的 `BM256×BN64/4 waves`，可保留权重复用，同时避免大 CTA 的 wave 协调成本。

## Proposed mechanism

- 短 expert 保持 v59 的 `BM128×BN128/256 threads/4 waves`。
- 长 expert 使用 `BM256×BN64/256 threads/4 waves`。
- 对长 expert，`2×(N/128) == 1×(N/64)`，因此 CTA 数与 dispatched waves 不增加。
- 每 CTA accumulator 面积保持 `128×128 == 256×64`；padding MMA 工作量保持不变。
- Gate/Up 权重由每个长 expert 两次完整遍历降为一次完整遍历。
- Step2 完全保持 v59。

## Predicted metric changes

- correctness 与 padding-zero 全张量验证通过。
- Case1 Step1 global-read bytes 接近旧 hybrid 的下降方向。
- 长 Step1 kernel 的 MMA duty 高于旧8-wave版本，AP active cycles显著低于旧8-wave版本。
- 端到端相对 v59 至少改善 1.2%。

## Falsifying result

任一项成立即拒绝：编译/布局失败、正确性失败、异步 copy/foreign code 出现、资源发生不合理跃升，或严格配对端到端提升不足 1.2%。

## Correctness and resource risks

- `warp_row_tiles` 从32变64，A fragment live range可能提高寄存器压力。
- `warp_col_tiles` 从128变64，需确认 ldmatrix/store layout 正确生成。
- tail-pruning 的 wave-row 起点必须从固定32改为64。
