# v131 Step1 consumer-native flat-index hypothesis

- Parent: exact external-OJ-AC v110 submission (`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`).
- Primary change: represent only the consumer-native Step1 input workspace as one flat tensor and express its producer/consumer addresses as explicit linear offsets.
- Preserved invariants: physical element order, workspace size, prepack grid, Step1 grid/tile, copy order, barriers, MFMA order, Step2, output semantics, and all non-native case paths.
- Mechanism: remove the five-dimensional buffer index lowering on the hot Step1 native-input path, giving the compiler a direct affine element offset and potentially shortening integer address-calculation live ranges.
- Predicted codegen evidence: Step1 generated device code must differ from v110 and show fewer address-calculation temporaries/instructions and/or lower MT register use. Step2 should remain unchanged apart from symbols/metadata.
- Predicted performance: at least 1.2% improvement in one or more affected official cases without a material aggregate regression.
- Correctness risk: an incorrect linearization stride would corrupt Step1 input tiles. The required offset is `((((block * k_tiles + k_tile) * 4 + native_vec) * 256 + thread) * 8 + elem)`.
- Falsifier: reject before timing if generated Step1 code is byte-identical or resource/address evidence does not materialize. Reject after timing if strict AB/BA improvement is below the 1.2% candidate gate or correctness/OJ-source validation fails.
- Compliance: TileLang/PyTorch allowlist only; no async copy, foreign import, injection, cache, or result specialization.
