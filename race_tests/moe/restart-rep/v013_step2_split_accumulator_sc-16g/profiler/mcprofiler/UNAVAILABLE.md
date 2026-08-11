# UNAVAILABLE: v013 Case3 Step2 mcProfiler

- 目标：`kernel_kernel_1`，Case3，targeted metrics 包括 cycles、wave life、MMA/MTE duty、global bytes 与 private read/write。
- 结果：`mcProfiler perf_exec` 在生成有效输出前进入不可中断 `D` 状态，wait channel 为 `flush_workqueue`；`mcprofiler.log` 为 0 字节。
- 交叉检查：随后 mcTracer 的 `macainfo` 和普通 OJ Python 初始化进入 `synchronize_srcu`；隔离 clone 中也已有进程卡在相同 workqueue，说明是主机/驱动状态，不是 v013 Kernel 死锁。
- 处理：只向本任务精确 PID 发出 TERM/KILL，未触碰另一台电脑的进程；未把失败采集用于性能解释。
- 恢复动作：实例或 GPU 驱动恢复后，确认无遗留 profiler，再单独重跑 Case3 Step2 targeted collection。
