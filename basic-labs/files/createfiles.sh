#!/bin/bash

DIR="."
FILES=50
LINES=100

mkdir -p "$DIR"

for i in $(seq 1 $FILES); do
  for j in $(seq 1 $LINES); do
    echo "[$(date)] INFO $(uuidgen) random_value=$RANDOM"
  done > "$DIR/file_$i.log"
done
