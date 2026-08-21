# v59 Step1 长 expert 等面积 Tile 转置（sc-16g）

尝试 `BM256×BN64 / 4 waves` 替代旧 `BM256×BN128 / 8 waves`，希望在保持CTA/wave/padding MMA工作量的同时减少长 expert 权重重复读取。

结果：Case1 correctness与OJ静态检查通过，但端到端 `2.780 ms -> 3.852 ms`，中位回归 `+38.565%`；mcTracer Step1 `1.742 -> 2.808 ms`。新长核为256寄存器/thread并产生private-memory活动，单核耗时2.081 ms。

结论：等面积不等于等fragment成本；每wave `64×64` 加双A fragment触及寄存器上限，拒绝。完整证据：`restart-rep/v070_step1_long_isoarea_tile_sc-16g/`。
