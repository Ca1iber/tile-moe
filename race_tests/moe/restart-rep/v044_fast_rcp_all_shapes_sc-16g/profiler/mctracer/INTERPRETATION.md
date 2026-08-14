# mcTracer interpretation

The first capture failed before producing a trace because mcTracer 3.7.1 prepended the process cwd to an absolute `--odname`. The retry ran the tracer wrapper from `/` and wrote only to system `/tmp`.

The valid three-pair Case2 trace reports Step1 median change -0.22293% and Step2 median change -0.24035%, but individual Step1 changes range from -1.598% to +0.096%. This short-kernel tracer sample conflicts with the much higher precision 7-pair W20/R100 end-to-end verdict (+0.10640%, 7/7 regressions), so it is diagnostic only and cannot reverse rejection.
