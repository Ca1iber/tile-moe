# v112 native vector unroll 噪声试验

- 基线：v110 locally-qualified candidate。
- 源码 SHA256：`052465e2cb618d9d02738800455d31c8fbba01383abda1fcb58ec3b25745b7f2`。
- 改动：三处 consumer-native workspace 读取的 `T.serial(4)` 改成 `T.unroll(4)`。
- 正确性：Case1 PASS。
- Case1 三轮短测变化：`-0.061% / -0.109% / -0.125%`，中位 `-0.109%`，远低于 1.2% 门槛。
- 资源：Step2 保持 202 MT / 52 ST、2 waves/PEU；生成 C++ 仅增加约 65 bytes。

结论：后端已经有效处理四次固定 vector 迭代，显式 unroll 没有实质收益；不继续扩展到 Cases2/3，保持 v110。
