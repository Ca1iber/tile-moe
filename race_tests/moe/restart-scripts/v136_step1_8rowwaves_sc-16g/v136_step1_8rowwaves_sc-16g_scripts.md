# v136_step1_8rowwaves_sc-16g 脚本说明

- `run_v110_fullcheck.py`：从 exact v110 与 candidate 的独立模块运行完整有效行 correctness，并做同进程 AB/BA device-event benchmark。
- `capture_codegen.py`：为三个官方 case 捕获 generated device C++、编译日志和 MT/ST/static-waves 资源报告。
- `validate_oj_submission.py`：扫描 candidate source 与三份 generated device source，确认 OJ import allowlist、无 async copy 和无 foreign injection。

本版使用三例短门槛协议：2 rounds、warmup 5、repeat 30。三例均稳定回退 3.09%–9.81%，因此按 early-reject 规则没有继续运行长 AB/BA、candidate mcProfiler、mcTracer、official benchmark 或 external OJ。

远端临时原始生成代码与 compiler log：`/tmp/v136_codegen_case{1,2,3}/`。
