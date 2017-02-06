#!/bin/sh
INPUT=$1
OUTPUT="$1.enc"
echo "ENCRYPT $INPUT TO $OUTPUT..."
openssl enc -aes-256-cbc -in $INPUT -out $OUTPUT
echo "FINISHED."
