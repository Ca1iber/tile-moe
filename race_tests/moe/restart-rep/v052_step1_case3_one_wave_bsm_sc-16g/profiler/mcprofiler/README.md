# mcProfiler replay

The valid comparison uses `raw/v050_parent` and `raw/v052_candidate`. Both report 16896 achieved/dispatched waves, so counter comparison is valid. Counters aggregate the two Case3 launches; generated Step2 is byte-identical, so the clean timing and mcTracer own the stage-level decision.

`diagnostic_failed_relative_path` is retained only to document a tooling error: mcProfiler changed its working directory, so a relative parent submission path raised `FileNotFoundError`. It contains no valid counter evidence and was replaced by the absolute-path retry.
