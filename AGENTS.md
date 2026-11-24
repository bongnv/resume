This repository contains Bong Nguyen's resume in Markdown, with shared CSS and a Bash script for PDF generation.

## Architecture

* `resume.md` is the editable resume source; generated PDFs are not source documents.
* `style.css` controls typography, spacing, print margins, and page break behaviour.
* `generate.sh` invokes `md-to-pdf` through `npx` and names the output using the input basename and current month and year.

## Coding Conventions

* Preserve the existing heading hierarchy, employer metadata format, reverse chronological order, and concise achievement bullets.
* Preserve job titles, dates, technologies, and metrics unless the user or a reliable source supports a correction.
* Distinguish personal contributions from team outcomes and completed work from proposals or expected impact.
* Do not invent metrics or turn incomplete milestones into completed achievements; ask when evidence is missing.
* Treat the resume as public facing. Do not copy private APEX notes, internal links, customer details, or confidential project information into it without explicit authorization.
* Use common industry acronyms such as AWS, GCP, API, and MRR without expansion when clear to the intended audience. Use plain descriptions for unfamiliar internal systems rather than unexplained internal acronyms.

## Testing

* For generator edits, run the syntax check in the Command Reference and verify argument handling without overwriting existing output.
* For content or CSS edits, generate and visually inspect the PDF when rendering tools are available. Check clipping, spacing, links, page count, and headings separated from their employer details or bullets.

## Command Reference

Run these commands from the repository root. PDF generation requires Node.js and `npx`; it may download dependencies.
The CSS also imports a Google Fonts stylesheet, so font rendering can depend on network access.

| Command | Purpose |
| --- | --- |
| `./generate.sh resume.md` | Generate a dated PDF in the repository root, such as `resume_Nov_2026.pdf`. |

* Generation can overwrite an existing PDF with the same name; check for an existing output before running it.
