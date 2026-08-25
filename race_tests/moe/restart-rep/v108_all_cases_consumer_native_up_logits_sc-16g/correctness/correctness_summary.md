# Correctness

- v108 三个官方 Case 均通过完整 padded output correctness，`rtol=1e-2`、`atol=1e-2`。
- 长轮次 AB/BA 脚本每个 Case 在计时前再次执行完整正确性检查，全部 PASS。
- OJ AST/source validation PASS。
- Case1、Case2、Case3 的 generated device C++ validation 均 PASS。
- 最终仅清理 Python 编译期变量名；清理前后每个 Case 的 generated device C++ SHA256 完全一致。
