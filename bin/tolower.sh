#!/bin/sh
for f in *;
do
	echo "renaming $f.."
	mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`";
done
