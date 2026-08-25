# v096 codegen and verifier result

Fresh sc-16g compilation of Cases 1, 2 and 3 produced no `Data race detected` line. `cmp -s` against the corresponding v095 generated-device C++ returned 0 for all cases.

- Case1 SHA-256: `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7`
- Case2 SHA-256: `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`
- Case3 SHA-256: `d627d221d94cf8f2a48de61f9e3b8371bfa15856fed6d519451a00ac0dc3f19e`

The source rewrite is verifier-facing only; device execution is unchanged.
