# v043 probe results

- Direct 4-row helper: paired median -0.0459% (1/5 regression); rejected as noise.
- Direct 2-row helper: -0.0491% (5/5) but below the acceptance floor; not stacked.
- Pointer `restrict`: -0.0187% median with 1/5 regression; rejected.
- Hoisting the gate/up wave branch around all 16 BSM requests regressed +3.1577%; explicit unrolling regressed +3.5756%.
- Grouping two BSM requests under each wave mask regressed +2.2671%. The short row-wise gate/up interleave is required by this backend despite its larger static control-flow footprint.
- `__frcp_rn` through a scalar pure-extern lowered the 16xfloat4 epilogue into a 64-element scalar loop and regressed +7.1647%; rejected.
- `__builtin_mxc_rcpf` inside an in-place float4x16 helper preserved vector lowering and improved -0.45093% in the final 13-pair test.
