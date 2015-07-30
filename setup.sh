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

  sed -i "s/${VARIABLE_NAME}/${REPLACEMENT}/g" package.json
}

substitute 'PROJECT' ${PROJECT}
substitute 'DESCRIPTION' "${DESCRIPTION}"
substitute 'AUTHOR' "${AUTHOR}"
substitute 'GITHUB_USER' ${GITHUB_USER}

# generate readme
printf "#${PROJECT}\n\n${DESCRIPTION}\n" > README.md

# setup project git
rm -rf .git
git init
git remote add origin "https://github.com/${GITHUB_USER}/${PROJECT}.git"

rm setup.sh
