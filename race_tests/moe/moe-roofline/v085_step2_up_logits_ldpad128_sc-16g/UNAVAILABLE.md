# Roofline status

本版本没有重新计算 Roofline。变更不改变 FLOPs 或逻辑有效字节，目标是 Step2 的行地址映射；现有工具又没有稳定的 per-kernel cache/bank traffic 计数，基于不变的理论 bytes 重画点不会验证该假设。后续若取得可靠的 Step2 transaction/bytes counter，再补充 native 与重归一化 Roofline。
