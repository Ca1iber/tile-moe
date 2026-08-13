# v036 Step2 odd-B0 tail async

## 假设

v034 已把 Step2 的 next-even B0 搬运与 odd-B1 MMA 重叠，但 odd-B0 仍是四个同步 16-byte row batch。v034 的 full odd-B0 async 会产生约 11.8% 错误，因此本轮没有盲目重试，而是先按 K tile 与输出子带定位不安全范围，再只异步化被证明正确的部分。

## 底层定位

- odd K tile 的错误集中在每个逻辑 B0 128-wide half 的前 32 输出列；32:64 近似正确，64:128 完全正确。
- 相关性排除“读到了相邻 K tile”：错误输出与当前正确 K tile 仍有约 0.752 的整体相关性，而与前后 K tile 近零相关。
- 因此 `row_batch_1 == 0` 保留同步 copy；`row_batch_1 == 1..3` 使用 16-byte async copy，并在当前 even-B1 MMA 后等待三个 token。
- 该路径只对 OJ Case1（16 experts, hidden=2048, intermediate=8192）启用。Case2/3 lowering 后 device C++ 与 v034 字节级相同。

## 失败但有价值的 v035

v035 删除四个显式 token wait 后仍正确，汇编 barrier-like 站点减少，但 7 轮 paired 中位仅 -0.0421%，且出现一轮回退，说明这些 wait 已被随后的 CTA barrier 覆盖、不是关键路径。因此拒绝收版，继续下钻 odd-B0 数据子带。

## 最终结果

最终源三配置正确，OJ import allowlist 通过。Case1 七轮 AB/BA 7/7 获胜，paired 中位 -0.2107%；mcTracer 将收益定位到 Step2，paired 中位 -1.5201%，三轮全胜。Step2 MT registers 234→218，ST=52、private=0、static max 2 waves/PEU 不变。Case2/3 设备代码 SHA 分别保持 `94ab5e1c...0280` 与 `6c21d4b3...9a1b`。

接受为新的 dorm 最优版本。submission SHA-256：`b4fa1b36f518dd034a467f0480a39ffc978eae7f14f72b52f81f24afc9ba7396`。
