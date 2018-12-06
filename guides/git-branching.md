Most common workflows:
1. Create a branch that tracks the current branch and jump onto it `git checkout -B my-feature --track`
2. Delete a branch `git branch -D my-feature`
3. Get rid of working state, so files staged or unstaged `git reset --hard`
4. Easiest workflow to revert a commit and check first `git revert <commit> --no-commit`
5. Generally useful to cherry pick commits `git cherry-pick <commit> --no-commit`
6. Rebase interactively in text editor `git rebase -i master`
7. Diffing between unstaged changes and staged changes (or latest commit) `git diff`
8. Diffing between staged changes and latest commit `git diff --staged`
9. Diffing between this branch and the tracked branch `git diff master`
