# Format Validator 2026-05-27

## Build verification

- Compile cleanly: `paper.log` reports 0 LaTeX warnings, 0 BibTeX warnings (`paper.blg`).
- Total pages: 24 (confirmed via `pdfinfo paper.pdf`).
- All `\ref` and `\eqref` resolved; no `??` markers.
- No overfull or underfull \hbox warnings.
- Bibliography style `plainnat` matches `natbib` package.

## Major

None.

## Minor

### m1. No appendix environment for the missing regularity material

If the Critical finding from the logic checker (add Appendix A "Regularity for the masked-data MLE") is accepted, the document needs an `\appendix` block before `\bibliographystyle`. Currently there is no such block. The fix is one line plus the new appendix content.

**Confidence**: 85

### m2. `\input{image/series_generic.tex}` and `\input{image/dep_model.tex}`

**Location**: line 266 and line 597. These are external TikZ files. They exist in `image/` (confirmed by file listing) and render correctly in the produced PDF. No issue. Worth confirming as part of any arXiv upload that the `image/` directory is included.

**Confidence**: 95 (no action needed; reminder only)

### m3. Venue formatting: paper currently uses 11pt `article` class with 1-inch margins

Technometrics submissions are typically formatted using the Taylor & Francis `interact` class for initial submission, or a generic `article` class. The current 11pt single-spaced format is acceptable for arXiv but Technometrics will require reformatting at acceptance. Not actionable now; flag for the arXiv-to-Technometrics handoff.

**Confidence**: 80

### m4. `\date{May 2026}` is set explicitly

**Location**: line 52. State.md notes this was updated during the 2026-05-27 polish pass. Confirmed current. No action.

**Confidence**: 95

### m5. `bayesnet` TikZ library loaded but figure source files (`image/series_generic.tex`, `image/dep_model.tex`) are external

The `bayesnet` library is only needed in `dep_model.tex`. The series figure does not require it. Slight package-loading overhead but no functional issue. Cosmetic.

**Confidence**: 50

## Strengths

- Build pipeline is clean: zero warnings, zero overfull boxes, zero undefined references.
- Figures, tables, equations, and theorems all resolve symbolically (no hardcoded numbers in cross-references).
- The Acknowledgments, Data Availability, and Code Availability sections were correctly added in the 2026-05-27 polish pass.
- Hyperref colors are set; `natbib` is loaded before `hyperref` (correct order, fixed in March round 1).
- `CITATION.cff` is present at the repository root for citation export.
- The paper uses semantic theorem environments (theorem, lemma, proposition, corollary, condition, definition, remark) with consistent style.
