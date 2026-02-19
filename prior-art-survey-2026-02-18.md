# Prior Art Survey: Masked Causes of Failure in Series Systems
**Paper:** "Masked Causes of Failure in Series Systems: A Likelihood Framework" by Alexander Towell
**Survey Date:** 2026-02-18
**Surveyor:** Literature Survey Agent (autonomous)
**Previous Survey:** 2026-02-17 (identified craiu2004, lindqvist2023, liu2021, monterrubio2024)

---

## Search Methodology

### Queries Executed

1. "masked cause of failure series system maximum likelihood parametric competing risks 2000 2025"
2. "Reiser Flehinger masked competing risks series system Weibull EM algorithm MLE"
3. "Flehinger Reiser Yashchin 1998 survival with competing risks masked causes Biometrika"
4. "Craiu Reiser 2006 dependent competing risks masked causes EM algorithm Lifetime Data Analysis"
5. "identifiability competing risks masked causes parametric series system 2010 2025"
6. "Crowder identifiability crisis competing risks Scandinavian Journal Statistics"
7. "Bayesian masked series system competing risks MCMC Gibbs sampling reliability 2005 2020"
8. "Kuo Yang 2000 Bayesian reliability modeling masked system lifetime data Statistics Probability Letters"
9. "Mukhopadhyay Basu 1997 Bayesian analysis incomplete time cause of failure Journal Statistical Planning Inference"
10. "Lin Guess Usher 1996 Bayes estimation component-reliability masked system IEEE Transactions Reliability"
11. "accelerated life testing masked causes failure series system reliability 2010 2024"
12. "random partition masking model censored masked competing risks Annals Institute Statistical Mathematics"
13. "interval censored competing risks masked missing causes parametric MLE 2015 2024"
14. "Guttman Lin Reiser 1995 dependent masking system life data analysis Bayesian Lifetime Data Analysis"
15. "Bayesian analysis masked causes competing risks cure fraction Sankhya 2023 2024"
16. "multiple imputation masked competing risks machine learning JCSS 2022 2023"
17. "analysis of masked failure data under competing risks chapter 19 handbook statistics Basu Ghosh 2001"
18. "Flehinger Reiser Yashchin 2002 parametric modeling competing risks masked failure causes Lifetime Data Analysis"
19. "Bayesian analysis masked series system lifetime data family of lifetime distributions 2013 IJSAEM"
20. "Sarhan 2004 maximum likelihood masked series system lifetime data JSPI"
21. "Sarhan 2003 estimations parameters Pareto reliability model presence masked data RESS"

### Coverage Assessment

The search was focused on five core topic areas:
1. Parametric MLE for masked series systems (direct competitors and complements to the paper)
2. EM algorithm approaches for masked competing risks
3. Bayesian approaches (Gibbs, MCMC, nonparametric Bayes)
4. Identifiability theory for competing risks under masking
5. Extensions: ALT, interval censoring, dependent masking, and recent (2020-2025) work

---

## Survey Results

### Summary Statistics

| Category | Count |
|----------|-------|
| Foundational | 8 |
| Competing (direct methodological alternatives) | 10 |
| Complementary | 9 |
| Tangential | 5 |
| **Total verified references** | **32** |

---

### Foundational

Papers that either introduce the C1-C2-C3 framework, established the masked-data likelihood problem, or address identifiability from a foundation-building perspective.

- **[Miyakawa, 1984]** "Analysis of Incomplete Data in Competing Risks Model" -- IEEE Transactions on Reliability. *Already in refs.bib.* Introduced C1-C2-C3 conditions; the origin of the framework this paper generalizes.

- **[Usher and Hodgson, 1988]** "Maximum likelihood analysis of component reliability using masked system life-test data" -- IEEE Transactions on Reliability. *Already in refs.bib.* First MLE formulation under C1-C2-C3 for exponential series systems.

