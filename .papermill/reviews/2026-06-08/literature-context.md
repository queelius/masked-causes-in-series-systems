# Literature Context Packet

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-08
**Compiled directly by the area chair** from the in-repo prior-art survey (prior-art-survey-2026-02-18.md), the bibliography, and area-chair training knowledge to January 2026. Live web search was unavailable this session; the freshness verdict is flagged accordingly.

## The masked-cause series-system lineage (the paper's home literature)
- Foundational MLE: Usher-Hodgson 1988 (first MLE for masked series-system data, Exponential), Lin-Usher-Guess 1993 (exact MLE), Miyakawa 1984 (incomplete competing-risks data). All in IEEE Transactions on Reliability, the primary target venue.
- Conditions / symmetry: the C1/C2/C3 conditions trace to Miyakawa 1984 and Usher-Hodgson 1988; the C2 symmetry assumption's lineage is surveyed by Sen-Basu-Banerjee 2001 and given a probabilistic (auxiliary-variable) reading by Yu-Qin-Wang 2010.
- Closest parametric precursor: Flehinger-Reiser-Yashchin 2002 (Lifetime Data Analysis), a fully parametric cause-specific hazard treatment in which masking probabilities are estimated nuisance parameters. The paper bounds itself against this on two axes (cancel-vs-estimate; explicit-vs-implicit identifiability).
- General MLE without symmetry: Mukhopadhyay 2006 (jointly estimates masking probabilities). Correctly contrasted on the cancel-vs-estimate axis.
- Bayesian alternatives: Lin-Usher-Guess 1996, Kuo-Yang 2000 (Gibbs for Exp/Weibull).
- EM / dependent masking: Craiu-Duchesne 2004 (EM), Craiu-Reiser 2006 (dependent competing risks), Liu et al. 2021 (nonparametric Bayes with dependent masked risks).
- Interval-censored neighbor: Mitra-Das-Das 2020 (interval-censored competing risks with fully missing cause); correctly distinguished (their cause is fully missing vs. a narrowing candidate set here).
- Relaxation target: Yu et al. 2012 (random-partition masking, the principal symmetry-free alternative).

## Identifiability lineage (the paper's main-advance literature)
- Tsiatis 1975: non-identifiability of competing risks without independence (the motivation for the parametric route).
- Heckman-Honore 1989: regressors can restore identifiability nonparametrically (the complementary route).
- Meilijson 1981: identifiability via incidence-matrix rank in the autopsy (exact-cause) model; the structural ancestor of the candidate-set matrix.
- Nowik 1990: necessary-and-sufficient cut-set characterization in the autopsy model (added in the 2026-06-08 revision; tightens the lineage).
- Lindqvist 2023: phase-type identifiability for competing risks; complementary.
- The paper's Theorem 8 is positioned as the masked-data instance of the Meilijson/Nowik rank criterion, and Theorem 9 (confounding-graph partial identifiability) is noted to have no autopsy-model counterpart.

## Coarsening-at-random (the missing-data foundation)
- Heitjan-Rubin 1991 (coined CAR) and Gill-van der Laan-Robins 1997 (full characterization). C1/C2/C3 are framed as a sufficient specialization of CAR (the earlier "exactly CAR" over-claim was softened in a prior round). Little-Rubin 2002 supplies the ignorability framing.

## Cross-domain (the broader program, scoped out of this paper)
- Cour-Sapp-Taskar 2011 (partial labels) and Huellermeier-Cheng 2015 (superset learning): the weak-supervision analog of candidate sets. The paper honestly defers the unifying cross-domain claim to the separate towell2026weaksupcoarsening and states it is not argued here.

## Recent surveys
- Monterrubio-Gomez et al. 2024 (Biometrical Journal): comprehensive review of statistical and ML competing-risks methods; situates the parametric cause-specific approach the paper adopts. This is the most recent external methods citation and anchors the currency claim.

## Novelty-boundary assessment
On the load-bearing axis, the lineage is complete and venue-appropriate. No work known to the area chair (through January 2026) does distribution-agnostic hazard-level masked-series likelihood OR an explicit augmented-candidate-set rank criterion with a confounding-graph partial-identifiability decomposition. The boundary against the closest precursor (Flehinger 2002) is drawn on two axes and reinforced against Mukhopadhyay 2006.

## Freshness limitation
No live web search was available this session. The freshness verdict (boundary intact) rests on the 2026-02-18 in-repo survey plus training knowledge to January 2026. Recommended action at submission: one confirmatory web-search pass for 2024-2026 work on masked/missing-cause competing-risks identifiability and coarsening-at-random in reliability.
