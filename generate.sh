#!/bin/bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <markdown-file>" >&2
  exit 1
fi

input="$1"

if [ ! -f "$input" ]; then
  echo "Error: input file '$input' not found" >&2
  echo "Usage: $0 <markdown-file>" >&2
  exit 1
fi

base="$(basename "${input%.*}")"
filename="${base}_$(date +%b_%Y).pdf"

npx md-to-pdf --stylesheet style.css "$input"
mv "${base}.pdf" "$filename"
echo "Generated: $filename"
