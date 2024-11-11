#!/bin/bash

# step 1: name of the remote repo. Enter a SINGLE WORD or separate with hyphens
echo "What name do you want to give your remote repo?"
read REPO_NAME

echo "Enter a repo description: "
read DESCRIPTION

# step 2: the local project folder path
echo "What is the absolute path to your local project directory?"
read PROJECT_PATH

echo "What is your GitHub username?"
read USERNAME

# step 3: go to path
cd "$PROJECT_PATH"

# step 4: initialise the repo locally, create blank README, add and commit
git init
touch README.md
git add .
git commit -m 'initial commit - setup with .sh script'

# step 5: use GitHub API to create the repository (requires authentication with token)
echo "Enter your GitHub Personal Access Token (PAT): "
read -s TOKEN
curl -u "$USERNAME:$TOKEN" https://api.github.com/user/repos -d "{\"name\":\"$REPO_NAME\", \"description\":\"$DESCRIPTION\"}"

# step 6: check if the remote already exists, add or update the remote GitHub repo and push
git remote get-url origin > /dev/null 2>&1
if [ $? -ne 0 ]; then
    git remote add origin https://github.com/$USERNAME/$REPO_NAME.git
else
    git remote set-url origin https://github.com/$USERNAME/$REPO_NAME.git
fi

git push --set-upstream origin master

# step 7: change to your project's root directory.
cd "$PROJECT_PATH"

echo "Done. Go to https://github.com/$USERNAME/$REPO_NAME to see."
echo "*** You're now in your project root. ***"

