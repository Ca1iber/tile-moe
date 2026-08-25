# Roofline

v110 不改变 FLOP、有效 HBM 元素或 tile 数量，只删除 Case1 Step2 的 padding-row 读取谓词；Roofline 对该控制路径优化不敏感，因此以生成代码资源、长测和三 kernel trace 作为直接证据。
