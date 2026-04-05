#!/usr/bin/env bash
set -e

INPUT="foxhunting.md"
OUTPUT="foxhuntingTex.tex"

pandoc "$INPUT" \
  --from=gfm \
  --to=latex \
  --standalone \
  -o "$OUTPUT"

echo "Created $OUTPUT from $INPUT"
