#!/bin/sh
# setup script



read -p "Is this for a PHP project or JS? (choices: js | php) "  email
echo
if [$email = "js" ]; then
    wget https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit-js.sample 
else
    wget https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit-php.sample 
fi




wget https://raw.githubusercontent.com/obi-talentnet/local-ci/setupJs/tn-hooks/pre-commit-js.sample 

mv pre-commit.sample  .git/hooks/pre-commit 
chmod +x .git/hooks/pre-commit
echo "Local CI has been successfully installed !"
