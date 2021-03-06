#!/usr/bin/env bash
printf "\n\n######## build & deploy GitHub Pages from a fork ########\n"
printf "\n## Warning: Overwrites everything in your fork's gh-pages branch.\n\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${DIR}/..
pwd

npm install
npm run build
npm run deploy-fork