- **[Lin et al., 1993]** "Exact maximum likelihood estimation using masked system data" -- IEEE Transactions on Reliability. *Already in refs.bib.* Closed-form MLE for exponential components.

- **[Guess et al., 1991]** "Estimating system and component reliabilities under partial information on cause of failure" -- Journal of Statistical Planning and Inference. *Already in refs.bib.* Established that C1-C2-C3 hold in many industrial diagnostic settings.

- **[Tsiatis, 1975]** "A Nonidentifiability Aspect of the Problem of Competing Risks" -- Proceedings of the National Academy of Sciences. *Already in refs.bib.* Classic nonidentifiability result without independence assumption.

- **[Flehinger, Reiser, and Yashchin, 1998]** "Survival with competing risks and masked causes of failures" -- Biometrika 85(1), 151-164. *NOT in refs.bib.* Stage-1/stage-2 framework for masked competing risks with parametric Weibull inference; widely cited precursor to craiu2004.

- **[Flehinger, Reiser, and Yashchin, 2002]** "Parametric Modeling for Survival with Competing Risks and Masked Failure Causes" -- Lifetime Data Analysis 8, 177-203. *NOT in refs.bib.* Full parametric cause-specific hazard treatment with stage-1 and stage-2 information; the most direct methodological precursor to the present paper's framework.

- **[Crowder, 2001]** "Classical Competing Risks" -- Chapman and Hall/CRC, ISBN 9781584881759. *NOT in refs.bib.* The standard monograph on the classical competing risks problem; covers identifiability, parametric models, and the Tsiatis nonidentifiability result in detail.

---

### Competing

Papers that propose direct alternatives to the C1-C2-C3 parametric likelihood (different estimation methodology for the same or closely related problem).

- **[Sarhan, 2001]** "Reliability estimations of components from masked system life data" -- Reliability Engineering & System Safety 74(1), 107-113. *Already in refs.bib.* Bayesian and MLE estimation for exponential series; predates craiu2004 but uses simplified masking model.

- **[Lin, Usher, and Guess, 1996]** "Bayes estimation of component-reliability from masked system-life data" -- IEEE Transactions on Reliability 45(2), 233-237. *NOT in refs.bib.* Bayesian framework (Gibbs sampling) for the masked series system likelihood; direct Bayesian alternative to MLE under C1-C2-C3.

- **[Kuo and Yang, 2000]** "Bayesian reliability modeling for masked system lifetime data" -- Statistics & Probability Letters 47(3), 229-241. *NOT in refs.bib.* Developed Gibbs sampling for masked system data under both exponential and Weibull components; multiple masking probability models.

- **[Mukhopadhyay and Basu, 1997]** "Bayesian analysis of incomplete time and cause of failure data" -- Journal of Statistical Planning and Inference 59, 79-100. *NOT in refs.bib.* Bayesian approach with latent failure cause augmentation for series systems; foundational Bayesian masked-data paper.

- **[Sarhan, 2004]** "Maximum likelihood analysis of masked series system lifetime data" -- Journal of Statistical Planning and Inference (published September 2004, DOI: 10.1016/j.jspi.2004.07.010). *NOT in refs.bib.* EM algorithm for masked Weibull series systems without the C2 symmetry assumption; closest competing method to the present paper's exact-failure case.

- **[Craiu and Duchesne, 2004]** "Inference Based on the EM Algorithm for the Competing Risks Model with Masked Causes of Failure" -- Biometrika 91(3), 543-558. *Already in refs.bib (added 2026-02-17).* EM algorithm for piecewise-constant hazard competing risks with masked causes.

- **[Craiu and Reiser, 2006]** "Inference for the Dependent Competing Risks Model with Masked Causes of Failure" -- Lifetime Data Analysis 12, 21-33, DOI: 10.1007/s10985-005-7218-3. *NOT in refs.bib.* Extends craiu2004 to dependent competing risks; key because it relaxes the independence assumption made by the present paper.

