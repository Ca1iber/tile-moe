# UNAVAILABLE

v012 async 子探针没有采集版本专用的完整 mcProfiler Roofline 字段；旧 `minibs-baseline` 点不能冒充本版。v012e 的采集又在工具启动阶段因 sc-16g 主机 `flush_workqueue/SRCU` 异常失败，且 v012e 已提升为 v013。

因此本版只报告 mcTracer 分阶段时间和静态 ISA，不生成伪 Roofline 点。
