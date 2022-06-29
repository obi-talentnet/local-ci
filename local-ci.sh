#!/bin/sh
# setup script



# @TODO copy from local ci-repo in future
# split by node vs php project
cp tn-hooks/pre-commit.sample  .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
