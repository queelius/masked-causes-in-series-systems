# Logic Checker

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-08
**Lens executed directly by the area chair** (sub-agent spawning unavailable in this Bash-only environment; the workflow permits direct execution of each lens). Proof-priority items were re-derived in Python/SymPy and an independent optimizer.

## Verdict
No critical or major logic findings. Every load-bearing proof re-verifies. The paper is submission-grade on correctness for IEEE Transactions on Reliability. Two low-priority expository nuances only.

## What was re-derived and confirmed

### C1/C2/C3 score cancellation (Section 5, the central result)
- Symbolic check: for the post-C1/C2/C3 joint density f = beta * prod_l R_l * sum_{j in c} h_j, the score d/dtheta [log beta + log R + log h] = h'/h + R'/R contains no beta term. C3 (beta not a function of theta) makes beta a theta-free multiplicative constant that drops from the score. CONFIRMED.
- The successive simplification (eq:after-c1 -> eq:after-c2 -> eq:after-c3) is correct: C1 collapses the sum from {1..m} to c_i (terms with j not in c_i vanish); C2 factors the common masking probability out of the sum; C3 removes the residual constant from the maximizer.

### Theorem 8 (Identifiability under C1/C2/C3)
- Part (a) (confounded pair -> non-identifiable): verified the flat-ridge claim symbolically: d/d(la) log(la+lb) along la+lb = c is identically 0. The likelihood depends on a confounded pair only through h_j + h_{j'}, so any sum-preserving reparametrization leaves L unchanged. CONFIRMED.
- Part (b) (full column rank of C-tilde -> identifiable): the three-step proof is sound.
  - Step 1: a continuum of single right-censored observations gives sum_l H_l(tau) = sum_l H_l'(tau) for all tau, hence sum_l g_l(t) = 0 (the all-ones row of C-tilde). The "positive probability to type R" hypothesis supplies the continuum.
  - Step 2: single exact-failure observations with each c in S give sum_{j in c} g_j(t) = 0 (the C rows). The "positive probability to type E" hypothesis supplies these.
  - Step 3: C-tilde g(t) = 0 with full column rank forces g(t) = 0, then individual-family identifiability gives theta = theta'.
- The hypothesis correctly requires BOTH type E and type R with positive probability (line 1196-1197); this was a prior-round major and is fixed.
- Numerical witnesses (m=4, S={{1,2},{3,4},{1,3},{2,4}}): rank(C-tilde)=3, null space exactly (1,-1,-1,1); identity-row case (singletons) gives rank m. CONFIRMED exactly.

### Remark 7 (separability not sufficient; functional-confinement rescue)
- The cautionary witness is correct: the m=4 mechanism above is separating (every pair distinguished) yet rank(C-tilde)=3 < m=4. Non-identifiability arises only when some nonzero g(t) stays in null(C-tilde) for all t, i.e. g(t) = lambda(t) a. CONFIRMED.
- The distinct-shape Weibull rescue (g_j(t) = delta_j t^{k_j-1}, distinct exponents cannot align to a common direction) is correct in logic; the claim that for linearly-dependent-hazard families (exponential; common-shape Weibull) full column rank is necessary and sufficient is consistent with the witness analysis.

### Theorem 9 (Partial identifiability via confounding graph)
- Diagnostic confounding is correctly an equivalence relation (identical C columns); connected components of G are the classes. CONFIRMED.
- Part (a) reduction to q super-components with reduced augmented matrix C-tilde* of rank q: Example 13 (m=5, S'={{1,2,3,4},{1,2,5},{3,4,5}}) gives super-components {1,2},{3,4},{5}, reduced augmented rank 3 = q; full S with singletons gives rank 5 = m. CONFIRMED exactly.
- Part (b) unidentifiable subspace of dimension (|P_k|-1) d: dimension counting verified for several (|P_k|, d) pairs (total p_k*d params, d identifiable via the aggregate, p_k*d - d = (p_k-1)d unidentifiable). The spanning-tree composition argument generating the reparametrization orbit is sound. CONFIRMED.
- Part (c) bound q*d carries the required "components within each super-component share the same parametric structure" qualifier (line 1387-1390); this was a prior-round major and is fixed. The qualifier is necessary because a sum of heterogeneous component hazards need not lie in any single d-dimensional family.

### Remark 6 (information-theoretic characterization of C2)
- Forward-referenced for full proof to towell2026exponential-series (in prep), but the stated claims verify exactly by direct computation:
  - I(K; C_w) = ln(m/w) under uniform masking with equal failure rates, for all tested (m,w).
  - I(K; C_w) monotone decreasing in w (Markov chain K -> C_w -> C_{w+1}).
  - w = m-1 is the maximally-uninformative-yet-identifiable case (smallest positive mutual information ln(m/(m-1)); w=m gives I=0 and non-identifiability).

### Worked example (Section 6.5, Exponential, m=3, n=6)
- T_total = 18.7 exact. Closed-form MLE lambda1=lambda3=(7-sqrt17)/74.8 ~ 0.0385, lambda2=(1+sqrt17)/37.4 ~ 0.1370.
- All three score equations vanish at the closed form to ~1e-15.
- Total rate sum = 4/18.7 exactly (failures over exposure), confirming the "masking affects only allocation, not the total" remark.
- An INDEPENDENT multi-start Nelder-Mead optimizer on the log-parametrized log-likelihood reproduces (0.038461, 0.136981, 0.038461), matching the closed form and the lambda1=lambda3 symmetry. CONFIRMED.

### Appendix A (regularity package)
- The C3 additive-constant factorization in A.3 (the masking factor contributes a theta-free additive constant to each per-observation log-likelihood, dropping from score and Fisher information) is the asymptotic mirror of the body's cancellation and is correct.
- Remark 8 (i.n.i.d. extension, new in the 2026-06-08 line of work / prior 2026-06-03 fix): the sqrt(n)/average-information restatement is equivalent to the standard total-information i.n.i.d. CLT under the stated information-convergence condition (iii); bounded covariate support (i) is the correct sufficient device. SOUND.

## Findings

### F1 (minor, cosmetic) "triangular-array (Lindeberg)" gloss on Hoadley 1971
- Location: Remark 8, line 2272-2274.
- Quoted: "This follows from the standard triangular-array (Lindeberg) MLE theory for the independent-not-identically-distributed case \citep{hoadley1971,vandervaart1998asymptotic}".
- The asymptotic-normality half does rest on a Lindeberg-Feller CLT over the triangular array of independent scores, so the gloss is accurate in spirit, but reads as more generic than Hoadley's specific framework. Carried over from the 2026-06-04 review; still unaddressed but purely a wording nuance. Hoadley 1971 is the correct citation. Suggested: "the i.n.i.d. MLE theory of Hoadley (Lindeberg-Feller-type conditions on the scores)".

### F2 (suggestion) Theorem 8(b) Step 1 phrasing
- Location: proof of Theorem 8, line 1236-1241.
- "Consider a data set consisting of a single right-censored observation at time tau ... gives sum_l H_l(tau) = sum_l H_l'(tau) for all tau > 0." The all-tau conclusion uses the family of singleton datasets indexed by tau, which is licensed by the "L(theta)=L(theta') for all possible data sets" definition stated at the proof opening. Logically airtight; a reader could momentarily read "a single observation" as yielding an all-tau conclusion. Optional one-clause clarification ("ranging over all tau in the support of the right-censoring mechanism").

### F3 (suggestion, carried over) Remark 7 / C1 distinction
- Optional one-clause note that separating-but-rank-deficient mechanisms exist in which every component still appears in some candidate set (the in-text witness already has this property), to forestall conflating the rank claim with a C1 caveat.

## Cross-verification routing
- The Theorem 8(b)/9 results were cross-checked against the methodology lens (can the reasoning be reproduced as a recovery procedure?): both concur, the rank check is a constructive diagnostic. No disagreement.
