# v071 scripts

- `capture_codegen.py`：Case1 lowering、device code 与资源抓取。
- `validate_oj_submission.py`：OJ source 与 generated-device 静态合规检查。
- `run_v59_fullcheck.py`：全 padding correctness 与同进程 AB/BA device-event screen。
- `profile_submission.py`：单 case trace 驱动。
- `run_paired_mctracer_hybrid.py`：v59 两核与 v071 三核的阶段配对 trace。

benchmark 输入、随机种子、容差与计时协议均继承 v070/v59，没有为候选改口径。
