# v59 Step1 BN64 occupancy实验（sc-16g）

Case1 Step1把BN128减为BN64，目标是用更低accumulator/shared资源提高驻留率。资源确实从222 registers/32KiB/2 waves-per-PEU变为150/16KiB/3，无private。

但端到端回退17.683%，mcTracer Step1 `1.743→2.239 ms`（`+28.496%`）；Step2和launch gap基本不变。双倍A读取、CTA与同步成本主导。

结论：不要用更小N tile追求名义occupancy；v59 BN128仍是甜点。完整证据：`restart-rep/v075_step1_case1_bn64_sc-16g/`。
