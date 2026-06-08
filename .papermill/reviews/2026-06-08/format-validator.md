# Format Validator

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-08
**Lens executed directly by the area chair via an independent from-scratch build.**

## Verdict
Clean reproducible build. No critical or major formatting findings. The only outstanding production item is the known, deliberately deferred IEEEtran two-column reformat at submission.

## Build procedure
The Makefile `pdf` target runs the full `pdflatex; bibtex; pdflatex; pdflatex` sequence (despite the brief's caution; the committed Makefile recipe is complete). To be safe the sequence was run manually:
```
pdflatex paper; bibtex paper; pdflatex paper; pdflatex paper
```
All four invocations returned exit 0.

## Build results
- LaTeX errors (`! ...`): 0.
- Undefined references/citations: 0 (`LC_ALL=C grep -ai undefined paper.log` = 0 lines total, including 0 font-shape lines).
- Citation/reference LaTeX warnings: 0.
- Overfull boxes: 0.
- Underfull boxes: 0.
- BibTeX warnings: 0 (the blg "warning$" token is a statistics-dump function name, not a warning; real count is 0).
- Rerun-needed flag: none (paper.out unchanged on the final pass; no "Rerun to get cross-references right").
- Page count: 30 pages (up from 29 at the 2026-06-04 review; the increase is fully explained by the 2026-06-08 revision commit 7d2467d, which added the weak-supervision and C2-symmetry-lineage paragraphs and the Nowik discussion, plus the figure rendering).

## Figures and labels
- Both external TikZ figures resolve: image/series_generic.tex (series diagram) and image/dep_model.tex (tikz-bayesnet dependency DAG, using \const/\obs/\latent/\plate/\edge with the preamble's \btheta/\v macros). The inline confounding-graph TikZ (Figure for Example 13) compiles.
- All cross-references resolve (0 undefined), so all figure/table/theorem/equation labels are satisfied.

## Document class / venue formatting
- Current class: 11pt single-column `article` with `plainnat` (author-year) bibliography style.
- For the primary target (IEEE Transactions on Reliability), the IEEEtran two-column class with numeric citations is required. This reformat is correctly deferred to submission: author-year is preferable for the arXiv preprint and the sibling concept-DOI citation cascade. This is a KNOWN pending action recorded in state.md, not a defect.
- For the rank-2 backup (Lifetime Data Analysis), Springer svjour3 needs only light changes.

## Tree hygiene
- Per the brief, the rebuilt paper.pdf and the aux/bbl/log artifacts were restored to their pre-build state after verification; `git status` is clean. The build artifacts (paper.pdf, *.aux, *.bbl, *.blg, *.log, *.out) are gitignored and re-buildable via `make`.

## Findings
None blocking. Production state is submission-clean modulo the deliberately deferred IEEEtran reformat.