- **[Yu et al., 2012]** "Random partition masking model for censored and masked competing risks data" -- Annals of the Institute of Statistical Mathematics 64, 69-85, DOI: 10.1007/s10463-010-0303-8. *NOT in refs.bib.* Proposes the RPM model that replaces the C2 symmetry assumption with a more general random partition model; the most important direct relaxation of C2.

- **[Liu et al., 2021]** "Nonparametric Bayesian reliability analysis of masked data with dependent competing risks" -- Reliability Engineering & System Safety 210, 107502. *Already in refs.bib (added 2026-02-17).* Nonparametric Bayesian approach with Archimedean copulas for dependent masked risks.

- **[Yousif et al., 2020]** "A Bayesian Approach to Competing Risks Model with Masked Causes of Failure and Incomplete Failure Times" -- Mathematical Problems in Engineering 2020, 8248640, DOI: 10.1155/2020/8248640. *NOT in refs.bib.* Bayesian approach with Dirichlet and Gamma process priors for masking probabilities; handles partly interval-censored data.

---

### Complementary

Papers that address related problems (different system type, different data type, different identifiability angle) and support the paper's claims, context, or methodology without being direct competitors.

- **[Guttman, Lin, Reiser et al., 1995]** "Dependent masking and system life data analysis: Bayesian inference for two-component systems" -- Lifetime Data Analysis 1, 87-100, DOI: 10.1007/BF00985260. *NOT in refs.bib.* Bayesian approach for two-component system with dependent masking; directly motivates the discussion of C2 relaxation (dependent masking).

- **[Lindqvist, 2023]** "Phase-Type Models for Competing Risks, with Emphasis on Identifiability Issues" -- Lifetime Data Analysis 29(2), 318-341. *Already in refs.bib (added 2026-02-17).* Identifiability via phase-type representations; complements Theorem 9.

- **[Crowder, 1991]** "On the Identifiability Crisis in Competing Risks Analysis" -- Scandinavian Journal of Statistics 18, 223-233. *NOT in refs.bib.* Shows the identifiability problem is deeper than Tsiatis (1975) suggested; motivates the paper's identifiability theorem as going beyond the classical result.

- **[Mitra, Das, and Das, 2020]** "Analysis of interval-censored competing risks data under missing causes" -- Journal of Applied Statistics 47(3), 439-459. *NOT in refs.bib.* Parametric MLE for interval-censored competing risks with missing (not masked) causes; closest published work on the interval-censored case covered by the present paper's Table 1.

- **[Sen, Basu, and Banerjee, 2001]** "Analysis of masked failure data under competing risks" -- in Handbook of Statistics: Advances in Reliability, Vol. 20, pp. 523-540, Elsevier. *NOT in refs.bib.* Comprehensive survey of masked competing risks methods at the time; a key reference for situating the history of the C1-C2-C3 approach.

- **[Monterrubio-Gomez et al., 2024]** "A Review on Statistical and Machine Learning Competing Risks Methods" -- Biometrical Journal 66(1), e2300060. *Already in refs.bib (added 2026-02-17).* Comprehensive contemporary review; situates parametric cause-specific approach in the broader landscape.

- **[Dempster, Laird, and Rubin, 1977]** "Maximum Likelihood from Incomplete Data Via the EM Algorithm" -- Journal of the Royal Statistical Society: Series B 39(1), 1-22. *NOT in refs.bib.* Foundational EM paper; should be cited when the paper discusses EM as an optimization strategy (Section 6, Discussion).

- **[Heckman and Honore, 1989]** "The Identifiability of the Competing Risks Model" -- Biometrika 76(2), 325-330. *NOT in refs.bib.* Shows that adding covariates (regressors) can restore identifiability in competing risks; directly relevant to the paper's discussion of covariate-dependent hazards (Remark 11) and identifiability.

