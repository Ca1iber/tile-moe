# v048 report: Case3 Step1 expert-grouped grid

Status: accepted new best on sc-16g. Parent `v045_step1_expert_grouped_grid_sc-16g` / `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Submission SHA-256 `ae6723f560cfee7039f7090a8e800bccf00e4bfc99bbbc825ad889340418c288`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.637608 ms, candidate median 10.322529 ms; paired median -2.97138%, mean -2.97506%, 13/13 wins. OJ W20/R100 candidate times are 2.780685 / 4.927393 / 10.303951 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer localizes the effect to Step1: five paired changes -5.798%, -3.083%, -4.280%, -5.635%, and -4.902%, median -4.90186%. Step2 median -0.27100% is noise. Grid and 32 KiB dynamic shared memory are unchanged; Step1 reports 210 MT / 52 ST and two static waves versus v045's 230 MT / 26 ST and two waves, with zero private memory.

The generated C++ computes the remap once per CTA. Step1 ISA keeps 256 MMA, 28 128-bit global loads, 64 LDS, and four barrier sites. Wave-matched period0 counters (16896/16896 waves) show DNOC reads -5.370%, global read bytes 8.4112 -> 7.9704 GB (-5.241%), AP active cycles -3.019%, MMA duty +3.113%, and MTE duty +51.727%; memory instruction count is unchanged and private traffic is zero. The aggregate multi-period report is retained but marked invalid because its waves mismatch by 1.780%.
