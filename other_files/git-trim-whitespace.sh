#!/bin/sh
set -e

# removes whitespaces from lines containing only whitespaces on staged files

git diff --cached --name-only | xargs sed -i.bak -E -e 's/^ *$//' 
git diff --cached --name-only | xargs -I{} rm {}.bak
