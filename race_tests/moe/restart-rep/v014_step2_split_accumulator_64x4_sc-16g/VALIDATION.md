# v014 validation

- `validate_iteration.py --strict`：PASS。
- 主工作 kernel 与 v013 parent SHA-256 完全一致：`7e72737a...aacbc3`；未覆盖 `custom_fusedmoe.py`。
- v014 candidate SHA-256：`82cbd989...e9a1`；source snapshot 与 patch 均归档。
- v014 脚本目录所有 Python 文件通过 `py_compile`，所有 shell 文件通过 `bash -n`。
- 四个 v014 目录中的 73 个 JSON 全部可解析。
- 三个 OJ case correctness 均 PASS，最大绝对误差 `0.001953125`；clean paired campaign 中的每个 fresh-process sample 也执行相同 correctness gate。
- 正序/反序 mcProfiler 均包含 `PROFILE_DONE` 和非空 `report.txt.json`；三对 mcTracer 均有原始 trace 与 summary。
- artifact manifest 在加入本文件后重新生成；严格校验再次执行。
