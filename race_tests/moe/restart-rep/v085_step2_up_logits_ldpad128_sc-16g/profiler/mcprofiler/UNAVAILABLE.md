# mcProfiler status

没有采集新的 mcProfiler counter sweep。当前可用的 profiler 聚合口径无法稳定隔离两个同名/相邻 kernel 的 cache set 或 bank 冲突；因此不记录不可复现的 VL1/L2/stall 数字。三对独立 mcTracer 已把收益定位到 Case3 Step2，最终结论仍以无 profiler 附着的 device-event AB/BA 长测为准。
