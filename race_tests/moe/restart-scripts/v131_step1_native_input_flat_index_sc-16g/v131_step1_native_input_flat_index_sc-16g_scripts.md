# v131_step1_native_input_flat_index_sc-16g 脚本说明

## 实际执行

- `validate_oj_submission.py`：对 `candidate_submission.py` 做 OJ import/source gate，PASS。
- 复用 `v130_v110_rebaseline_sc-16g/capture_codegen.py`：分别编译官方 Case1/2/3，保存 generated device C++、compiler log 和 resource JSON。
- 复用 `v130_v110_rebaseline_sc-16g/run_v110_fullcheck.py`：每 case `rounds=1,warmup=0,repeat=1`，目的仅为完整数值正确性；脚本附带时间不作为 benchmark。
- 未运行正式 AB/BA、mcTracer、mcProfiler、mx-smi 或 Roofline：三 case generated code byte-identical，预注册 codegen falsifier 已触发。

## 输入

- Parent：`restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`
- Candidate：`restart-experiments/v131_step1_native_input_flat_index_sc-16g/candidate_submission.py`
- 环境：`MACA_PATH=/opt/maca`，`PYTHONPATH=/root/tilelang-metax`，Python `/opt/conda/bin/python`

## 产物核对

- [x] 假设卡与 exact candidate source
- [x] OJ source validation
- [x] 三 case correctness smoke JSON
- [x] generated device C++ / compiler log / resource JSON
- [x] parent/candidate codegen SHA-256 对照
- [ ] 正式 AB/BA（因 codegen falsifier 跳过）
- [ ] mcTracer / mcProfiler（因 codegen falsifier跳过）
- [ ] submission（rejected candidate，不创建）

