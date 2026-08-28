# v160 experiment

- Parent：v159 exact source。
- Primary change：在官方 Case2 开启与 Case1 相同的 unified mixed Step1，short experts 为 `M128N128`，long experts 为 `M192N64`。
- Preserved：Case1 v159 路径、Case3 v157 路径、Step2、SiLU degree-9、输出语义、无 async/injection/builtin/cache。
- Result：Case2 formal mean `-7.3055%`；Step1 read bytes `-12.46%`、VLS stall `-32.23%`、MMA duty `+6.94 pp`；三 Case correctness PASS；外部 OJ pending。

