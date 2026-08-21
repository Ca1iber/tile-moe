# v071 Step1 long-expert iso-area single-A（sc-16g）

## Observed evidence

v070 BM256×BN64长核正确生成并保持4 waves，但达到256 MT registers/thread、出现private-memory活动，长核2.081 ms，Case1端到端回归38.565%。旧8-wave研究中关闭双A曾把寄存器218降至192并缩短长核。

## Verified bottleneck

v070 的64×64 per-wave布局与双A fragment共同触及寄存器上限，operand-feed收益被private/register代价覆盖。

## Current hypothesis

仅关闭v070长核的A ping-pong，使用一份同步A fragment，可显著降低寄存器与private-memory代价；短核与Step2保持v59。

## Proposed mechanism

- 保留长核 `BM256×BN64 / 256 threads / 4 waves`、grid与Gate/Up staging。
- 长核每个K tile按 `A load → Gate/Up shared load → MMA` 顺序同步执行。
- 保留actual-row A load与wave-level MMA predicate。
- 不改变数学、真实输出、Step2或benchmark。

## Predicted metric changes

- long kernel寄存器低于256且private allocation消失。
- long kernel明显快于v070的2.081 ms。
- 若权重复用能够转化为收益，Case1端到端相对v59改善至少1.2%。

## Falsifying result

编译/正确性/合规失败，private代价未消失，或严格配对端到端相对v59提升不足1.2%，均拒绝。

## Risks

同步single-A会失去v59双A预取的延迟隐藏；即使资源下降，长核也可能仍慢于两个4-wave v59 CTA。
