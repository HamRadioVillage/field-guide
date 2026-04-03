#!/usr/bin/env bash
set -e

mkdir -p output

cat \
% list sections here
  sections/01_intro.md \
  sections/02_protocol.md \
  sections/03_signal_reports.md \
  sections/04_foxhunting.md \
  sections/05_logbook.md \
  > output/combined.md

pandoc output/combined.md \
  --from=gfm \
  --to=latex \
  --standalone \
  --template=template.tex \
  --output=output/body.tex
