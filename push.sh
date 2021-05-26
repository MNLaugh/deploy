#!/bin/bash
m="commit description"

git add .
git commit -m "$m"
git push origin main

if [[ $1 ]]; then
  v=$1
  a="v$v"
  git add .
  git commit -m "$m"
  git tag -a "$a" -m "Version $v"
  git push origin "$a"
fi
