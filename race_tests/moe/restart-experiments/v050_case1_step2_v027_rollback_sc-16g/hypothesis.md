# v050 Case1 Step2 v027 rollback

Observed evidence:
- The OJ rejected v048 on Case1 at output coordinate (2662, 203), with target -0.0972900390625 versus reference 0.012054443359375.
- v048/v049 Case1 code is inherited from v045; the v048 optimization itself only changed Case3.
- The known OJ distribution makes row 2662 an active row, not padding.
- v027 is the last exact submission confirmed accepted by the OJ.
- Local v048 Case1 passes 300 repeated executions and seed 81394, so the failure is not a deterministic index error on sc-16g.

Verified bottleneck:
- Correctness, not performance, is the current release gate. Case2 and Case3 OJ status is unknown because Case1 failed first.

Current hypothesis:
- The post-v027 Case1 Step2 half-B/continuous-async path is sensitive to OJ-side compiler or execution timing. Its historical batch hazards and large sign-changing error make it the strongest suspect.

Proposed mechanism:
- Keep v049 as the base.
- For Case1 only, retain `use_step2_input_prefetch=True` but disable half-B ping-pong, row1 tail async, and continuous async.
- This selects the v027 `T.copy` input-ping-pong Step2 branch.
- Keep Case1 Step1 and all Case2/Case3 paths unchanged.

Predicted metric changes:
- Case1 generated Step2 must contain the safe `T.copy` ping-pong sequence and no selected continuous-async/half-B path.
- All three local correctness cases must pass with maximum absolute error no worse than the established 0.001953125 result.
- Case1 latency may regress relative to v049; Case2 and Case3 should remain within noise because their compile-time flags do not change.

Falsifying result:
- Any local correctness failure, Case1 generated code still selecting the half-B/continuous path, or an unexpected Case2/Case3 code-generation change.

Correctness and resource risks:
- This is an OJ-side hypothesis until the corrected submission is rerun by the platform.
- Case1 Step1 still uses its later continuous-BSM implementation; if OJ still fails, the next diagnostic rollback is the entire Case1 path to v027.
