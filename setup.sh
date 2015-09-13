#!/usr/bin/env bash

PROJECT=${PWD##*/}

echo -n "Enter project description: "
read -e DESCRIPTION
echo -n "Enter full name: "
read AUTHOR
echo -n "Enter github username: "
read GITHUB_USER

substitute() {
  VARIABLE_NAME=$1
  REPLACEMENT=$2

  sed -i'' -e "s/${VARIABLE_NAME}/${REPLACEMENT}/g" package.json
  sed -i'' -e "s/${VARIABLE_NAME}/${REPLACEMENT}/g" gulpfile.js
}

substitute 'PROJECT' ${PROJECT}
substitute 'DESCRIPTION' "${DESCRIPTION}"
substitute 'AUTHOR' "${AUTHOR}"
substitute 'GITHUB_USER' ${GITHUB_USER}

# generate readme
printf "# ${PROJECT}\n\n${DESCRIPTION}\n" > README.md

# prepare source
mkdir src
touch src/${PROJECT}.js

# setup project git
rm -rf .git
git init
git remote add origin "https://github.com/${GITHUB_USER}/${PROJECT}.git"

rm setup.sh
