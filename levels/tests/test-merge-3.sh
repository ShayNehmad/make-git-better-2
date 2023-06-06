#!/bin/bash

source $(dirname $0)/tests-lib.sh

level_branch=twee-enfamish-stropharia
level_title=merge-3

test_log "testing level $level_title branch $level_branch"

git checkout $level_branch
git clean -f -d

# PUT TEST CODE HERE, like git add + git commit
git merge origin/gemstone-introrsely-gouts || true  # will conflict
git checkout --theirs runme.py
git add runme.py
git commit -m "Fixed conflict by taking theirs."

git push > push_result 2>&1

check_results
