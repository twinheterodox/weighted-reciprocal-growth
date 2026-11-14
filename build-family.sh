#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
mkdir -p output/pdf tmp/latex
for pass in 1 2 3; do
  pdflatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -output-directory=tmp/latex paper/weighted-family-growth.tex \
    > "tmp/latex/family-pass-$pass.txt"
done
cp tmp/latex/weighted-family-growth.pdf output/pdf/weighted-family-growth.pdf
printf '%s\n' 'Built output/pdf/weighted-family-growth.pdf'
