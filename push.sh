#!/bin/bash
v = "1.0.3"
a = "v$v"

git add .
git commit -m "test"
git tag -a "$a" -m "Version $v"
git push origin "$a"