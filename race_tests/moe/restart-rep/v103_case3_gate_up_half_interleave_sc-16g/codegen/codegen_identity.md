# Generated-code identity and resources

- Case1 SHA-256: `1cd46135b729c20e3fbeac77bf119cf73d56992b9f195f0323261c0e42495c63`, byte-identical to v102.
- Case2 SHA-256: `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`, byte-identical to v102.
- Case3 SHA-256: `4fb6d59af31a50218a5772971cb04b1460dfb3a2646dcd3eb517ebc9e332d789`, intentionally changed.
- Case3 generated order: `Gate0 -> Up0 -> Gate1 -> Up1` for even and odd K tiles.
- Case3 kernels: prepack `78 MT / 11 ST / 6 waves`; Step1 `226 MT / 42 ST / 2 waves`; Step2 `222 MT / 54 ST / 2 waves`.
- Generated device sources contain zero `memcpy_async` and zero `barrier_arrive_and_wait` sites.
