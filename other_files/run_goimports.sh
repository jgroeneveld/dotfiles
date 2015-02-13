#!/bin/sh

# http://marcesher.com/2014/03/30/intellij-idea-run-goimports-on-file-save/

if [[ $1 == *.go ]]
then
  goimports -w $1
fi