- **[Menger, Sheikh, and Chen, 2024]** "Bayesian Modeling of Survival Data in the Presence of Competing Risks with Cure Fractions and Masked Causes" -- Sankhya A 86(Suppl 1), 199-227. *NOT in refs.bib.* Extends masked competing risks to cure fraction models; recent (2024) work showing the framework's ongoing relevance.

---

### Tangential

Papers related to the broader competing risks or missing data literature but not directly concerned with the masked series system problem.

- **[Fine and Gray, 1999]** "A Proportional Hazards Model for the Subdistribution of a Competing Risk" -- Journal of the American Statistical Association 94(446), 496-509. *NOT in refs.bib.* Subdistribution hazard approach to competing risks; cited by monterrubio2024 as a major alternative; the paper correctly positions itself against this approach (Section 1).

- **[Crowder, 1991 / Tsiatis, 1975]** See foundational entries above.

- **[Sarhan, 2003]** "Estimations of parameters in Pareto reliability model in the presence of masked data" -- Reliability Engineering & System Safety 82, 75-83. *NOT in refs.bib.* Applies masked-data MLE to Pareto components; shows Pareto is tractable under this framework (supports Table 1 of the present paper).

- **[Shi, Liu, and Shi, 2017]** "Statistical analysis for masked hybrid system lifetime data in step-stress partially accelerated life test with progressive hybrid censoring" -- PLoS ONE 12(10), e0186417. *NOT in refs.bib.* ALT extension of masked data; tangential but shows the framework's applicability beyond standard life testing.

- **[Yousif et al., 2022]** "Bayesian Analysis of Masked Competing Risks Data Based on Proportional Subdistribution Hazards Model" -- Mathematics 10(17), 3045. *NOT in refs.bib.* Tangential: uses subdistribution hazard (Fine-Gray) rather than cause-specific hazards; shows the masked-data problem is also studied in the subdistribution framework.

---

## Gap Analysis

### What the Bibliography Now Covers Well

1. **1984-2001 core literature**: Miyakawa (1984), Usher-Hodgson (1988), Lin et al. (1993), Guess et al. (1991), Sarhan (2001) -- all in refs.bib.
2. **2004 EM approach**: craiu2004 in refs.bib.
3. **2021-2024 recent work**: liu2021, lindqvist2023, monterrubio2024 in refs.bib.

### What Is Still Missing (in Priority Order)

**Priority 1 -- Must add to support Related Work section and situate the Flehinger-Reiser-Yashchin line of work:**
- flehinger1998 (Biometrika): The 1998 Flehinger-Reiser-Yashchin paper is the canonical reference for the parametric stage-1/stage-2 framework; craiu2004 cites it as its predecessor. The present paper cites craiu2004 but not its antecedent, which is a visible gap to referees familiar with the literature.
- flehinger2002 (Lifetime Data Analysis): The 2002 follow-up with full parametric treatment is the closest published work to the present paper and should be cited in Related Work.

**Priority 2 -- Should add for the Bayesian section of Related Work and the Discussion:**
- kuo2000 (Statistics & Probability Letters): The first Gibbs sampling approach for masked series systems; directly motivates "Bayesian regularization" in the identifiability remediation discussion.
- lin1996 (IEEE Trans. Reliability): Earlier Bayesian approach; linker between Usher-Hodgson MLE and the Gibbs-based methods.
- craiu2006 (Lifetime Data Analysis): Extends craiu2004 to dependent competing risks; important for the discussion of relaxing component independence.

**Priority 3 -- Useful additions for completeness:**
- crowder2001 (book): Standard reference for the classical competing risks framework and identifiability; appropriate to cite alongside tsiatis1975.
- guttman1995 (Lifetime Data Analysis): Dependent masking Bayesian inference; motivates the C2 relaxation discussion.
- yu2012 (AISM): RPM model as the main alternative to C2; directly relevant to the Discussion section on relaxing C2.
- sen2001 (Handbook chapter): Comprehensive survey of masked competing risks before 2001; appropriate background citation.

