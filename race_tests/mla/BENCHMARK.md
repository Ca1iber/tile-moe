# MLA Benchmark 手动运行说明

## 1. 运行环境

MLA benchmark 需要在 MetaX/MXMACA 环境上运行。当前远端环境示例：

```bash
ssh -p 32222 root+vm-ce3y6VxEWjhnvCdN@140.207.205.81
cd /root/tilelang-metax
```

远端需要加载 `MACA_PATH`、`LD_LIBRARY_PATH` 等环境变量。用非交互 SSH 直接跑命令时，建议包一层 `bash -lc`。

## 2. 单 case benchmark

从仓库根目录运行：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/mla/test_tilelang_mla.py \
  --no-json \
  --batch 1 \
  --heads 16 \
  --kv_heads 1 \
  --kv_ctx 2048 \
  --dim 512 \
  --pe_dim 64
```

非交互 SSH 运行示例：

```bash
ssh -o StrictHostKeyChecking=no -p 32222 root+vm-ce3y6VxEWjhnvCdN@140.207.205.81 \
  'bash -lc "cd /root/tilelang-metax && PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/mla/test_tilelang_mla.py --no-json --batch 1 --heads 16 --kv_heads 1 --kv_ctx 2048 --dim 512 --pe_dim 64"'
```

输出示例：

```text
Latency: 1.1851882934570312 ms
TFlops: 0.0601618902191638 TFlops
```

`test_tilelang_mla.py` 会先用 `ref_program` 做 correctness check，通过后才执行 benchmark。

## 3. 批量 benchmark

运行默认 JSON case：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/mla/test_tilelang_mla.py
```

也可以使用 `run.sh` 分段运行：

```bash
bash race_tests/mla/run.sh front    # cases 1-10
bash race_tests/mla/run.sh mid      # cases 11-20
bash race_tests/mla/run.sh end      # cases 21-30
bash race_tests/mla/run.sh '[1:15]' # cases 1-15
bash race_tests/mla/run.sh case31   # case 31 alone
```

指定 JSON：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/mla/test_tilelang_mla.py \
  --json race_tests/mla/test_cases_mla_batch_ctx.json
```

批量模式会读取 `test_cases_mla_batch_ctx.json`，逐个调用 `main(...)`，并生成：

```text
race_tests/mla/test_cases_mla_batch_ctx_results.csv
```

## 4. 常用参数含义

- `batch`: batch size。
- `heads`: Q heads 数。
- `kv_heads`: KV heads 数。当前 kernel 要求 `kv_heads == 1`。
- `kv_ctx`: KV cache 长度，也就是历史 token 数。
- `dim`: content Q/K/V 维度，默认 512。
- `pe_dim`: RoPE 部分维度，默认 64。

默认 MLA 维度：

```text
QK dim = dim + pe_dim = 576
VO dim = dim = 512
```

## 5. 注意事项

- 远端裸 `/usr/bin/python3` 没有项目依赖；使用 `/opt/conda/bin/python`。
- 从非仓库根目录运行时，需要设置 `PYTHONPATH=/root/tilelang-metax`，否则可能找不到本地 `tilelang`。
- 如果报 `MACA_PATH` 或 Triton MetaX backend 相关错误，通常是远端 shell 没加载环境变量；用 `bash -lc` 重跑。
- 当前脚本里的 `latency` 是 `profiler.do_bench(warmup=500)` 的结果，单位是 ms。
- `TFlops` 只统计 QK 和 PV 两部分理论 FLOPs，不包含 softmax、load/store、JIT 编译时间。
