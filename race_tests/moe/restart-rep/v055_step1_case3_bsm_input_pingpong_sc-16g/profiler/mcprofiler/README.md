# mcProfiler replay

The valid counter comparison uses `raw/v052_parent_wave_matched` and `raw/v055_candidate_wave_matched`: both have 5,758,096 achieved and dispatched waves, identical Memory Instructions, and zero private reads/writes. The first parent capture counted 1.616% extra achieved waves and is retained only under `diagnostic/`.

Counters are diagnostic because mcProfiler multiplexes metrics across replays and perturbs timing. The valid capture reports L2 hit +7.84 percentage points and DNOC reads -32.73%, but global-read bytes +5.15%, Total Cycles +1.26%, MMA duty -1.12%, and MTE duty -0.29%. These mixed results do not prove the overlap mechanism; the clean 13-pair benchmark is authoritative.
