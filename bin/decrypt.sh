#!/bin/sh
INPUT=$1
OUTPUT=${INPUT%.*}
echo "DECRYPT $INPUT TO $OUTPUT..."
openssl enc -aes-256-cbc -d -in $INPUT -out $OUTPUT
echo "FINISHED."
