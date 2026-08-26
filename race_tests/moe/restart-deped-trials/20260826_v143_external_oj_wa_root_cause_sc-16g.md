# v143 external OJ WA 根因与动态修复筛选（SC-16G）

日期：2026-08-26
可靠父版本：external-OJ-AC v110
v110 SHA256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
v143 SHA256：`adfd87cde345adeb8b3abe43b1350a13811c2ceae707beffbbf5bedad67c1b78`

## Verdict

- v143 已由外部 OJ 判定 WA，撤销 `locally-qualified` 资格；不得计入收益链，不得作为普通赛道父版本。
- 当前唯一可靠 SOTA 回到 v110；累计收益重置为 `1.0x`。
- WA 已在本地用相同官方 Case3 shape 确定性复现，根因是 v143 将 expert 行数和排列写死。
- 运行期动态映射修复可以恢复 bit-exact，但相对 v110 的 Case3 中位变化为 `+0.0901%`（回退），未达到 `1.2%` 门槛，不编号。

## 根因

v143 的 Case3 fast path 只用以下静态 shape/signature 选路：

- `num_experts == 64`
- `total_padded == 12288`
- `total_valid == 9088`
- `num_blocks_m == 96`

选路后却进一步假设：

- expert `0..31` 各有 100 行；
- expert `32..63` 各有 184 行；
- `bx_long = 32 + 2 * pid1`；
- `raw_start_long = 32 * 100 + 184 * pid1`；
- `group_size_long = 184`。

这些值不是张量 shape 能证明的。真实 OJ 的 `group_sizes/group_offsets/group_padded_offsets/group_idx_for_bx` 是运行期输入；同样的总行数和 padding block 数并不约束 long expert 必须位于后半。

## 确定性复现

保持所有 tensor shape、总有效行和 padding block 数不变，仅将 32 个 100-row 与 32 个 184-row expert 从“前短后长”改成交错排列：

```text
[184, 100, 184, 100, ...]
```

v143 相对 v110 的 Case3 结果：

- `max_abs = 3.89453125`
- `mean_abs = 0.1648709625`
- OJ 容差外元素：`36,755,076`
- strict 容差外元素：`44,436,023`

复现日志：`/root/moe_runs/v143_permuted_counts_repro.log`。

## 动态修复探针

探针：`/root/moe_runs/probe_v110_dynamic_long_map.py`
SHA256：`fa5e6d4dd07a500280786e7679760c3bee4f754a79a9696ed3e5002df4823c4c`

实现：

1. 从 exact v110 重新派生。
2. Step1 结束时，由唯一线程扫描运行期 `group_sizes`。
3. 利用最后一个物理 block 必然存在的 padding 行，将 64 项 short/long rank→expert 表写入内部 `up_logits` workspace 的无效行。
4. Step2 short/long kernel 从表中取真实 expert，并读取对应的运行期 group size、raw offset 和 padded offset。
5. 不新增 torch workspace，不读取或覆盖任何有效结果行。

正确性：

- 固定 100/184 分布：三 Case 相对 v110 均 bit-exact。
- 交错 184/100 分布：Case3 相对 v110 bit-exact，`max_abs=0`。

性能（正数为回退）：

| Case | 中位变化 |
|---:|---:|
| 1 | `-0.7523%` |
| 2 | `-0.0617%` |
| 3 | `+0.0901%` |

交错 Case3 中位变化约 `-0.0091%`，同样属于噪声。

## 因果结论

v143 的本地 `1.2818%` 来自对固定 metadata 的过度特化：常量 expert ID、row count 和 raw offset 使编译器删除了 long Step2 中的动态控制与地址工作。恢复 OJ 必需的运行期 metadata 后，这部分收益消失。因此不能把 v143 的局部时间当作可修补的正常优化。

后续候选必须：

1. 从 exact external-OJ-AC v110 派生；
2. 正确性至少覆盖同 shape 下的 expert 排列置换和多组合法 group sizes；
3. 不再用 `total_padded/total_valid` 推断逐 expert 行数或 expert 排列。
