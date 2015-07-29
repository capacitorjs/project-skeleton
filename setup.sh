#!/usr/bin/env bash

echo -n "Enter project name: "
read PROJECT
echo -n "Enter project description: "
read -e DESCRIPTION
echo -n "Enter github username: "
read GITHUB_USER

substitute() {
  VARIABLE_NAME=$1
  REPLACEMENT=$2

  sed -i "s/${VARIABLE_NAME}/${REPLACEMENT}/g" package.json
}

gen_readme() {
  printf "#${PROJECT}\n\n${DESCRIPTION}\n" > README.md
}

substitute 'PROJECT' ${PROJECT}
substitute 'DESCRIPTION' "${DESCRIPTION}"
substitute 'GITHUB_USER' ${GITHUB_USER}
gen_readme

rm setup.sh
