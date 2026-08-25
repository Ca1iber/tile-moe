# Case3 static race warning analysis

The external OJ compiler emitted warnings for:

- `input_prefetch(input_row_odd_hi, j_x_odd_hi)`
- `input_shared(input_row_even_hi, j_x_even_hi)`

The checker proposed a symbolic counterexample with `actual_rows = 0` and `input_row_*_hi = -1`. This is inconsistent with the source definitions `input_row_*_hi = block_token // 2 + i_x_*_hi` (`block_token // 2 = 64`), and with the guarding predicate `input_row_*_hi < actual_rows`: when `actual_rows = 0`, no write executes. The `(input_row, j)` mapping is injective across the two parallel loop variables.

External OJ returned `pass: true` and the full padded-output tests passed. The warning is therefore recorded as a verifier false positive, not suppressed with `TL_DISABLE_DATA_RACE_CHECK`. A follow-up candidate should inline `block_token // 2 + i_x_*_hi` in the destination index so the verifier can prove injectivity without changing semantics.
