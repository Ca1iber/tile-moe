# v003_step1_register_pressure_tile64_sc-16g 脚本说明

该版本在 screen 阶段被明确拒绝，只保留实际使用的最小复现脚本和初始化模板。

| 文件 | 用途 |
|---|---|
| `profile_v003_codegen_screen.py` | 编译 case2/3，归档生成 C++ 与 MXCC resources |
| `profile_one_case.py` | 构造 OJ case 并在 profiler marker 内发射一次 kernel pair |
| `run_v003_mctracer.sh` | 对拒绝态 case3 采集 Step1/Step2 timeline |
| `summarize_v003_mctracer.py` | 输出 case3 screen 阶段摘要 |
| 其余脚本 | 初始化模板；本次早停未执行，不作为证据 |

## 实际命令

```bash
cd /root/tilelang-metax
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/moe/oj_benchmark.py --cases 2,3 --warmup 10 --repeat 100
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/moe/restart-scripts/v003_step1_register_pressure_tile64_sc-16g/profile_v003_codegen_screen.py
bash race_tests/moe/restart-scripts/v003_step1_register_pressure_tile64_sc-16g/run_v003_mctracer.sh 3
/opt/conda/bin/python race_tests/moe/restart-scripts/v003_step1_register_pressure_tile64_sc-16g/summarize_v003_mctracer.py
```

- Candidate SHA256：`b31bfdfab61700e0873e03e6f4518992e5df053cea53292becfd1fccbf122c5a`。
- 恢复后的 current best SHA256：`bf61d3ce399ea7c685a0ed24df2245ef0745c92fe81bc1be9e18d453d07b7461`。
- 未运行项目均有显式 `UNAVAILABLE.md`，没有把模板伪装成执行证据。
