To patch and apply a patch:
1. Use `git format-patch -6` to make 6 patches for the previous 6 commits
2. To squash these into one patch `git format-patch -6 --stdout > patch-ddmmyyy.patch`
3. To apply a patch `git am the-patch.patch`
