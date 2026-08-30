# v202 hypothesis: linear rank builder inside unified Case2/3 prepack

## Evidence

v191 replaces the separate expert-rank, short-prepack and long-prepack launches with one physical-expert M64 producer. For `copy_col == 0`, every expert CTA still scans all earlier experts to derive its short/long rank, giving `O(E²)` metadata reads and leaving those CTAs slightly longer than the other producer CTAs. The effect should grow from Case2 (`E=32`) to Case3 (`E=64`).

## Atomic change

Keep v191's producer grid, M64 shared bridge, bytes, native workspace layout, Step1, Step2 and all arithmetic unchanged. Only `copy_row == 0`, `copy_col == 0`, thread 0 performs one linear scan over the experts, maintains short/long counters, and writes the complete rank table. This changes rank construction from `E` independent prefix scans to one `O(E)` pass.

## Gate

- OJ source validator and full padded-output correctness for all three official cases.
- No Case1 regression.
- Direct exact-v166 Case2 and Case3 paired improvement at least 1.2% under the long-run protocol.
- No async copy, injection, MXMACA builtin, disabled checker or cached/preprocessed contents.
