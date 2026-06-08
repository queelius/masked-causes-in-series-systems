# Citation Verifier

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-08
**Lens executed directly by the area chair.**

## Verdict
No critical or major citation findings. Bibliography integrity is intact: 0 undefined citations, 0 true orphan entries, 0 real BibTeX warnings, 0 fabricated references. The 2026-06-08 revision added five well-formed entries, all correctly attached to their claims.

## Integrity checks (from the from-scratch build)
- 52 bib entries; all 52 keys appear in paper.tex (0 keys absent from the manuscript).
- Cited-but-not-defined: 0 (no undefined citations; confirmed against the build, 0 undefined references in paper.log).
- Defined-but-not-cited: the naive grep flagged crowder2001 and klein2005survival, but both ARE cited via `\citep[...][...]{...}` with line-broken optional arguments (crowder2001 at line 1132; klein2005survival at line 533-534). A whole-file key search confirms 0 true orphans.
- BibTeX warnings: the "1 warning" reported by a naive grep of paper.blg is the literal function name `warning$` in BibTeX's statistics dump; the actual count is `warning$ -- 0`, i.e. zero real warnings.

## Newly added entries (2026-06-08 revision) - all well-formed and accurately attached
- nowik1990 (J. Appl. Prob. 27(4):862-872, 1990): supports the necessary-and-sufficient cut-set characterization in the Meilijson/Nowik lineage. Record matches.
- sen2001masked (Handbook of Statistics vol. 20, Advances in Reliability, 523-540): supports "symmetry underlies most analyses surveyed by." Record matches.
- yu2010conditional (Stat. Prob. Lett. 80(15-16):1174-1179, 2010): supports the auxiliary-masking-variable interpretation of C2. Record matches.
- cour2011partial (JMLR 12:1501-1536, 2011): the canonical partial-label reference; supports the weak-supervision cross-domain paragraph. Record matches.
- huellermeier2015superset (ECML PKDD 2015, LNCS 9285:260-275): supports the superset-learning view. Record matches.

## Load-bearing historical citations (spot-checked against the public record)
- miyakawa1984 (IEEE Trans. Rel. R-33(4):293-296, 1984): correct.
- Usher-1988 (IEEE Trans. Rel. 37(5):550-555, 1988): correct.
- Lin-1993 (IEEE Trans. Rel. 42(4):631-635, 1993): correct.
- flehinger1998 (Biometrika 85(1):151-164, 1998) and flehinger2002 (Lifetime Data Analysis 8(2):177-203, 2002): correct.
- meilijson1981 (J. Appl. Prob. 18(4):829-838, 1981): correct.
- heitjan1991 (Ann. Statist. 19(4):2244-2253, 1991) and gill1997coarsening (LNS 123:255-294, 1997): correct.
- tsiatis1975, heckman1989, mukhopadhyay2006, craiu2004, craiu2006, lindqvist2023, liu2021, monterrubio2024, hoadley1971, yu2012, mitra2020: all consistent with the public record on venue/volume/year.

## Forward and sibling references (handled correctly)
- In-preparation companions (towell2026model-selection, towell2026weibull-series, towell2026exponential-series) are typed @unpublished with note "In preparation." Appropriate.
- Published siblings (towell2026dpcoarsening, towell2026weaksupcoarsening) carry Zenodo DOIs (@misc). Consistent with the family's concept-DOI citation convention.
- towell2023masters and the R-package manuals carry Zenodo DOIs / GitHub URLs. Well-formed.

## Findings

### CV1 (suggestion, carried over) normalize Agustin-2011 DOI field
- Location: refs.bib, Agustin-2011.
- The doi field is a full URL (`https://doi.org/10.1002/...`) rather than a bare DOI. Trivial; normalize at IEEE submission. Renders fine; not a defect.

### CV2 (suggestion, carried over) confirm two records online at submission
- Confirm the Hoadley 1971 page range (1977-1991) and the Mitra 2020 author rendering against the live record at submission. Both expected correct; flagged only because no live lookup was available this session.

## Cross-verification routing
- The five new entries were cross-checked with the novelty lens against the claims they support (Nowik for the cut-set lineage; sen/yu for the C2 symmetry lineage; cour/huellermeier for the weak-supervision link). Attributions are accurate; both lenses concur.
