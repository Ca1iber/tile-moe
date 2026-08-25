# v096 direct-index verifier cleanup

- Parent: v095 external-OJ-AC candidate
- Parent SHA-256: `7e7f5b69a9a17fef7f6e155f7a07901af0e0aba9ec59edab788e6b4f15e90b8f`
- Candidate SHA-256: `b80b058e788a9f5cc803ab457344ab8160e316b5c45c162e9ffb1cacc89c6a15`
- Machine: MetaX C500 `sc-16g`

Only the two Case3 split-A high-half row aliases are inlined. Fresh compilation of all three official Cases reports no `Data race detected`. Generated-device SHA-256 remains exactly:

- Case1 `c61cd69d...`
- Case2 `717d9d46...`
- Case3 `d627d221...`

All three files compare byte-identical with v095. Therefore correctness, resources, timing and profile are inherited under exact generated-code identity; external OJ source-level revalidation remains pending.
