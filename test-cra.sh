#!/usr/bin/env bash

set -x
set -e

# ==================================================
# Meant to be run by the test-cra workflow on GitHub
# ==================================================

mkdir /code

# Argument 1: name of folder to create
# Arugment 2: path or name of CRA template
function npm_test() {
  cd /code
  npx create-react-app $1 --template $2
  cd $1
  npm run lint
  npm run test -- --watchAll=false
  npm run build
}

# Argument 1: name of folder to create
# Arugment 2: path or name of CRA template
function yarn_test() {
  cd /code
  yarn create react-app $1 --template $2
  cd $1
  yarn lint
  yarn test --watchAll=false
  yarn build
}

yarn_test yarn-test "file:/github-workspace"
npm_test npm-test "file:/github-workspace"

yarn_test pkg-yarn-test arishi-typescript
npm_test pkg-npm-test arishi-typescript
