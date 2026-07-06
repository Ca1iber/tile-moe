# v14 PV transpose sweep

## 目的

扫 `V^T @ P^T` 形式的 PV mapping，验证 direct `acc_s -> acc_s_cast` 是否能编译并正确。

## 汇总

- 总组合数：6。
- PASS：0。
- 结论：转置 PV mapping 也没有找到可直接复用 QK C fragment 的组合。