**Topics Still Underrepresented:**
1. **ALT with masked causes**: The accelerated life testing variant (Shi et al. 2017, Hu 2024) is a natural extension area not yet cited.
2. **Interval-censored masked data as a standalone problem**: Mitra et al. (2020) is the most relevant parametric treatment of this case; the paper derives the interval-censored likelihood contribution (Table 1) but does not cite any prior work that handles this specific case.
3. **Multiple imputation approaches**: The machine learning / multiple imputation approach (JCSS 2022) represents a recent methodological alternative to likelihood-based estimation; could be mentioned in Discussion.

---

## Recommended Additions to refs.bib

The following are verified references with full bibliographic data, recommended in priority order.

### Priority 1: Must Cite

```bibtex
@article{flehinger1998,
  author    = {Flehinger, Betty J. and Reiser, Benjamin and Yashchin, Emmanuel},
  title     = {Survival with Competing Risks and Masked Causes of Failures},
  journal   = {Biometrika},
  volume    = {85},
  number    = {1},
  pages     = {151--164},
  year      = {1998},
  doi       = {10.1093/biomet/85.1.151}
}

@article{flehinger2002,
  author    = {Flehinger, Betty J. and Reiser, Benjamin and Yashchin, Emmanuel},
  title     = {Parametric Modeling for Survival with Competing Risks and Masked Failure Causes},
  journal   = {Lifetime Data Analysis},
  volume    = {8},
  number    = {2},
  pages     = {177--203},
  year      = {2002},
  doi       = {10.1023/A:1014891707936}
}
```

### Priority 2: Should Cite

```bibtex
@article{kuo2000,
  author    = {Kuo, Lynn and Yang, Tae Young},
  title     = {Bayesian Reliability Modeling for Masked System Lifetime Data},
  journal   = {Statistics \& Probability Letters},
  volume    = {47},
  number    = {3},
  pages     = {229--241},
  year      = {2000},
  doi       = {10.1016/S0167-7152(99)00160-1}
}

@article{lin1996,
  author    = {Lin, Dennis K. J. and Usher, John S. and Guess, Frank M.},
  title     = {Bayes Estimation of Component-Reliability from Masked System-Life Data},
  journal   = {IEEE Transactions on Reliability},
  volume    = {45},
  number    = {2},
  pages     = {233--237},
  year      = {1996},
  doi       = {10.1109/24.510807}
}

@article{craiu2006,
  author    = {Craiu, Radu V. and Reiser, Benjamin},
  title     = {Inference for the Dependent Competing Risks Model with Masked Causes of Failure},
  journal   = {Lifetime Data Analysis},
  volume    = {12},
  number    = {1},
  pages     = {21--33},
  year      = {2006},
  doi       = {10.1007/s10985-005-7218-3}
}
```

### Priority 3: Consider Adding

