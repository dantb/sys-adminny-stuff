#!/bin/bash

CURRENT_BRANCH="$(git branch | grep \* | cut -d ' ' -f2)"
TRACKED_BRANCH="$(git rev-parse --abbrev-ref --symbolic-full-name @{u})"

echo "Current branch is: ${CURRENT_BRANCH}"
echo "Tracked branch is: ${TRACKED_BRANCH}"

git ch ${TRACKED_BRANCH}
TRACKED_BRANCH_ORIGIN="$(git rev-parse --abbrev-ref --symbolic-full-name @{u})"

# Only pull while on tracked branch if it tracks a remote branch (e.g. origin/master)
if grep "origin" <<< ${TRACKED_BRANCH_ORIGIN}; then
  git pull
fi

git ch ${CURRENT_BRANCH} && git rebase -i ${TRACKED_BRANCH}

echo "${CURRENT_BRANCH} is up to date with ${TRACKED_BRANCH}."

# Uncomment out below if using arcanist, to see corresponding differential revision (and potentially update it)

# REVISION_ID="$(arc which | grep -o 'D[0-9]\{5\}')"
#
# if [ -z "$REVISION_ID" ]; then
#   echo "No diff exists for this feature branch."
# else
#   echo "Corresponding revision is: ${REVISION_ID}. We will not update this diff."
# fi
