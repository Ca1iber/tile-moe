# Correctness evidence location

v026 不修改 Kernel，只复验 v019/v023/v024 已通过正确性的源码快照。四实例脚本在每次实验中对全部实例执行 `torch.assert_close(rtol=1e-2, atol=1e-2)`；PASS 记录内嵌在 `../benchmark/*.json` 和对应日志中，因此没有单独 correctness run。
