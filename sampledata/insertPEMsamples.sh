#!/bin/bash

# This script inserts PEM samples from file into the draft
# Intended to be called by the makefile


FILE=$1
DIR=$2

REGEX_MATCH="^!!(.*)$"
cat $FILE | sed -r "s|^\!\!([-a-zA-Z0-9_.]*)$|cat $DIR/\1|e"