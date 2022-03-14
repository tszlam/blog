#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'
git branch -m main

# if you are deploying to https://<USERNAME>.github.io
git push -f https://github.com/tszlam/tszlam.github.io.git main

cd -