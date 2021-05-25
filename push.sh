#!/bin/bash
$v = "1.0.4"

git add .
git commit -m "test"
git tag -a v$v -m "Version $v"
git push origin v$v