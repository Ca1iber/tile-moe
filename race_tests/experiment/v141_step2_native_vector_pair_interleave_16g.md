# v141 Step2 native vector-pair interleave（sc-16g）

## 结论

拒绝。v141 将 Step2 half-interleave 的 native `up_logits` 生产者从“每阶段 128 线程各读 4 个 128-bit vector”改为“每阶段 256 线程各读 2 个 vector”。三 case 正确性均通过，但相对 exact v110 的严格 AB/BA 中位耗时分别回退 `0.602% / 0.888% / 0.940%`，未达到 1.2% 候选门槛，也违反全 case 不回退要求。

## 原子变化

- 逻辑元素、全局地址集合、MMA、barrier、shared layout、grid 和算术完全不变。
- 原版按 `producer_stage == threadIdx // 128` 选择半个 CTA，每个活跃线程读取 4 个 native vector。
- v141 按 `intermediate_vec = producer_stage * 2 + pair` 划分 vector pair，两个阶段都让全部 256 个线程发出 2 个 vector 请求。
- 只使用 TileLang 原语；无 async copy、foreign source、注入或结果缓存。

## 结果

| Case | AB/BA samples | median | pstdev |
|---:|:---|---:|---:|
| 1 | `+0.570%, +0.824%, +0.602%` | `+0.602%` | `0.113%` |
| 2 | `+0.888%, +0.888%, +0.904%` | `+0.888%` | `0.008%` |
| 3 | `+0.914%, +0.940%, +1.025%` | `+0.940%` | `0.047%` |

正值表示候选更慢。协议为同进程 AB/BA、`warmup=10`、`repeat=80`，每个 case 三轮；三 case 全输出均以 `rtol=atol=1e-2` 通过。

## 生成代码线索

- Case1 Step2：`202 MT / 52 ST / 2 waves`，与 v110 相同。
- Cases2/3 Step2：`220 -> 224 MT`、`52 ST / 2 waves`。
- 编译器确实删除了 wave-half 条件，但在全 CTA 路径中引入了 `producer_stage * 4096` 等地址项；MMA 和 barrier 数未变。
- Case1 在资源数不变时仍回退，说明主要问题不是占用率掉档，而是原 wave-half 排列本身更适合 A/Down producer 的请求相位。

## 决策

不创建 `restart-submission`，SOTA 保持 external-OJ-AC v110。关闭“仅增加 native-A 同阶段参与 wave 数”方向；若以后重访，必须同时改变真实请求数、数据复用或 producer/consumer 边界，不能再做等字节的相位重排。
