# mcProfiler not collected

v071 已被低噪声端到端 screen 稳定否决；codegen 已证明 long kernel 从 256 降至 222 registers/thread，mcTracer 又把回退定位到 Step1 long kernel。继续采集 replay 型 mcProfiler 不会改变晋级决策，因此按早停规则省略。
