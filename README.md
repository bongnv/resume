# Resume

## Prerequisites

- [Node.js](https://nodejs.org/) installed
- `npx` available (comes with npm)

## Files

- `resume.md` — Resume content in Markdown format
- `style.css` — Custom CSS for PDF styling (justified text, 15mm margins)
- `resume.pdf` — Generated PDF output

## Generate PDF

```bash
npx md-to-pdf --stylesheet style.css resume.md
```

This generates `resume.pdf` (A4, 2 pages) in the current directory.