```bibtex
@book{crowder2001,
  author    = {Crowder, Martin J.},
  title     = {Classical Competing Risks},
  publisher = {Chapman and Hall/{CRC}},
  year      = {2001},
  isbn      = {9781584881759}
}

@article{guttman1995,
  author    = {Guttman, Irwin and Lin, Dennis K. J. and Reiser, Benjamin and Usher, John S.},
  title     = {Dependent Masking and System Life Data Analysis: {B}ayesian Inference for Two-Component Systems},
  journal   = {Lifetime Data Analysis},
  volume    = {1},
  number    = {1},
  pages     = {87--100},
  year      = {1995},
  doi       = {10.1007/BF00985260}
}

@article{yu2012,
  author    = {Yu, Qiqing and Wong, George Y. C. and Qin, Hong and Ren, Yusheng},
  title     = {Random Partition Masking Model for Censored and Masked Competing Risks Data},
  journal   = {Annals of the Institute of Statistical Mathematics},
  volume    = {64},
  number    = {1},
  pages     = {69--85},
  year      = {2012},
  doi       = {10.1007/s10463-010-0303-8}
}

@article{mukhopadhyay1997,
  author    = {Mukhopadhyay, Chiranjit and Basu, Asit P.},
  title     = {Bayesian Analysis of Incomplete Time and Cause of Failure Data},
  journal   = {Journal of Statistical Planning and Inference},
  volume    = {59},
  number    = {1},
  pages     = {79--100},
  year      = {1997},
  doi       = {10.1016/S0378-3758(96)00103-6}
}

@article{crowder1991,
  author    = {Crowder, Martin J.},
  title     = {On the Identifiability Crisis in Competing Risks Analysis},
  journal   = {Scandinavian Journal of Statistics},
  volume    = {18},
  number    = {3},
  pages     = {223--233},
  year      = {1991}
}

@incollection{sen2001,
  author    = {Sen, Ananda and Basu, Sujit and Banerjee, Moulinath},
  title     = {Analysis of Masked Failure Data under Competing Risks},
  booktitle = {Handbook of Statistics: Advances in Reliability},
  editor    = {Balakrishnan, N. and Rao, C. R.},
  volume    = {20},
  pages     = {523--540},
  publisher = {Elsevier},
  address   = {Amsterdam},
  year      = {2001}
}
```

### For Reference (Informational Only -- Verify Before Adding)

The following papers were found but require additional verification or are lower priority:

- **[Sarhan, 2004]** "Maximum likelihood analysis of masked series system lifetime data" -- JSPI (DOI: 10.1016/j.jspi.2004.07.010). Uses EM without C2; high relevance but authors need verification. [possible-add]
- **[Heckman and Honore, 1989]** "The Identifiability of the Competing Risks Model" -- Biometrika 76(2), 325-330. Relevant to covariate-based identifiability. [possible-add for Section 5.6 or Remark]
- **[Mitra, Das, and Das, 2020]** "Analysis of interval-censored competing risks data under missing causes" -- Journal of Applied Statistics 47(3), 439-459. Relevant to the interval-censored case in Table 1. [possible-add for Discussion]
- **[Yousif et al., 2020]** "A Bayesian Approach to Competing Risks Model with Masked Causes of Failure and Incomplete Failure Times" -- Mathematical Problems in Engineering 2020, 8248640. Recent Bayesian extension. [possible-add for Related Work]

---

## Suggested Citation Locations in Paper

### Section 1.2 (Related Work)

Add the Flehinger-Reiser-Yashchin line after the mention of craiu2004:

> \citet{flehinger1998} introduced a two-stage framework for masked competing risks with
> Weibull component lifetimes, in which stage-1 diagnostics mask the cause and stage-2
> failure analysis provides additional information for a subset of masked cases;
> \citet{flehinger2002} extended this to a fully parametric treatment with MLE inference.
> \citet{craiu2004} developed EM-based inference extending this framework to piecewise-constant hazards...

Add reference to Bayesian alternatives after mentioning liu2021:

> Bayesian approaches using Gibbs sampling for exponential and Weibull series system data
> were developed by \citet{lin1996} and \citet{kuo2000}; \citet{mukhopadhyay1997} proposed
> a general Bayesian framework with latent cause augmentation.

Add crowder2001 and crowder1991 near the tsiatis1975 citation for classical identifiability:

> The identifiability problem for competing risks was analyzed in depth by \citet{crowder1991},
> who showed that the difficulties are deeper than indicated by \citet{tsiatis1975};
> see also \citet{crowder2001} for a comprehensive treatment.

### Section 5.5 (Identifiability) / Discussion of C2 Relaxation

Add reference to yu2012 when discussing relaxing C2:

> \citet{yu2012} proposed the random partition masking (RPM) model as an alternative
> to C2 that does not require symmetry; the RPM model allows component-dependent masking
> probabilities within a parametric family.

