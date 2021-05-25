#!/bin/bash
v=$1
a="v$v"

git add .
git commit -m "test"
git tag -a "$a" -m "Version $v"
git push origin "$a"