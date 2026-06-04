# Citation Verifier Report

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-03
**Scope**: citation accuracy, missing references, bibliography integrity. refs.bib has 44 entries; 42 distinct keys are cited.

## Verdict

Bibliography integrity is clean. Zero undefined citations and zero true orphans (confirmed against the build and by direct key matching, accounting for the two-optional-argument \citep[pre][post]{key} form). Citation attributions are accurate where I could verify them. The CAR foundation (Heitjan-Rubin 1991, Gill-van der Laan-Robins 1997) and the Flehinger line (1998, 2002) are present and correctly used, closing the gaps flagged in prior rounds. Two optional missing references would deflect predictable referee questions; one DOI field is non-standard but harmless. No blocking citation issue.

## Integrity checks (all pass)

- Cited-but-undefined: none. Every \cite key resolves to a refs.bib entry; consistent with the build's "0 undefined citations" over 27 pages.
- Defined-but-uncited: none. The two entries that a naive scan flags (crowder2001, klein2005survival) are in fact cited via the natbib two-optional-argument form: klein2005survival at paper.tex l. 490 (\citep[see][for background on censored data in survival analysis]{klein2005survival}) and crowder2001 at l. 1071 (\citep[see also][for textbook treatments]{crowder2001}). Both legitimate. The state file's "0 orphan" claim is correct.
- BibTeX log (paper.blg): 0 warnings.
- Bibliography style: plainnat (author-year), appropriate for the arXiv preprint and the sibling-citation cascade; switching to IEEEtran numeric is the documented submission-time step.

## Attribution accuracy (spot-checked against the manuscript's use)

- Heitjan-Rubin (1991) and Gill-van der Laan-Robins (1997): correctly cited as the origin and full characterization of coarsening at random, in both Related Work and the Section 5.3 ignorability paragraph. Volume/pages/DOI fields match the known records (Ann. Statist. 19(4):2244-2253, DOI 10.1214/aos/1176348396; Springer LNS 123:255-294, DOI 10.1007/978-1-4684-6316-3_14). Usage is faithful: the paper invokes CAR as the parent and C1/C2/C3 as a specialization.
- Flehinger-Reiser-Yashchin (1998 Biometrika; 2002 Lifetime Data Analysis): present with correct volume/number/pages/DOI. The 2002 entry is used as the closest precursor and the boundary description (masking probabilities as nuisance estimands; implicit identifiability) is an accurate characterization of that paper. Good.
- Meilijson (1981): DOI 10.2307/3213058 (corrected in a prior round from ...3059). Correct. Used accurately as the autopsy-model incidence-rank ancestor of the candidate-set matrix.
- Usher-Hodgson (1988), Lin-Usher-Guess (1993), Miyakawa (1984), Guess et al. (1991), Sarhan (2001): all IEEE TR / JSPI / RESS entries with correct fields; sarhan2001 key correctly renamed from the misleading Amma-2001. Lin-1993 author order (Lin, Usher, Guess) is correct (fixed in a prior round).
- Mukhopadhyay (2006), JSPI 136(3):803-838, DOI 10.1016/j.jspi.2004.07.014: correct; used accurately as a general MLE that drops symmetry and estimates masking.
- van der Vaart (1998), Wald (1949), Lehmann-Casella (1998): correct; the Appendix cites specific results (Theorems 5.7 and 5.39) consistent with the van der Vaart text.

## Findings

### C1 (Minor, optional add). Yu et al. (2012), random-partition masking, is missing where C2 relaxation is discussed.
- Location: Discussion Section 8.2 ("Relaxing C2"). The paper discusses asymmetric masking and points to craiu2006 for dependent masking, but omits Yu, Wong, Qin, Ren (2012, AISM 64:69-85, DOI 10.1007/s10463-010-0303-8), which is the principal published model that replaces the C2 symmetry assumption (random partition masking). A referee from this subfield will expect it exactly here.
- Fix: one sentence in 8.2 citing yu2012 as the main symmetry-free alternative. Add the entry to refs.bib (full data available in the in-repo prior-art survey).
- Confidence: 85.

### C2 (Minor, optional add). Mitra et al. (2020), interval-censored competing risks with missing causes, is the nearest neighbor to the paper's interval-censored contribution.
- Location: the interval-censored row of Table 1 and Theorem 7, and contribution (ii) (four-censoring-type unification). The paper derives the interval-censored masked contribution without citing any prior treatment of interval-censored masked/missing-cause data. Mitra, Das, Das (2020, J. Appl. Stat. 47(3):439-459) is the closest published parametric treatment.
- Fix: a one-line acknowledgment near the interval-censored discussion, distinguishing missing-cause (Mitra) from candidate-set masking (this paper). Strengthens the novelty claim for contribution (ii) rather than weakening it.
- Confidence: 78.

### C3 (Minor, optional). Sarhan (2004) EM-without-C2 is a closer exact-failure competitor than the state file credits.
- The state file says Sarhan 2004 is "subsumed by Sarhan 2001," but the 2004 JSPI paper uses EM and drops the symmetry assumption, making it a distinct and arguably closer competitor to the paper's exact-failure case. Verify authorship before adding (the in-repo survey flags the author list as unconfirmed). Optional; lower priority than C1.
- Confidence: 65.

### C4 (Trivial). Non-standard DOI field formatting on one entry.
- Agustin-2011 stores doi = {https://doi.org/10.1002/...} (full URL in the DOI field) rather than the bare DOI. Harmless under plainnat; some IEEE production tools prefer the bare DOI. Normalize at submission. Not a content issue.
- Confidence: 90.

## Items checked and fine (no action)
- All companion/self-citation entries (towell2023masters with Zenodo DOI, towell2023weibull, the 2025 software packages, the 2026 in-prep and Zenodo-preprint siblings) are present and internally consistent; the towell2026dpcoarsening and towell2026weaksupcoarsening entries carry real Zenodo DOIs and are correctly the ones the Appendix says cite back to it.
- No evidence of fabricated or hallucinated references; every entry I checked corresponds to a real, correctly-attributed work.
- The "In preparation" companion entries (model-selection, weibull-series, exponential-series) are honestly marked; if any acquires a preprint DOI before submission, update the note (the Remark on info-theoretic C2 leans on towell2026exponential-series for a deferred proof).
