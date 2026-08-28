# v159 experiment

- Parent：v157 exact source。
- Primary change：Case1 short experts 使用 `M128N128`，long experts 使用 `M192N64`，在同一个 `64x24` Step1 grid 中按 slot 分派。
- Safety fix：64-thread expert-rank map 显式增加 `map_thread < num_experts`，避免 Case1 16 experts 下 OOB。
- Preserved：Step2、SiLU degree-9、输出语义、CTA/wave 总数、无 async/injection/builtin/cache。
- Result：Case1 formal mean `-8.2953%`，三 Case correctness PASS，外部 OJ pending。

