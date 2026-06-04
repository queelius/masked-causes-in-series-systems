# Logic Checker Report

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-03
**Scope**: proof correctness of the central cancellation, Theorem 8 (identifiability), Theorem 9 (partial identifiability), Theorem 10 (log-likelihood), and Appendix A regularity (R1-R6, Lemma A / Wald bridge). All numerical claims re-derived independently.

## Verdict

The mathematics is sound and, on the central results, submission-grade for IEEE Transactions on Reliability. The C1/C2/C3 cancellation is complete (not hand-waved). Theorem 8(b) is correct and its proof is now airtight after the round-2 fix (right-censored events added to the hypothesis). Theorem 9 is correct. Appendix A is a clean, standard regularity package. I found one genuine internal inconsistency (i.i.d. in Appendix A vs. non-identically-distributed in the body), one over-strong word ("exactly the CAR conditions"), and two precision items in the asymptotics. None is a correctness error in a theorem statement or proof.

## What I verified by re-derivation

1. **Worked Exponential example (Section 6.5)**. Re-solved the score system. At the claimed MLE lambda_1 = lambda_3 = (7 - sqrt(17))/74.8 ~ 0.0385 and lambda_2 = (1 + sqrt(17))/37.4 ~ 0.1370, all three score equations vanish to machine precision; total rate = 4/18.7 = 0.21390..., matching the stated Exponential-MLE identity. T_total = 1.1+1.3+2.6+3.7+5.0+5.0 = 18.7 confirmed. The candidate-set matrix for the realized support {12,2,23,13} has full column rank 3, consistent with the example admitting a unique MLE. Correct.

2. **Remark 9 ("separability does not imply full rank")**. The claim that a separating mechanism can have rank(Ctilde) < m is true; minimal witness m = 4, S = {{1,2},{1,3}} gives rank(Ctilde) = 3 < 4 while every component pair is separated. The converse direction (full rank => separability) also holds. Remark 9 is correct, including the contrast that for linearly independent hazards (distinct-shape Weibull) separability alone suffices while for linearly dependent hazards (Exponential, common-shape Weibull) full rank is necessary and sufficient.

3. **Diagnostic confounding is an equivalence relation (line 1268)**. As defined, j ~ j' iff they have identical columns in C (j in c iff j' in c for all c in S). Identical-column is reflexive, symmetric, transitive: correct, so the connected components of the confounding graph are exactly the equivalence classes, and the super-component partition is well defined. The definition via "edge iff identical column pattern" already yields a disjoint union of cliques, so calling the connected components the classes is consistent.

## Central cancellation (Section 5.1-5.3): COMPLETE

The derivation from eq. (joint-tkc) through eq. (after-c3) is a clean three-step elimination:
- C1 collapses the sum over {1,...,m} to the candidate set c_i (zero mass off c_i). Stated and justified.
- C2 makes the masking probability constant across j in c_i, factoring it out of the sum. Stated and justified, with the correct observation that C2 is vacuous for singletons and a requirement on the mechanism (all producible c_i), not the realized sample.
- C3 makes that constant beta_i free of theta, so it is an irrelevant multiplier for the argmax. Stated and justified.

This is exactly the coarsening-at-random factorization specialized to candidate-set coarsening, and the paper does not skip the step where the cancellation actually happens. The censored extension (paragraph at ll. 945-961) correctly notes the extra assumption that beta_i depends on inspection time, not the unknown failure time, so it is constant in the integration variable and pulls out of the integral. This assumption is stated explicitly. Good.

The notation switch is clean: C1/C2 write Pr_theta{...}; C3 defines beta_i := Pr{...} deliberately without the theta subscript because the content of C3 is precisely that this probability is theta-free. This is intentional and correct, not a typo.

## Theorem 8 (identifiability): CORRECT, proof airtight

- Part (a), necessary condition: if j, j' are diagnostically confounded then any reparametrization preserving h_j + h_j' leaves L unchanged. The proof correctly shows the hazards enter every contribution (exact, R, L, I) only through R(t) = exp(-sum H_l) and sum_{l in c} h_l, both of which see the confounded pair only via the sum. Correct. (Round 1 fixed the earlier "iff" overclaim to "if"; the current statement claims only the necessary direction, which is what is proven.)

- Part (b), sufficient condition: the hypothesis now reads "Ctilde has full column rank m AND the mechanism assigns positive probability to both exact-failure (E) and right-censored (R) events." This is the correct hypothesis. Step 1 builds the all-ones row from a single right-censored observation (total cumulative hazard equality, differentiated to sum_l g_l = 0); Step 2 builds the candidate-set rows from single exact failures (survival terms cancel using Step 1, giving sum_{j in c} g_j = 0); Step 3 stacks these into Ctilde g(t) = 0 and uses full column rank to force g = 0, then individual identifiability to force theta = theta'. The logic is valid and the previously flagged dependence on a right-censored observation is now licensed by the hypothesis. This was the round-2 major; it is resolved in the source I reviewed (paper.tex l. 1130).

## Theorem 9 (partial identifiability): CORRECT

- Part (a) reduces to Theorem 8(b) on the q collapsed super-component columns; valid.
- Part (b) shows the unidentifiable directions span the (|P_k|-1)d-dimensional within-super-component reallocation subspace via a spanning-tree argument over confounded pairs; valid and more careful than a bare assertion.
- Part (c) bound q*d now carries the qualifier "when components within each super-component share the same parametric structure" (verified present in source). This is the correct fix for the round-2 imprecision: without parameter sharing the aggregate of two distinct-shape Weibulls has more than d identifiable parameters. With the qualifier the bound is correct.

## Appendix A (regularity for the masked-data MLE): SOUND, two precision items

