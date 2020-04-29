#!/usr/bin/env sh
set -e
npm run build
cd ./dist
git init
git add -A
git commit -m 'deploy with vue-modal'
git push -f https://github.com/sundlee/vue-modal.git master:gh-pages
cd -
