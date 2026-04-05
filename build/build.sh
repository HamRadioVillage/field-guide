#!/usr/bin/env bash
set -e

mkdir -p pages/generated

for f in pages/content/*.md; do
  base=$(basename "$f" .md)

  pandoc "$f" \
    --from=gfm \
    --to=latex \
    -o "pages/generated/${base}.tex"

  echo "Converted $f → pages/generated/${base}.tex"
done#!/usr/bin/env bash
set -e

INPUT="foxhunting.md"
OUTPUT="foxhuntingTex.tex"

pandoc "$INPUT" \
  --from=gfm \
  --to=latex \
  --standalone \
  -o "$OUTPUT"

echo "Created $OUTPUT from $INPUT"
