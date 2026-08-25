# Correctness

- Case1 5 轮长测前的完整 padded output correctness 均 PASS，`rtol=atol=1e-2`。
- Case2/3 分别再次执行完整 correctness，均 PASS。
- Case2/3 generated device C++ 与 v108 的 SHA256 完全相同，因此数学路径和设备指令未改变。
- OJ AST/source validation 与三 Case generated device validation 全部 PASS。
- 所有 native workspace 读取地址均在完整分配的 128-row tile 内；无效行不写回输出。
