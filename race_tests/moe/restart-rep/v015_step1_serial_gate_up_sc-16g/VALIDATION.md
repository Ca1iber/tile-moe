# v015 validation checklist

- [x] 假设卡在首次源码改动前登记。
- [x] main `custom_fusedmoe.py` SHA 与 v013 parent 相同：`7e72737a...`。
- [x] A/B/C/D2 源码快照和 identity SHA 已归档。
- [x] 所有实际执行 case 正确性 PASS，max_abs=0.001953125。
- [x] OJ、mcTracer、mcProfiler、generated C++、MXCC resources、final ISA 原始证据已归档。
- [x] official/Roofline/synchronized mx-smi 缺失原因显式记录。
- [x] artifact inventory 已生成，ako4all-c500 strict validator 通过。
