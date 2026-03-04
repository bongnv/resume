#!/bin/bash
filename="resume_$(date +%b_%Y).pdf"
npx md-to-pdf --stylesheet style.css resume.md
mv resume.pdf "$filename"
echo "Generated: $filename"
