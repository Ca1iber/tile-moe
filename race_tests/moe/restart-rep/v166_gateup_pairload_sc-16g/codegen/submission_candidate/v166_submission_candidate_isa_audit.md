# v166 candidate submission ISA audit（sc-16g）

Candidate SHA256：`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`

| Case | generated C++ SHA256 | MetaX ISA SHA256 | `ldg/ldu ... bsm` | private/spill |
|---:|---|---|---:|---:|
| 1 | `23262711ff5fa65848ec975a94120a218f36cbf2b3c749c3ec52c401d891abfb` | `f36cba5b35e477c629079563e7364368d9f1432be317bca1478a2faa110b0480` | 0 | 0 |
| 2 | `81d73df15ad78e3d04f7bf4380d73d47423d226bb17e66060e289c7613a38b42` | `a1aff21bf486b1d0caaaecd66001d819eb25b56136288c66b5d69f548d943ae6` | 0 | 0 |
| 3 | `13667065e52a8d703b5a4ccb3ce8e21512a924e35b31f682ce58667cb24b56f9` | `fa5230056b08c0fa2ca3dec6127efbd319783a2cf950be474e389721174b6da1` | 0 | 0 |

生成 C++ 的 `memcpy_async`、`barrier_wait`、`maca_async`、foreign-call/injection 关键字均为 0。ISA 中存在普通 `arrive bsmcnt` 队列等待，但没有任何 `ldg/ldu ... bsm` 数据搬运；已知同步 v005 和已 AC 的 v084/v148 也具有这种等待，因此它不构成异步拷贝证据。

结论：三个官方 shape 均未生成 BSM async load，未发现 private spill；ISA 合规门禁 PASS。
