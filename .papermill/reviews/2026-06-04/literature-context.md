# Literature Context Packet

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-04

**Capability note**: The two literature-scout sub-agents could not be spawned in this run (Task tool and web tools were unreachable). This packet is assembled by the area chair from the in-repo prior-art survey (prior-art-survey-2026-02-18.md), the state file's prior_art block (last_survey 2026-06-03), the bibliography, and domain knowledge. It is NOT a fresh web survey. A confirmatory WebSearch pass for 2024-2026 work is the one outstanding literature action (see synthesis "freshness" item).

## Masked-cause reliability lineage (load-bearing, all cited)

- miyakawa1984 -- incomplete competing-risks data; origin of the symmetry-style conditions in reliability (IEEE TR).
- Usher-1988 (Usher-Hodgson) -- first MLE for masked series-system data, Exponential (IEEE TR).
- Lin-1993 (Lin-Usher-Guess) -- exact MLE, masked data (IEEE TR).
- guess1991 (Guess-Hodgson-Usher) -- conditions hold in many diagnostic scenarios; component reliability under partial info.
- sarhan2001 -- reliability estimation from masked system life data (RESS).
- mukhopadhyay2006 -- general MLE dropping symmetry, jointly estimating masking (JSPI). Used as the estimate-the-masking foil (cancel-vs-estimate axis). ADDED-CONTRAST 2026-06-03.
- flehinger1998 / flehinger2002 -- two-stage and fully parametric cause-specific hazard treatment; flehinger2002 (Lifetime Data Analysis) is the closest published precursor. Novelty boundary explicit and airtight.
- lin1996 / kuo2000 -- Bayesian (Gibbs) alternatives.

## Coarsening lineage (cited)

- heitjan1991 (Heitjan-Rubin) -- coined coarsening at random (Ann. Statist.). Parent of C1/C2/C3.
- gill1997coarsening (Gill-van der Laan-Robins) -- full CAR characterization (Springer LNS 123). The text now correctly states C1/C2/C3 are a SUFFICIENT specialization of CAR (not "exactly").
- little2002statistical -- ignorability/MAR textbook framing.

## Competing-risks identifiability (cited)

- tsiatis1975 -- nonidentifiability without independence.
- heckman1989 (Heckman-Honore) -- regressors restore identifiability (the paper takes the complementary parametric route).
- meilijson1981 -- incidence-matrix rank in the autopsy model; structural ancestor of the augmented candidate-set matrix. The rank-based identifiability theory generalizes this from autopsy to masked data.
- lindqvist2023 -- phase-type identifiability; complementary to Theorem 8.

## Recent (2004-2024, cited)

- craiu2004 (EM, piecewise-constant), craiu2006 (dependent competing risks).
- liu2021 -- Archimedean-copula Bayesian nonparametric, dependent masked competing risks (RESS).
- monterrubio2024 -- review of statistical + ML competing-risks methods (Biometrical J.).
- mitra2020 -- interval-censored competing risks under missing causes (J. Appl. Stat.). ADDED 2026-06-03 next to the interval-censored contribution.
- yu2012 -- random partition masking, the principal symmetry-free (C2-relaxing) alternative (AISM). ADDED 2026-06-03 in the C2-relaxation discussion.

## i.n.i.d. asymptotics (cited, NEW)

- hoadley1971 -- canonical i.n.i.d. MLE consistency + asymptotic normality (Ann. Math. Statist. 42(6):1977-1991). ADDED 2026-06-03 to support Remark 8. Correct and standard for the claim.
- vandervaart1998asymptotic, wald1949, lehmann1998theory -- i.i.d. asymptotics package for Appendix A.1-A.3.

## Boundary assessment (on available evidence)

The lineage is complete on the load-bearing axis and venue-appropriate (most in IEEE TR or Lifetime Data Analysis). The closest precursor (flehinger2002) is bounded on two axes (masking cancels vs estimated; explicit rank identifiability vs implicit). No work known to the area chair (2015-2026) does distribution-agnostic hazard-level masked-series likelihood or an explicit augmented-candidate-set rank criterion. The freshness verdict is "intact on available evidence" pending a confirmatory WebSearch pass at submission.
