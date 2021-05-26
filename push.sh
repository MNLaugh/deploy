#!/bin/bash
m="commit description"

# global push in main
git add .
git commit -m "$m"
git push origin main

# create new tag if an argument is set
if [[ $1 ]]; then
  v=$1
  a="v$v"
  git add .
  git commit -m "$m"
  git tag -a "$a" -m "Version $v"
  git push origin "$a"
fi