Add reference to guttman1995 when discussing dependent masking:

> \citet{guttman1995} studied dependent masking for two-component systems in a Bayesian
> framework, showing that the dependence structure can be identified when the masking
> mechanism is modeled explicitly.

### Section 6 (MLE) / Discussion

Add dempster1977 if the paper mentions EM as a computational strategy:

> \citet{dempster1977} established the general EM algorithm framework for maximum
> likelihood from incomplete data, which underlies the EM-based approaches of
> \citet{craiu2004} and \citet{sarhan2004} for masked competing risks.

---

## Updated Gap Analysis

### Status After This Survey

The 2026-02-17 survey closed the 2013-2025 gap with four Tier-1 references. This survey identifies a **1995-2004 gap** in the Related Work section: the Flehinger-Reiser-Yashchin papers (1998, 2002), which are direct predecessors of craiu2004, are not cited. These are the most important additions. Additionally:

- The Bayesian literature (Gibbs sampling for masked series systems) is uncited, even though the paper mentions "Bayesian regularization" as a remedy for non-identifiability (Section 5.6). At minimum, kuo2000 or lin1996 should appear there.
- The dependent masking literature (guttman1995, craiu2006) is uncited even though Section 8.2 discusses relaxing C2.
- The RPM model (yu2012) is the main published alternative to C2 and belongs in Section 8.2 on relaxing conditions.

### Open Questions Remaining

1. **Practical finite-sample identifiability**: No paper in the literature (found by this survey) provides tight finite-sample bounds on how masking rate and sample size jointly determine numerical identifiability. This remains an open question for the companion paper ecosystem.

2. **General-family identifiability under interval censoring**: The present paper's identifiability theorem (Theorem 9) addresses exact-failure observations. Whether the sufficient condition extends to the interval-censored case is not addressed in the literature found by this survey.

3. **Information-theoretic treatment of C2**: The paper's Remark 3 (information-theoretic characterization of C2 via mutual information $I(K; \mathcal{C}_w) = \ln(m/w)$) is not in prior literature; this appears to be a novel contribution deferred to the exponential companion paper.

---

## Full Reference List with Classifications

