# Format Validator Report

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-03
**Scope**: build verification, label/cross-reference resolution, figure/table integrity, venue formatting readiness for IEEE Transactions on Reliability.

## Verdict

The document builds cleanly and reproducibly from source. After standard convergence there are zero LaTeX warnings, zero undefined references, zero overfull/underfull boxes, and zero real BibTeX warnings, at 27 pages. All cross-references resolve. The only formatting item that is a true to-do is the documented venue reformat: the working draft is 11pt single-column article with plainnat author-year, while IEEE TR requires the IEEEtran two-column class with numeric citations. That is a mechanical submission-time step, correctly deferred. No blocking build issue.

## Build verification (independent, from a clean copy)

I rebuilt from scratch in a temp copy with the full sequence (pdflatex -> bibtex -> pdflatex x N):
- pdflatex pass 1: exit 0; bibtex: exit 0; pdflatex passes 2-4: exit 0.
- Final: 27 pages.
- LaTeX warnings: 0 (after convergence). Undefined references/citations: 0. Overfull boxes: 0. Underfull boxes: 0. Multiply-defined labels: 0. Real BibTeX warnings: 0.

Two nuances, both benign:
1. A fully COLD build (no pre-existing .aux) emits one transient "LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right." on the third pdflatex pass, because inserting the .bbl after bibtex shifts the bibliography label numbering. It clears on the next pass. The repo's committed build is clean because it runs the post-bibtex passes against a warm .aux. Net: the standard cold incantation is pdflatex, bibtex, pdflatex, pdflatex, pdflatex (one more than minimal); the repo Makefile's pdf target already runs pdflatex + conditional bibtex + pdflatex + pdflatex, which converges on a warm tree. Recommendation: nothing required; if you want a cold build to be warning-free in one shot, add a fourth pdflatex to the Makefile, or use latexmk. (The task brief's note that "make pdf runs pdflatex only" does not match the current Makefile, which runs the full bibtex sequence; either way the build is fine.)
2. A grep for "warning" in paper.blg matches the line "warning$ -- 0" in BibTeX's builtin-function-call statistics. That is a function-name in the stats table, not an actual warning. Real BibTeX warning count is 0.

## Cross-reference and label integrity

- All \ref / \eqref / \citep resolve; 0 undefined. Theorem numbering is contiguous and correct: Theorems 1-6 (system + cause distributions), 7 (combined likelihood), 8 (identifiability), 9 (partial identifiability), 10 (log-likelihood), confirmed against paper.aux \newlabel entries. Note that the state file's "Formal Results Inventory" labels the identifiability result as Theorem 8 and partial identifiability as Theorem 9, which matches the compiled output; any sibling paper citing "the singleton-candidate-set identifiability theorem" should reference Theorem 8 (thm:identifiability) and "the partial identifiability / super-component theorem" as Theorem 9 (thm:partial-identifiability). These labels are stable.
- Conditions (C1-C2-C3), Definitions, Remarks, Lemma A (Wald bridge), Example (hierarchical diagnostics), and the appendix subsections all carry resolved labels.

## Figure and table integrity

- Figures: series-system schematic (input image/series_generic.tex), dependency DAG (input image/dep_model.tex), and the inline TikZ confounding graph (Example, Figure confounding-graph). All three have captions and resolved labels. The two \input figures depend on files in image/; confirm they ship in the submission tarball (they are in the repo). The TikZ confounding graph uses fit/positioning libraries that are loaded in the preamble; renders without error.
- Tables: notation summary, likelihood-contributions, masked-data example, distributions/hazard specifications. All have captions and labels; the Gamma$^*$ footnote marker now has its matching $^*$ in the caption (a prior-round fix). booktabs rules used throughout. No table overflows (0 overfull boxes).

## Venue formatting readiness (IEEE Transactions on Reliability)

- Current: documentclass[11pt]{article}, geometry 1in margins, natbib + plainnat (author-year), hyperref with colorlinks.
- Required at submission for IEEE TR: IEEEtran (two-column journal), numeric citation style. This is the documented and correct plan: keep author-year for the arXiv preprint and the sibling-citation cascade, switch to IEEEtran numeric at journal submission. The single-column 27pp will compress substantially in two-column; the state file's 8-14 journal-page estimate is plausible.
- hyperref colorlinks=true with blue links is fine for the preprint; IEEE production typically wants black or no colored links in the camera-ready, a trivial toggle.
- For the backup (Lifetime Data Analysis), the move is to Springer svjour3 with light changes; author-year survives, so the reformat is lighter than for TR.

## Findings

### V1 (Trivial, optional). Cold-build label warning needs one extra pdflatex pass.
- A from-scratch build emits a transient label-changed warning that clears on an additional pass. Add a fourth pdflatex to the Makefile pdf target, or switch to latexmk -pdf, for a one-shot clean cold build. Not a defect in the document.
- Confidence: 90.

### V2 (Trivial, submission-time). Reformat to IEEEtran two-column + numeric citations.
- Mechanical, correctly deferred to submission per the state file's Pending User Actions. Listed here only for completeness; not actionable now.
- Confidence: 95.

### V3 (Trivial). Confirm image/*.tex figure inputs are included in the submission upload.
- The two \input figures pull from image/; ensure they (and any fonts/styles) are in the arXiv/journal tarball. They are present in the repo.
- Confidence: 88.

## Items checked and fine (no action)
- No undefined references over 27 pages (matches the build).
- No overfull/underfull boxes (a prior round fixed the last 43pt overfull hbox in the appendix).
- Author metadata (name, mailto, ORCID link) present and correct on the title block.
- Abstract, Acknowledgments, Data Availability, Code Availability, and Appendix all present and labeled.
