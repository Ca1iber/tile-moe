# v148 public L2 persistence annotation audit (sc-16g, abandoned)

## Objective

Test whether the public TileLang primitive `T.annotate_l2_hit_ratio` can reduce
the low Case2 Step1 L2 hit ratio without using foreign source, builtins, async
copy, or an OJ escape hatch.

## Probe

- Parent: owner-approved external-OJ-AC v148.
- Change: add `T.annotate_l2_hit_ratio({input: 1.0})` at the top of the Step1
  `T.Kernel` block only.
- Source SHA256:
  `1f5714c3d6a6a7e0adbd0f25fbb758bbc843d72a902d1ded9b43e9f31a2f4f6e`.
- OJ source validator: PASS.
- Full Case2 valid-output correctness: PASS, `rtol=1e-2`, `atol=1e-2`.

## Evidence

- Capability query through `tilelang.carver.arch.driver` attempted to load
  `libcudart.so`, which is absent in the MACA container, and returned `None`.
- The probe nevertheless compiled and ran because the annotation did not
  survive into the MACA wrapper:
  - generated host source has no `PersistingL2`, `accessPolicyWindow`, or
    `cudaDeviceSetLimit`;
  - generated device source has no `l2_persistent` or `l2_hit_ratio` marker.
- Case2 smoke, same process parent/candidate: parent `3.924864 ms`, candidate
  `3.927808 ms`, candidate change `+0.0750%` (regression/noise).

## Conclusion

On the current TileLang/MXMACA stack, the public L2 hit-ratio annotation is a
silent no-op for the MACA backend. The measured delta is noise, so no ratio or
buffer sweep is justified. Do not number, package, merge, or promote this
probe. v148 remains the owner-approved SOTA.
