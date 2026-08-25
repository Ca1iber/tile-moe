# Generated-code identity and resources

- Case1 v110 SHA256: `bcaea2c2c9ec00a7f0572711c43734e5a400b827965eea85ccbc1c7f60f2da14`，与全局去谓词前驱 v109 完全一致。
- Case2 v110/v108 SHA256: `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c`。
- Case3 v110/v108 SHA256: `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2`。

Case1 Step2 从 v108 的 204 MT / 52 ST registers 降至 202/52，仍为 2 waves/PEU，无 private allocation。三 Case 均无 `memcpy_async`，MMA site 数保持 8。
