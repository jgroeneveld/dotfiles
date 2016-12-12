#!/bin/sh
set -e

# removes whitespaces from lines containing only whitespaces on staged files 
# that are new or modified (not deleted)
git diff --cached --name-status | grep "^M\|^A" | cut -f 2 | xargs sed -i.bak -E -e 's/^ *$//' 
git diff --cached --name-status | grep "^M\|^A" | cut -f 2 | xargs -I{} rm {}.bak
