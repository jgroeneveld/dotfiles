#!/bin/bash

# wraps a $command like make and prepends $regex matching stderr lines with $prefix
# ./wrap_command.sh "prefix" "make"

prefix=$1
command=$2
regex='^(.+):(\d+)';

filter() {
  while read -r line; do
    if echo $line | grep -qE $regex; then
      echo "$prefix$line";
    else
      echo $line;
    fi
  done
}

# apply filter only to stderr, leave rest alone
{ $command 2>&1 1>&3 | filter 1>&2; } 3>&1
