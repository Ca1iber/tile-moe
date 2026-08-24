# mcProfiler targeted counters unavailable

本版本的可证伪假设是同步 input load 的发出位置改变 Step1 latency overlap。clean paired benchmark 与 mcTracer 已确认只有 Step1 缩短；generated C++/MetaX ISA 已确认 load 顺序物化、MMA/barrier 不变、2-wave 不变且无 spill。

当前未采集一个能够稳定、直接量化该 load-use overlap 的 mcProfiler counter；不使用 VLS/VL1 原始计数冒充字节或等待周期。若外部 OJ 通过并需要进一步解释，再按相同 source hash 补采可用 counter。

