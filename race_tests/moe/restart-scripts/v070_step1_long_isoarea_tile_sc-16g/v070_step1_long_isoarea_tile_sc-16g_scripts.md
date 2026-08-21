# v070 scripts

- `capture_codegen.py`：Case1 lowering/device code/resource capture。
- `validate_oj_submission.py`：OJ source与generated-device静态合规检查。
- `run_v59_fullcheck.py`：full-padding correctness与同进程AB/BA device-event screen。
- `run_paired_mctracer_hybrid.py`：两核v59与三核v070的阶段配对trace。
- `run_mcprofiler.sh`：Case1 targeted metric collection。

所有脚本均从v59或已有hybrid诊断脚本原样复用；benchmark输入、随机种子、容差和计时方法未修改。

