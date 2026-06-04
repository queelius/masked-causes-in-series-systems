# Citation Verifier Report (area-chair-conducted)

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-04
**Scope**: Verify the four citations added in the 2026-06-03 fix are real and accurately cited; confirm bibliography integrity is preserved; confirm prior optional adds (Yu 2012, Mitra 2020) were integrated.

**Capability note**: Live WebSearch was not available in this run (sub-agent spawning and web tools were unreachable). Bibliographic accuracy below is assessed from the structured bib fields plus domain knowledge of these well-known works, and against the build. Items I cannot confirm from the live record are flagged as "verify online at submission."

## Verdict

Bibliography integrity is clean and unchanged by the edits: 0 undefined citations, 0 BibTeX warnings, 0 true orphans in a from-scratch build. All four added entries are well-formed, and each is attached to a claim it correctly supports. No fabricated or hallucinated reference detected. The two prior optional adds (Yu 2012, Mitra 2020) are now integrated at the right locations.

## Integrity (from-scratch build)

- bibtex paper: 0 warnings (paper.blg clean).
- 29-page build: 0 undefined citations, 0 undefined references.
- No duplicate \label; rem:inid-asymptotics defined once.

## The four added citations

1. **hoadley1971** -- Bruce Hoadley, "Asymptotic Properties of Maximum Likelihood Estimators for the Independent Not Identically Distributed Case", Ann. Math. Statist. 42(6):1977-1991, 1971, DOI 10.1214/aoms/1177693066.
   - REAL + ACCURATE (high confidence from domain knowledge). This is the canonical i.n.i.d. MLE reference; title, journal, volume(6), pages, and DOI match the known record. It establishes i.n.i.d. MLE consistency and asymptotic normality, which is exactly the claim it is attached to in Remark 8. Appropriate and sufficient support. One nuance (see logic-checker F1): "triangular-array (Lindeberg)" is a slightly loose gloss on Hoadley's specific conditions, but defensible; not a citation error.

2. **yu2012** -- Yu, Wong, Qin, Ren, "Random Partition Masking Model for Censored and Masked Competing Risks Data", Ann. Inst. Statist. Math. 64(1):69-85, 2012, DOI 10.1007/s10463-010-0303-8.
   - REAL + ACCURATE (high confidence). Correctly cited at l. 1838 as the principal symmetry-free alternative (random partition masking) that replaces the C2 assumption. Fields consistent with the known AISM record. This integrates the prior C1 optional add at exactly the right place (Discussion "Relaxing C2").

3. **mitra2020** -- Mitra, Das, Das (Soumya Roy), "Analysis of Interval-Censored Competing Risks Data under Missing Causes", J. Appl. Stat. 47(3):439-459, 2020, DOI 10.1080/02664763.2019.1645096.
   - REAL + ACCURATE (medium-high confidence). Correctly cited at l. 609 as the nearest neighbor to the interval-censored contribution, with the right distinction (their cause is fully missing; here it is a candidate set that narrows but need not resolve). Integrates the prior C2 optional add. Verify the exact third-author rendering ("Das, Soumya Roy" vs "Roy, Soumya") online at submission; harmless either way for plainnat.

4. **mukhopadhyay2006** -- Chiranjit Mukhopadhyay, "Maximum Likelihood Analysis of Masked Series System Lifetime Data", JSPI 136(3):803-838, 2006, DOI 10.1016/j.jspi.2004.07.014.
   - REAL + ACCURATE (high confidence). The cancel-vs-estimate contrast at l. 168-174 ("drops the symmetry assumption and jointly estimates masking probabilities; that approach carries the masking probabilities as estimands, whereas under C1-C2-C3 the masking factor cancels") is an accurate characterization and correctly draws the same novelty axis against Mukhopadhyay that the paper draws against Flehinger. This resolves the prior N2 minor.

## Findings

### CV1 (Trivial, carried). Non-standard DOI field on Agustin-2011.
- doi = {https://doi.org/10.1002/...} (full URL) rather than bare DOI. Harmless under plainnat; normalize at IEEE submission. Not a content issue.

### CV2 (Suggestion, verify online). Confirm Hoadley/Mitra exact records at submission.
- Given no live web access this run, do a one-pass online confirmation of the Hoadley 1971 page range and the Mitra 2020 author rendering before camera-ready. Both are expected correct.

## Items checked and fine
- No defined-but-uncited keys beyond the two natbib two-optional-argument cases (klein2005survival, crowder2001), both legitimately cited.
- All self/companion entries consistent; the Zenodo-DOI siblings (towell2026dpcoarsening, towell2026weaksupcoarsening) are the ones Appendix A says cite back to it.
- No fabricated references.
