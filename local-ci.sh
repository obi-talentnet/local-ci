#!/bin/sh
# setup script



# @TODO copy from local ci-repo in future
# split by node vs php project
# cp tn-hooks/pre-commit.sample  .git/hooks/pre-commit
cp https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit.sample .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
echo "Local CI has been successfully installed !"
