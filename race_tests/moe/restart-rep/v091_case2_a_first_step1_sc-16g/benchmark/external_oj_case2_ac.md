# External OJ AC — partial numeric evidence

Exact v091 candidate SHA-256: `ad8c12ab0264dc54b89bff436fc6a4263baea42183b5b704d9d58c579ed0d7d8`.

The user reported that this exact candidate is AC. The precise SPJ result provided for Case2 is:

- baseline: `18.610000 ms`
- user kernel: `3.995000 ms`
- speedup: `4.658x`
- score ratio: `0.823269` (`82.33%`)
- display score: `82 / 100`
- pass: `OK`

Relative to v090 Case2 (`4.133000 ms`, score ratio `0.818274`), v091 reduces latency by `3.338979%` and raises score ratio by `0.004995` absolute.

Exact numeric Case1/3 results were not provided. The user reported overall AC and the generated code for these two cases is byte-identical to v090, but neither fact substitutes for the complete per-case OJ score vector required by the SOTA promotion contract. Therefore formal `restart-submission` promotion remains inconclusive.
