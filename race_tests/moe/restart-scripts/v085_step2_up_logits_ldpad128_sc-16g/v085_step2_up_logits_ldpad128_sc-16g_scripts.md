# v085 scripts

## `run_v59_paired.py`

同进程加载 v084 与候选，构造三个已知 OJ shape，先做 reference correctness，再按 AB/BA 交替使用 device event 计时。最终命令使用 warmup 10、repeat 200；Case1/3 三轮，Case2 五轮。输出写入 `restart-rep/.../benchmark/`。

## `run_v59_fullcheck.py`

与 paired 脚本相同的数据构造，但在调用前把整块输出填成 7，并对完整 padded output 与 FP32 reference 做 `assert_close`，用于捕捉漏写 padding 行。三 Case 均通过。

## `validate_oj_submission.py`

对候选源和三个 selected-shape generated-device C++ 执行 allowlist、TileLang-only、no-async、no-foreign-call 门禁。

## `capture_codegen.py`

分别编译 Case1/2/3，保存 compiler log、generated device source 与 MT/ST register、static 2-wave 摘要。

## `extract_metax_isa.sh` / `analyze_metax_isa.py`

从 generated device source 通过 MXCC 3.7.1 提取最终 xcore1000 MetaX ISA，汇总 MMA、global/shared load/store、barrier、寄存器、wave 与 spill 注释。环境使用 `PROJECT_ROOT=/root/tilelang-metax`、`MACA_ROOT=/opt/maca-3.7.1`。

## `profile_submission.py` / `run_paired_mctracer.py`

对 Case3 分别启动三对 AB/BA 独立 mcTracer 进程，排除首次编译/初始化，只汇总 profiling range 内的 Step1、Step2 和 launch gap。输出包括六份 raw trace 与 paired summary。

## `summarize_iteration.py` / `validate_iteration.py`

前者生成 Git identity 与 SHA-256 artifact inventory；后者严格检查四目录、source/patch、报告、脚本以及每类证据或 `UNAVAILABLE.md`。

## Candidate identity

- Source: `race_tests/moe/restart-experiments/v085_step2_up_logits_ldpad128_sc-16g/v085_step2_up_logits_ldpad128_sc-16g_custom_fusedmoe.py`
- SHA-256: `6d4aa3a6f428d023adf6b681ea3a4429e5fd563d84f4fdd12fb85a8aab5be3d5`
- Parent: v084 SHA-256 `32e50bbb2b21683765702b920ee78aa2fff865db78fcc8da94d3e3debfa517a2`
