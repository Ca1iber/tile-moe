# Case1 consumer-native full-A hypothesis

- Base: locally qualified v101, which applies consumer-native full-A only to Case2/Case3.
- Evidence: in Case3 the native full-A path removes 187 static Step1 instructions, cuts `ldg_b128` from 36 to 28, improves Step1 5.148%, and improves end-to-end Case3 2.627% in seven rounds. Case1 still spends about 63% of GPU span in Step1 and uses the old non-native feed.
- Change: enable the same accepted consumer-native workspace, shared bridge prepack, and one complete direct A producer for official Case1. All Case1 Gate/Up/Step2 schedules and the v95 `up_logits` workspace remain unchanged; Case2/3 behavior stays v101-identical.
- Expected mechanism: remove non-native A address/control instructions and reduce Case1 Step1 latency enough to offset the small prepack bridge cost.
- Safety: native mapping already passes full correctness and OJ source/generated checks in Case2/3 and has one writer per element; no async copy or foreign code.
- Acceptance: full padded correctness and OJ validation; Case1 median improvement >=1.2% versus v101. Case2/Case3 generated code must remain byte-identical.