| Key | Authors | Year | Title (abbreviated) | Venue | Tier | Classification |
|-----|---------|------|---------------------|-------|------|----------------|
| miyakawa1984 | Miyakawa | 1984 | Analysis of incomplete data competing risks | IEEE Trans. Reliability | T1 | Foundational |
| usher1988 | Usher, Hodgson | 1988 | MLE masked system life-test data | IEEE Trans. Reliability | T1 | Foundational |
| lin1993 | Usher, Lin, Guess | 1993 | Exact MLE using masked system data | IEEE Trans. Reliability | T1 | Foundational |
| guess1991 | Guess, Hodgson, Usher | 1991 | Estimating system/component reliabilities partial info | JSPI | T1 | Foundational |
| tsiatis1975 | Tsiatis | 1975 | Nonidentifiability competing risks | PNAS | T1 | Foundational |
| flehinger1998 | Flehinger, Reiser, Yashchin | 1998 | Survival with competing risks masked causes | Biometrika | T1 | Foundational |
| flehinger2002 | Flehinger, Reiser, Yashchin | 2002 | Parametric modeling competing risks masked | Lifetime Data Analysis | T1 | Foundational |
| crowder2001 | Crowder | 2001 | Classical Competing Risks (book) | CRC Press | T2 | Foundational |
| sarhan2001 | Sarhan | 2001 | Reliability estimations masked system life data | RESS | T1 | Competing |
| lin1996 | Lin, Usher, Guess | 1996 | Bayes estimation component-reliability masked | IEEE Trans. Reliability | T1 | Competing |
| kuo2000 | Kuo, Yang | 2000 | Bayesian reliability modeling masked system | Stat. Prob. Letters | T1 | Competing |
| mukhopadhyay1997 | Mukhopadhyay, Basu | 1997 | Bayesian analysis incomplete time cause failure | JSPI | T2 | Competing |
| sarhan2004 | Sarhan et al. | 2004 | MLE masked series system lifetime data (EM) | JSPI | T1 | Competing |
| craiu2004 | Craiu, Duchesne | 2004 | EM for competing risks masked causes | Biometrika | T1 | Competing |
| craiu2006 | Craiu, Reiser | 2006 | Inference dependent competing risks masked | Lifetime Data Analysis | T1 | Competing |
| yu2012 | Yu, Wong et al. | 2012 | Random partition masking model | Ann. Inst. Stat. Math. | T2 | Competing |
| liu2021 | Liu, Shi et al. | 2021 | Nonparametric Bayesian masked dependent competing risks | RESS | T1 | Competing |
| yousif2020 | Yousif, Elfaki et al. | 2020 | Bayesian approach masked causes incomplete times | Math. Problems Eng. | T2 | Competing |
| guttman1995 | Guttman, Lin, Reiser et al. | 1995 | Dependent masking Bayesian two-component systems | Lifetime Data Analysis | T1 | Complementary |
| lindqvist2023 | Lindqvist | 2023 | Phase-type models competing risks identifiability | Lifetime Data Analysis | T1 | Complementary |
| crowder1991 | Crowder | 1991 | Identifiability crisis competing risks | Scand. J. Statistics | T2 | Complementary |
| mitra2020 | Mitra, Das, Das | 2020 | Interval-censored competing risks missing causes | J. Applied Statistics | T2 | Complementary |
| sen2001 | Sen, Basu, Banerjee | 2001 | Analysis masked failure data competing risks (ch.) | Handbook of Statistics | T2 | Complementary |
| monterrubio2024 | Monterrubio-Gomez et al. | 2024 | Review statistical/ML competing risks methods | Biometrical Journal | T1 | Complementary |
| dempster1977 | Dempster, Laird, Rubin | 1977 | Maximum likelihood from incomplete data EM | JRSS-B | T2 | Complementary |
| heckman1989 | Heckman, Honore | 1989 | Identifiability competing risks model | Biometrika | T2 | Complementary |
| menger2024 | Menger, Sheikh, Chen | 2024 | Bayesian modeling cure fractions masked causes | Sankhya A | T3 | Complementary |
| fine1999 | Fine, Gray | 1999 | Proportional hazards subdistribution competing risk | JASA | T3 | Tangential |
| sarhan2003 | Sarhan | 2003 | Estimations parameters Pareto masked data | RESS | T3 | Tangential |
| shi2017 | Shi, Liu, Shi | 2017 | Masked hybrid system step-stress ALT | PLoS ONE | T3 | Tangential |
| yousif2022 | Yousif et al. | 2022 | Bayesian masked competing risks subdistribution | Mathematics | T3 | Tangential |

---

## Notes on Unverified or Uncertain Items

The following items appeared in search results but could not be fully verified from available metadata; they are NOT recommended for inclusion without additional checking:

- **Aslett (2012) PhD thesis** "MCMC for Inference on Phase-type and Masked System Lifetime Models" -- Trinity College Dublin. The thesis exists (confirmed at louisaslett.com) but is a PhD thesis, not a peer-reviewed article. Appropriate only if the paper needs to cite the MCMC/phase-type approach in depth.
- **Sarhan (2004) JSPI paper**: High confidence this exists (ScienceDirect confirms DOI 10.1016/j.jspi.2004.07.010) but the author list beyond "Sarhan" was not confirmed from search results. Mark as [possible-add, verify authors].
- **Multiple imputation JCSS 2022** (DOI 10.1080/00949655.2022.2063864): Confirmed to exist in JCSS Vol 92 No 16, but full author list not retrieved. Mark as [possible-add, verify authors].
