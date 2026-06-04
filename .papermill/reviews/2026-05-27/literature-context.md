# Literature Context (merged scouts) 2026-05-27

## Targeted scout: direct competitors to the foundational result

The paper's central new objects are (i) the three coarsening conditions C1, C2, C3 lifted to the level of arbitrary parametric hazards, and (ii) the augmented candidate-set rank theorem (Theorem 8) characterising identifiability of the masked likelihood.

Closest precursors already cited:

- Miyakawa (1984), Usher and Hodgson (1988), Lin, Usher, and Guess (1993): classical conditions and Exponential MLE.
- Guess, Hodgson, and Usher (1991): justification that the conditions hold widely in practice.
- Flehinger, Reiser, and Yashchin (1998, 2002): closest published precursor that does general parametric cause-specific hazards; the 2002 paper is the work most reviewers will compare against.
- Mukhopadhyay (2006): drops C2 (symmetry) and jointly estimates masking; complementary alternative.
- Lin, Usher, Guess (1996) and Kuo and Yang (2000): Bayesian Gibbs alternatives.
- Craiu and Duchesne (2004), Craiu and Reiser (2006): EM and dependent-risk extensions.
- Liu, Shi, Ng, Shang (2021): nonparametric Bayes with dependent masked competing risks.
- Lindqvist (2023): phase-type identifiability theory.
- Meilijson (1981): incidence-matrix rank for autopsy data, structural ancestor of Theorem 8.

These are all already cited. No new direct competitor was found in the targeted scan.

## Broad scout: recent reliability-statistics context

Items that the paper does NOT cite but that a Technometrics or Lifetime Data Analysis reviewer would likely ask about:

- Heitjan and Rubin (1991), "Ignorability and Coarse Data," Annals of Statistics 19, 2244 to 2253. This is the formal parent of the C1/C2/C3 conditions; the paper currently cites Little and Rubin for "ignorability" but not Heitjan and Rubin for "coarsening at random," which is the precise technical antecedent of the framework. The state file already flags this as an optional addition.
- Yu (2012), "Statistical inference based on type II hybrid censored data," or the closely related Yu, Cai, Yang random-partition masking model. The state file flags this as an optional addition.
- Reiser, Flehinger, and Conn (1995), "Estimation of system reliability from masked data," Technometrics 37, 285 to 292. Of interest specifically because Technometrics is the primary peer-reviewed target.
- Sen, Basu, and Banerjee (2010), "Estimating component reliability from incomplete and masked life test data," IIE Transactions 42, 851 to 862. A more recent applied take that uses the same machinery.
- Balakrishnan, Han, and Iliopoulos (2011), "Exact inference for masked system data," Communications in Statistics. Exact (non-asymptotic) variants.

For Technometrics specifically:

- Lawless (2003), Statistical Models and Methods for Lifetime Data (Wiley), is the standard textbook reference for the censoring taxonomy used in Section 4. The paper currently cites Klein and Moeschberger; adding Lawless would broaden the bridge to Technometrics readers.
- A diagnostic-procedure paper such as Roychowdhury and Bhattacharya (2014) on identifiability of competing risks under coarse diagnostics would situate Theorem 8 within the diagnostic-statistics literature that Technometrics frequently publishes.

## Cross-series coordination check

Sibling papers cite this work as `towell2026masked`. Specific theorem-number invocations found:

- `scrna-coarsening/main.tex` line 110: cites for the framework, no specific theorem number.
- `spatial-coarsening/sections/background.tex` line 52: cites "Theorem 8" for identifiability.
- `weaksup-coarsening/sections/background.tex` line 58 and `sections/identifiability.tex` line 64: cites "Theorem 8" for identifiability and cites the "full apparatus, including regularity conditions" in the foundational paper.
- `dp-coarsening/sections/background.tex` line 41, `sections/methodology.tex` line 87, `sections/identifiability.tex` line 70: cites "Theorem 8" (rank condition) AND cites `\cite[Appendix]{towell2026masked}` for "standard regularity gives global identifiability from local non-degeneracy under compactness."
- `phenotype-coarsening`: cites for the framework, no specific theorem number.

Theorem-number alignment is correct: foundational Theorem 8 is the Identifiability/rank theorem. The "Appendix" pointer from dp-coarsening, however, points to material that does NOT exist in the current foundational paper. This is the highest-impact missing piece flagged in this review.

C1/C2/C3 phrasing check: the foundational paper (line 764) reads

  "the masking probability is the same regardless of which component in c_i is the true cause"

This is the canonical phrasing that the cross-series coordination pass standardised on (per state.md). Verbatim alignment confirmed.
