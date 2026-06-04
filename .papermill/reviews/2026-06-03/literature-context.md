# Literature Context Packet

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework (Towell)
**Compiled**: 2026-06-03
**Primary target**: IEEE Transactions on Reliability (backup: Lifetime Data Analysis)
**Sources merged**: in-repo prior-art survey (prior-art-survey-2026-02-18.md, 32 verified references), state-file prior_art block, and independent reading of refs.bib (44 entries) against the manuscript claims.

## A. The masked-cause series-system lineage (direct ancestors)

The problem of estimating component reliability from series-system data with a masked failure cause has a settled lineage, almost all of it in the primary target venue (IEEE TR) or its backup (Lifetime Data Analysis):

- **Miyakawa (1984), IEEE TR**: introduced the incomplete-competing-risks conditions that are the seed of C1/C2/C3. Cited.
- **Usher and Hodgson (1988), IEEE TR**: first MLE formulation for masked series-system data, Exponential. Cited.
- **Lin, Usher, Guess (1993), IEEE TR**: closed-form Exponential MLE. Cited.
- **Guess, Hodgson, Usher (1991), JSPI**: established that the symmetry conditions hold in many industrial diagnostic scenarios. Cited.
- **Sarhan (2001), RESS**: reliability estimation from masked data. Cited (key renamed from Amma-2001 in the 2026-06-03 pipeline pass).
- **Mukhopadhyay (2006), JSPI**: general MLE that DROPS the C2 symmetry assumption and jointly estimates masking probabilities. Cited; this is the natural foil for the paper's "cancel rather than estimate" claim.

## B. The Flehinger-Reiser-Yashchin line (the closest precursor, novelty boundary)

- **Flehinger, Reiser, Yashchin (1998), Biometrika**: two-stage framework for masked competing risks. Cited.
- **Flehinger, Reiser, Yashchin (2002), Lifetime Data Analysis**: full parametric cause-specific hazard treatment. This is the single most direct precursor and the one the novelty boundary must clear. Cited; it appeared in the rank-2 backup venue, so the contribution boundary is maximally legible to that audience.

Boundary as stated in the paper (Related Work, paper.tex ll. 153-167): (1) Flehinger 2002 model the diagnostic mechanism through stage-specific masking probabilities P(c | k, t) that enter the likelihood as nuisance parameters to be estimated alongside theta, whereas C1/C2/C3 identify structural assumptions under which the masking factor separates and drops from the score; (2) Flehinger 2002 leave identifiability implicit in the parametric Weibull setting, whereas this paper gives an explicit distribution-agnostic rank condition on the augmented candidate-set matrix plus a confounding-graph partial-identifiability theorem with no counterpart in Flehinger.

Assessment of the boundary: REAL and FAIRLY STATED. Flehinger 2002 genuinely carry the masking probabilities as estimands; their identifiability discussion is indeed setting-specific. See novelty-assessor and citation-verifier reports for the detailed adjudication and the one wording caution.

## C. Coarsening-at-random foundation (the general-statistics parent)

- **Heitjan and Rubin (1991), Ann. Statist.**: coined coarsening at random (CAR). Added 2026-06-03; cited as the formal parent of C1/C2/C3 in Related Work and in the ignorability paragraph (Section 5.3).
- **Gill, van der Laan, Robins (1997), Springer LNS 123**: full characterization of CAR (precisely when the coarsening mechanism factors out of the likelihood). Added 2026-06-03; cited alongside Heitjan-Rubin.
- **Little and Rubin (2002)**: MAR / ignorability textbook treatment. Cited.

Assessment: the CAR positioning is correct in direction (C1/C2/C3 are a sufficient specialization of CAR for candidate-set coarsening). One subtlety flagged by the logic-checker: the paper says C1/C2/C3 "are exactly the CAR conditions specialized to" this setting; "exactly" slightly overstates, since CAR is the weaker necessary-and-sufficient factorization condition and C1/C2/C3 are a (very natural) sufficient set. A one-word softening removes any reviewer objection.

## D. Identifiability ancestry

- **Meilijson (1981), J. Appl. Prob.**: algebraic identifiability via incidence-matrix rank in the autopsy model (exact cause observed). The structural ancestor of the candidate-set matrix; the paper explicitly frames Ctilde as the masked-data analog. Cited (DOI corrected to 10.2307/3213058 in a prior round).
- **Tsiatis (1975), PNAS** and **Heckman-Honore (1989), Biometrika**: classical non-identifiability without independence, and the covariate route to restoring it. Both cited and correctly positioned (the paper takes the complementary parametric route).
- **Lindqvist (2023), Lifetime Data Analysis**: identifiability via phase-type models; cited as complementary.
- **Crowder (2001), Classical Competing Risks**: monograph; cited.

Assessment: the Meilijson framing is the right intellectual anchor and is now properly credited (it was missing in the March round-1 review and was added). The autopsy-to-masked generalization is a legitimate and clearly stated increment.

## E. Bayesian and dependent-masking alternatives (correctly positioned as out of scope / contrast)

- **Lin, Usher, Guess (1996), IEEE TR** and **Kuo, Yang (2000), Stat. Prob. Lett.**: Gibbs-sampling Bayesian alternatives. Cited; kuo2000 is also invoked for the Bayesian-regularization remediation strategy.
- **Craiu, Duchesne (2004), Biometrika** (EM, piecewise-constant); **Craiu, Reiser (2006), Lifetime Data Analysis** (dependent risks); **Liu et al. (2021), RESS** (nonparametric Bayes, Archimedean copulas, dependent). All cited and positioned as relaxing independence or symmetry.
- **Monterrubio-Gomez et al. (2024), Biometrical Journal**: recent comprehensive review; cited to situate the cause-specific parametric route.

## F. Gaps and optional adds (none blocking for IEEE TR / LDA)

From the in-repo survey, the following are uncited but non-blocking for the primary/backup path:

- **Yu et al. (2012), AISM**: random-partition masking, the principal published *relaxation of C2*. This is the most defensible optional add: the Discussion (Section 8.2) explicitly discusses relaxing C2 but does not point to the one paper that did it. A one-sentence citation there would pre-empt a referee.
- **Sarhan (2004), JSPI**: EM for masked Weibull series *without* C2. The state file says it is "subsumed by Sarhan 2001," but it is methodologically distinct (EM, no symmetry) and is arguably a closer competitor than Sarhan 2001 to the exact-failure case. Optional but worth a line; verify authorship before adding.
- **Mitra et al. (2020), J. Appl. Stat.**: parametric MLE for interval-censored competing risks with missing causes, the closest prior work to the paper's interval-censored row (Table 1). Optional add for the interval-censored discussion.
- **Reiser-Flehinger-Conn (1995), Technometrics** and **Lawless (2003)**: courtesy adds ONLY if retargeting to Technometrics.

None of these change the contribution. The two with the most referee-deflection value are Yu (2012) and Sarhan (2004), both attached to the C2-relaxation discussion.

## G. Bottom line for the review

The bibliography is venue-appropriate and the lineage is complete on the load-bearing axis (Miyakawa -> Usher-Hodgson -> Lin -> Flehinger -> CAR -> Meilijson). The novelty boundary against Flehinger 2002 is real. The only literature-side actions worth taking before submission are optional one-line adds in the Discussion (Yu 2012, optionally Sarhan 2004), and a one-word softening of "exactly the CAR conditions."
