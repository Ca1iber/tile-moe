# Generated-code identity and resources

最终命名清理前后 generated device C++ 哈希逐 Case 完全一致：

- Case1: `b6093c647cfc415429d031b721abda257dc02b55145bf9fadeaeacf60dd77fe2`
- Case2: `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c`
- Case3: `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2`

资源：Case1 Step2 为 204 MT / 52 ST registers、2 waves/PEU（v102 为 204/60/2）；Cases2/3 Step2 为 220/52/2（v102 为 222/54/2）。三 Case 均无 private allocation、无 `memcpy_async`，MMA site 数保持 8。