The six-condition package (R1 compactness, R2 identifiability via Theorem 8(b), R3 dominating measure as the product of Lebesgue x counting x counting, R4 a.e. continuity, R5 score domination, R6 nonsingular Fisher information) is the standard van der Vaart package, correctly instantiated for the mixed exact/censored/candidate-set observation space. Lemma A (Wald-style local-to-global bridge) is correctly proved: uniqueness from global identifiability, well-separation from compactness + upper semicontinuity via Fatou. The consistency and asymptotic-normality conclusions then follow from the cited van der Vaart Theorems 5.7 and 5.39. The A.3 argument that C3 confines the masking mechanism to an additive theta-free constant in the per-observation log-likelihood (so it drops from score and Fisher information) is the correct and clean justification that the masked-data Fisher information equals the candidate-set-weighted information of L_theta. This appendix does suffice for the consistency/asymptotic-normality claims it supports.

Two precision items (see findings F1, F4 below).

## Findings

### F1 (Major-leaning, internal consistency). i.i.d. assumption in Appendix A contradicts the body's non-identically-distributed model.
- Location: Appendix A, R2 preamble (paper.tex l. 1962): "We assume the observations D_1, ..., D_n are independent, identically distributed under theta_0." Versus body l. 296 ("We observe n independent systems (which need not be identically distributed, since systems may differ by covariates)") and l. 301 ("independent but not necessarily identically distributed"), plus the entire covariate apparatus (Remark covariate-hazards, R5's mention of covariates).
- Problem: the asymptotic theorem the appendix proves is for the i.i.d. case (van der Vaart 5.7/5.39 as cited). The headline model, and the proportional-hazards covariate selling point, are explicitly non-identically-distributed (independent-not-identical / triangular array). The covariate case needs a different limit argument (e.g., bounded covariate support + a uniform-in-design information lower bound), not the verbatim i.i.d. theorems. As written the appendix's scope silently excludes the covariate model the body advertises.
- Fix (small, choose one): (a) restrict Appendix A explicitly to the no-covariate / i.i.d. case and add one sentence that the covariate (i.n.i.d.) extension follows from the standard independent-not-identically-distributed MLE theory under bounded covariate support, deferring details; or (b) state R-conditions for the i.n.i.d. case. Option (a) is a two-sentence fix and is honest. This is the most substantive issue in the paper and the one I would not let through without a touch, because a TR referee who bought the covariate pitch will check the appendix.
- Confidence: 90. Cross-verify requested (methodology-auditor: does the asymptotic claim as stated cover the advertised covariate use case?).

### F2 (Minor). "exactly the CAR conditions" overstates the logical relationship.
- Location: Section 5.3, ignorability paragraph (l. 911-913): "Together these are exactly the CAR conditions specialized to the candidate-set coarsening."
- Problem: CAR (Gill-van der Laan-Robins) is the necessary-and-sufficient factorization condition. C1/C2/C3 are a sufficient and very natural specialization, not literally equivalent to CAR for this coarsening. "Exactly" invites a precise referee to object that CAR is weaker.
- Fix: "Together these are a sufficient specialization of CAR to the candidate-set coarsening of a masked series system" (or "imply CAR for this coarsening"). One-word change.
- Confidence: 80.

### F3 (Minor). Remark 9 worst-case witness and the C1 caveat.
- Location: Remark 9 (linear independence), and the separability witnesses.
- Observation (not an error): the cleanest separating-but-rank-deficient witnesses leave some component out of every candidate set, which, if that component can fail, technically tensions C1. The Remark's claim is about the matrix algebra and is correct as stated, but a one-clause note that the witness mechanisms with full appearance of every component (e.g., a star plus a missing internal contrast) also exist would forestall a careful reader conflating the rank claim with a C1 violation. Optional.
- Confidence: 70.

### F4 (Minor). Asymptotic-normality statement uses per-observation Fisher information with sqrt(n) scaling without stating the averaging convention.
- Location: Section 6.3 (l. 1527-1531): sqrt(n)(thetahat - theta_0) -> N(0, I^{-1}(theta_0)) with I the "per-observation Fisher information."
- Problem: with covariates / i.n.i.d. data the relevant object is the limit of the average information n^{-1} sum I_i(theta_0), not a single per-observation I. In the i.i.d. case the statement is fine; in the advertised covariate case it needs the averaged-information form. This is the same root cause as F1 and is resolved by the same scoping sentence.
- Fix: tie to F1; if Appendix A is scoped to i.i.d., add "(i.i.d. case; the covariate case replaces I by the limiting average information)".
- Confidence: 78.

### F5 (Suggestion, not a defect). The n=6 worked example under-illustrates the asymptotic regime.
- The algebra example is correct and pedagogically good, but it exercises identifiability and the score, not the large-sample theory the paper invokes. For IEEE TR this is acceptable (theory + small illustration is standard) and is NOT a blocker; noting it only because the methodology-auditor raised the same point and a referee retargeting to Technometrics would want an n=200 recovery run from maskedhaz.

## Items I explicitly checked and found correct (no action)
- Theorems 1-6 (system reliability/pdf/hazard, joint and conditional cause distributions): standard, stated without proof with a correct pointer to the MS project; the convenient form eq. (sys-pdf-convenient) = h_T R_T is used consistently downstream.
- Table 1 likelihood contributions and their reduction to familiar censored forms when c_i = {1,...,m}: the reduction uses sum_j h_j prod R_l = f_T correctly.
- Theorem 10 (log-likelihood): immediate from Theorem 7 by log of product; correct.
- C3 beta_i notation (theta-free by design): correct, not a typo.
- Theorem 8(b) condition now includes type-R events: present.
- Theorem 9(c) parameter-sharing qualifier: present.
