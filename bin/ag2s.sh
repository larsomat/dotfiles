#!/bin/sh
echo Searching for \'$1\' and open results in Sublime Text..
ag -l $1 | xargs open -a "Sublime Text"
