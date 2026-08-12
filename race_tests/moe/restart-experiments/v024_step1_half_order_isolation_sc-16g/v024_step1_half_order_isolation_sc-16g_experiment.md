# v024 实验经过：Step1 半块顺序隔离

## 目标

v023 已证明 Case2 Step1 的 `gate0 -> input0 -> up0 -> gate1 -> input1 -> up1` 半块交错能改善无插桩 OJ，但生成汇编中 load 发射顺序仍存在可优化空间。本版本系统枚举半块顺序，并用同进程 AB/BA 测试消除 sc-16g 的时间相位漂移。

## 实验变量

- Parent：`v023_step1_gate_input_up_half_interleave_sc-16g`。
- 最终 Candidate：只交换中间两个权重半块，形成 `gate0 -> input0 -> gate1 -> up0 -> input1 -> up1`。
- 不变项：BN/BK、线程数、shared buffer、barrier、MMA、global/shared 访问次数、Step2、Case1、Case3。

## 过程

1. 枚举同质排列 GAU、GUA、AGU、AUG、UGA、UAG；六个版本均通过 Case2 正确性粗筛。
2. fresh-process 轮转暴露出明显时间相位：v023 parent 前三次约 5.30 ms，后三次约 4.97 ms，因此停止用跨进程绝对值裁决细微差异。
3. 新增同进程比较器：两版预编译、共享输入和权重、独立 scratch/output，并交替执行 AB/BA event windows。
4. AGU 相对 parent 12/12 变慢，中位 `+2.140174%`；AUG 6/6 变慢，中位 `+1.844746%`。GUA/UGA/UAG 粗筛同样劣于 GAU。
5. C++/ISA 显示 v023 GAU 保留了特殊的 `1-2-1` 权重分组。基于该证据构造非同质 middle-swap，只交换 `up0/gate1`，保留 `1-2-1` 分组。
6. middle-swap 在 repeat=200 的 12 对同进程测试中 12/12 提升，中位 `-1.632301%`；repeat=2000 的 4 对长窗中 4/4 提升，中位 `-1.893434%`。
7. 三组 OJ 全部 PASS，最大误差均 `0.001953125`；官方 functional 2/2 PASS。
8. Case1/3 生成 C++ 与 v023 字节级一致。Case2 Step1 资源、访存和 MMA 数不变，只在一个 load 发射区段把地址计算前置，消除两个夹在 `ldg_b128` 之间的 `snop`。
9. mcTracer 出现高噪声混合方向；两轮反向顺序 mcProfiler 的 VLS stall 和 global-read bytes 方向互相反转，因此全部 profiler elapsed/replay totals 隔离，不覆盖无插桩裁决。

## 结论

接受 middle-swap 并安装为当前 `custom_fusedmoe.py`。本版本的主要工程结论不是“少两个 snop 就一定更快”，而是：在保持 v023 `1-2-1` 分组的前提下，把四个地址计算集中到四个连续 `ldg_b128` 前，能在未插桩同进程负载中稳定改善 Case2 总时延约 1.6%–1.9%。

下一版本应继续围绕该 load bundle 做小范围、机制明确的调度实验，并持续使用同进程 AB/BA 作为细微收益的裁决协议。
