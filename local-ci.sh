#!/bin/sh
# setup script

read -p "Is this for a PHP or JS application? (choices: js | php) "  choice
echo
if [ $choice = "js" ]; then
    wget https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit-js.sample 
    mv pre-commit-js.sample  .git/hooks/pre-commit 
elif [ $choice = "php" ]; then
    wget https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit-php.sample 
    mv pre-commit-php.sample  .git/hooks/pre-commit 
fi

chmod +x .git/hooks/pre-commit
echo "Local CI has been successfully installed !"
