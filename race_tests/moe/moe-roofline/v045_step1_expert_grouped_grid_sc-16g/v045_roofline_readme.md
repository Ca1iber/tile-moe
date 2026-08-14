# v045 Roofline notes

- Declared schedule work and bytes stay at 206,158,430,208 FLOPs and 2,466,250,752 bytes, AI=83.591837 FLOP/B; only CTA order changes.
- Paired mcTracer Step1 medians are 1.880576 ms (v043) and 1.826304 ms (v045), giving 109.6252 and 112.8829 TFLOP/s.
- Equivalent declared traffic rises from 1311.43 to 1350.41 GB/s. This does not claim higher physical HBM bandwidth; it reflects better cache/locality execution at fixed declared bytes.
- mcProfiler replay waves match exactly (6912/6912). L2 hit rate rises 54.5411% -> 61.3541% (+6.813 points), DNOC read requests fall 19.215%, and measured global read bytes fall 2.2695 -> 1.9004 GB (-16.262%). These measured bytes are diagnostic dynamic traffic and are not substituted for the declared-algorithm bytes on the primary Roofline axis.
