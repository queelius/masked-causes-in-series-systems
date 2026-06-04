# Citation Verifier 2026-05-27

## Overview

Bibliography contains 38 entries (per state.md inventory; refs.bib has 28 visible primary entries through line 399 plus auto-counts companions). All citations resolve under `paper.bbl`. Build is clean (0 warnings, 0 undefined references).

## Major

### M1. `towell2026exponential-series` and `towell2026weibull-series` are cited but the entries are `@unpublished` with `note = {In preparation}`

**Location**: `refs.bib` line 380 to 399 (three `@unpublished` companion entries). Cited in Remark 4 (line 842) and Remark 6 (line 1686). For arXiv this is acceptable. For Technometrics, forward citations to work "in preparation" are typically asked to be replaced with a more concrete pointer (arXiv ID, or "Towell, in preparation, manuscript available on request"). At least one of the three (`towell2026exponential-series`) is cited for a specific quantitative result ($I(K; \mathcal{C}_w) = \ln(m/w)$) that should not be forward-cited to unpublished work without a more solid pointer.

**Suggestion**: when these companion papers are deposited on arXiv (per the Pending User Actions in state.md), update the bib entries to include the arXiv ID. Until then, consider proving the closed-form $I(K; \mathcal{C}_w) = \ln(m/w)$ in two lines within Remark 4 instead of forward-citing it.

**Confidence**: 80

## Minor

### m1. The `towell2025` software packages cite GitHub URLs without DOIs

**Location**: `refs.bib` line 205 to 227 (`flexhaz`, `serieshaz`, `maskedhaz`). For long-term reproducibility, Zenodo DOIs are preferable to plain GitHub URLs. The `wei.series.md.c1.c2.c3` package (line 188 to 195) already has a Zenodo DOI; the other three do not. The state file's Pending User Actions already plans a Zenodo deposit, so this naturally resolves once those DOIs are minted.

**Confidence**: 85

### m2. `Amma-2001` BibTeX key is misleading

**Location**: `refs.bib` line 77 to 87. The author is Sarhan, the journal is Reliability Engineering & System Safety, and the year is 2001. The key `Amma-2001` is presumably a typo of "Ammar" (Sarhan's first name). Cosmetic but worth fixing for clarity; key `Sarhan-2001` would be more conventional.

**Confidence**: 90

### m3. Heitjan and Rubin (1991) is not cited despite being the formal parent of C1, C2, C3

**Location**: throughout. The paper cites Little and Rubin (2002, book) for "ignorability" (line 877 to 884) but not Heitjan and Rubin (1991, Annals of Statistics 19, 2244 to 2253) for coarsening at random, which is the precise technical antecedent. State file already flagged this as an optional addition. Worth adding for Technometrics where the missing-data audience overlaps.

**Confidence**: 75

### m4. Reiser-Flehinger-Conn (1995) Technometrics paper is missing

**Location**: not currently cited. Reiser, Flehinger, and Conn (1995), Technometrics 37, 285 to 292, is on the same topic and published in the primary target venue. State.md notes the 1995 piece is "subsumed by the Flehinger and Sarhan entries already present" but for a Technometrics submission specifically, citing a prior Technometrics paper by the same authorial lineage is a courtesy worth observing.

**Confidence**: 72

### m5. The hyperref URL in Code Availability uses `\allowbreak` mid-URL

**Location**: line 1878, `\url{https://github.com/queelius/\allowbreak masked-causes-in-series-systems}`. The `\allowbreak` is fine functionally (breaks the URL across lines) but some PDF readers and bibliography parsers (especially arXiv's URL-extraction) can choke on the embedded macro. Consider `\sloppy` around the bibliography environment instead, or use the URL without the break and accept a slight overfull.

**Confidence**: 55

## Strengths

- All 38 bibliography entries are cited; no orphans.
- All cited keys resolve in `paper.bbl`; zero undefined-reference warnings in `paper.log`.
- DOIs are present on the great majority of entries.
- The Meilijson (1981) DOI is now correct (`10.2307/3213058`), per the March round 2 fix.
- Companion R packages are explicitly listed with version numbers and URLs.
