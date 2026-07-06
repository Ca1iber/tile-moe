# v14 PV transpose bridge sweep

## 目的

保留 `S_shared` 中转，只改 PV 为 `V^T @ P^T`，判断转置 PV MMA mapping 本身是否有价值。

## 汇总

- 总组合数：6。
- PASS：0。
- 结论：转置 PV bridge mapping 未找到正确可运行组合。
