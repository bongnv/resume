# Resume

## Prerequisites

- [Node.js](https://nodejs.org/) installed
- `npx` available (comes with npm)

## Files

- `resume.md` — Resume content in Markdown format
- `style.css` — Custom CSS for PDF styling (left aligned text, 15mm margins)
- `generate.sh` — Bash script for PDF generation
- `resume_<Mon>_<YYYY>.pdf` — Generated PDF output

## Generate PDF

Run from the repository root:

```bash
./generate.sh resume.md
```

This generates a PDF named after the input file and current month and year, such as
`resume_Nov_2026.pdf`, in the repository root. The layout target is two A4 pages;
check the generated PDF after content or styling changes.

Use a Markdown input in the repository root. Generation may download dependencies
through `npx` and overwrites an existing PDF with the same output name.
