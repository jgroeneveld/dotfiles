#!/bin/sh

# http://marcesher.com/2014/03/30/intellij-idea-run-goimports-on-file-save/

if [[ $1 == *.go ]]
then
  goimports -w $1
  # make 2>&1 > /dev/null &
fi

if [[ $1 == *.ego ]]
then
  # make 2>&1 > /dev/null &
fi
