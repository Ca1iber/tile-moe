# 2026-08-25 v136 Step1 M128 八个 row-wave 探索

## 结论

拒绝，不移动 v110 SOTA。v136 将 v110 Step1 的 M128×N128 CTA 从 4 个 M32×N128 row-wave 拆为 8 个 M16×N128 row-wave，并同步重排 consumer-native A。三例数值均正确且 OJ 合规，但端到端分别回退 +3.088%、+9.814%、+8.574%。

## 关键证据

- Step1 资源从 226 MT/2 static waves 显著改善为 Case1 128 MT/4 waves、Case2/3 126 MT/4 waves。
- Step2 资源完全不变；native A workspace 元素数与 global bytes 设计值不变。
- 资源改善没有转化为性能：Case1 2.177574→2.244817 ms；Case2 3.901986→4.284915 ms；Case3 7.552896→8.200469 ms。
- 回退在 K tiles 更多的 Case2/3 更大，符合 B fragment reuse 丢失的因果预测。

## 关闭的方向

不要再次尝试“同一 M128×N128 CTA 单纯从 4 个 M32 row-wave 拆成 8 个 M16 row-wave”来压低寄存器。M32 wave 能让一次 B fragment load 服务两个 M16 micro-row；M16 wave 使 row-wave 与 shared→register B load 数翻倍，并让每个 CTA 同步点的参与 wave 翻倍。除非具备跨 row-wave B fragment 广播/共享的新能力，否则这条路线没有候选价值。

## 证据位置

- 源码与 patch：`restart-experiments/v136_step1_8rowwaves_sc-16g/`
- 三例 AB/BA 与资源 JSON：`restart-rep/v136_step1_8rowwaves_sc-16g/`
- 原始临时 generated C++ / compiler logs：远端 `/tmp/v136_codegen_case{1,2,3}/`
- SOTA：仍为 `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`
