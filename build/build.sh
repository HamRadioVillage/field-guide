#!/usr/bin/env bash
set -e

mkdir -p output

cat \
  sections/checklist.md \
  sections/frequencies.md \
  sections/phonetic alphabet table.csv \
  sections/comms protocol.md \
  sections/foxhunting.md \
  sections/antennas-directional.md \
  sections/antennas-omnidirectional.md \
  sections/basic radio math.md \
  sections/contact log.md \
  > output/combined.md

pandoc output/combined.md \
  --from=gfm \
  --to=latex \
  --standalone \
  --template=template.tex \
  --output=output/body.tex
