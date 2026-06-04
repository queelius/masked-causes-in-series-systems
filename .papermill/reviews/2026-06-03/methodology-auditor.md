# Methodology Auditor Report

**Paper**: Masked Causes of Failure in Series Systems: A Likelihood Framework
**Date**: 2026-06-03
**Scope**: experimental/estimation design, statistical rigor of the asymptotic claims, reproducibility, and venue-appropriateness for IEEE Transactions on Reliability (simulation-only validation acceptable; proofs must be rigorous). Includes the requested cross-verification of logic-checker F1 (does the stated asymptotic theory cover the advertised covariate use case?).

## Verdict

For a theory-plus-illustration methods paper at IEEE TR, the methodology is appropriate and the estimation recipe is sound and reproducible. There are no experiments to audit in the empirical sense (by design: this is the theory anchor; simulation lives in companion papers, which is an accepted division for TR). The estimation methodology (MLE via score equations, observed-information / bootstrap intervals, L-BFGS-B with multistart) is standard and correctly specified. My one substantive finding confirms the logic-checker: the asymptotic guarantee as stated is an i.i.d. result, but the paper sells a non-identically-distributed (covariate) model, and the appendix does not bridge that gap.

## Cross-verification of logic-checker F1: CONFIRMED

I independently reach the same conclusion. The chain is:
- The body (Section 2) defines the sampling model as independent but NOT identically distributed (systems differ by covariates x_i), and Remark (covariate-hazards) plus the proportional-hazards specification h_{0,j}(t) exp(x_i^T beta_j) are presented as in-scope and as a selling point.
- Appendix A R2 preamble assumes the observations are i.i.d. under theta_0, and the consistency/normality conclusions are imported verbatim from van der Vaart Theorems 5.7 and 5.39, which are i.i.d. theorems.
- Therefore the asymptotic theory that is actually proved does not, as written, cover the covariate model the paper advertises. The covariate case is independent-not-identically-distributed; consistency and CLT there require a triangular-array / Lindeberg argument and the limiting average information n^{-1} sum_i I_i(theta_0), under conditions such as bounded covariate support and a uniform information lower bound across the design.

This is the single methodological item I would require addressed before submission. It is not a deep problem: the fix is to scope Appendix A to the i.i.d. (no-covariate) case and add two sentences stating that the covariate extension follows from standard i.n.i.d. MLE theory under bounded covariate support, with the per-observation Fisher information replaced by the limiting average information. Severity: Major (consistency between the advertised model and the proved guarantee), low remediation cost.

## Estimation methodology: sound

- Score equations (Section 6.2) are correctly the stationarity conditions of the log-likelihood; the paper correctly states they are generally not closed-form and defers to Newton-Raphson / quasi-Newton. Appropriate.
- The practitioner recipe (Section 6.4) is complete and correct: specify hazard -> compute R_j (analytic or numeric) -> substitute -> differentiate -> solve numerically (L-BFGS-B / Newton) -> intervals via observed information or bootstrap. This is exactly how one would implement it.
- Computational-considerations subsection (local optima under heavy masking, multistart, convergence failure as an identifiability signal, boundary handling via log-scale reparametrization or L-BFGS-B) is accurate and genuinely useful. The link "convergence difficulty may signal near-violation of separability" is correct and well made.
- Bootstrap (BCa) is appropriately offered as the finite-sample alternative to the Wald interval; the citations (Efron 1987, Efron-Tibshirani 1994) are right.

## Identifiability as the design backbone: appropriate

The paper's methodological stance, that identifiability is a checkable algebraic property (rank of Ctilde) the analyst verifies before estimation, is the right framing for a reliability audience and is operationally actionable (construct Ctilde from the mechanism support, check rank, fall back to super-components if deficient). The remediation menu (collapse / equality constraints / Bayesian regularization) is practical and each option is correctly characterized. This is stronger methodology than the typical masked-data paper, which estimates the masking probabilities and discovers non-identifiability only through optimizer failure.

## Reproducibility: good for the theory anchor

- The worked example is fully specified (data table, exposure total, closed-form MLE) and I reproduced its numbers exactly. A reader can verify the whole example by hand.
- Code Availability points to three R packages (maskedhaz, wei.series.md.c1.c2.c3, supporting flexhaz/serieshaz/algebraic.mle) and the paper-source repo. For a methods paper this is more than adequate.
- Data Availability correctly states no primary data; the example is simulated and the generator ships with the packages.

## Findings

### M1 (Major). Asymptotic guarantee is i.i.d. but the advertised model is i.n.i.d. (covariates).
- Confirms logic-checker F1 and F4. See above. Fix: scope Appendix A to i.i.d. and add the i.n.i.d. bridge sentence; in Section 6.3 replace "per-observation Fisher information" with the averaged-information form for the covariate case.
- Confidence: 90.

### M2 (Minor / venue-conditional). No finite-sample or simulation evidence for the asymptotics in this paper.
- For IEEE TR (primary) and Lifetime Data Analysis (backup) this is acceptable: theory + a worked illustration, with simulation deferred to companions, is standard, and the state file's venue analysis confirms simulation-only is the norm at TR. NOT a blocker for the locked target.
- It WOULD become a blocker if retargeted to Technometrics or RESS, which culturally expect a worked simulation or application. If that happens, a single n in the low hundreds recovery study from maskedhaz (bias/coverage of the Wald and BCa intervals across a masking-rate sweep) closes it.
- The n=6 example illustrates the algebra, not the large-sample regime; one sentence acknowledging that the example is for transparency rather than performance assessment would be honest.
- Confidence: 85.

### M3 (Minor). Regularity conditions are asserted to hold "for each of the five families" without per-family verification.
- Location: Appendix A R5 ("holds for each of the five families ... on any compact Theta that bounds the failure-rate parameters away from 0 and infinity") and R6 (positive definiteness "generically satisfied").
- This is reasonable and standard, and full per-family checks belong in the companion papers. The word "generically" in R6 is doing real work, the Fisher information can be singular at the rank-deficient boundary, but R6 already conditions on Theorem 8(b) holding, so it is internally consistent. No change strictly required; a single clause "(see companion papers for family-by-family verification)" would make the deferral explicit and is consistent with the paper's stated role.
- Confidence: 75.

## Items checked and found fine (no action)
- Independence assumption (Remark on component independence) is correctly flagged as load-bearing, with Tsiatis cited for the non-identifiability that follows from dropping it. Honest scoping.
- The four-observation-type unification (exact/R/L/I) is methodologically clean and the reductions to standard censored forms are correct.
- The claim that masking affects only the allocation of total hazard, not the total (Exponential case) is correct and is a nice methodological insight, verified numerically.
