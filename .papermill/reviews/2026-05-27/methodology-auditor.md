# Methodology Auditor 2026-05-27

## Overview

The paper is methodological (no experiments, no data). Methodology auditing here covers (i) whether the practitioner recipe is operationally complete, (ii) whether the asymptotic toolkit is sound, and (iii) whether the framework is reproducible by a third party.

## Major

### M1. Section 6.4 "Asymptotic Properties" is undersupported for a primary methods paper

**Location**: Section 6.4, line 1466 to 1483. The section states consistency, asymptotic normality, and efficiency in one paragraph, citing only Casella & Berger and Lehmann & Casella. For a foundational methods paper that explicitly anchors five application papers (and is being submitted to Technometrics), the standard expectation is a more explicit statement of which regularity conditions ((i) compactness or correct interior, (ii) identifiability, (iii) score-integrability, (iv) Fisher information continuity, (v) third-derivative domination) hold for the masked-data MLE and which require per-family verification. This dovetails with the missing Appendix flagged by the logic checker: an Appendix A "Regularity for the masked-data MLE" would simultaneously satisfy methods-paper expectations and supply the local-to-global identifiability bridge that dp-coarsening cites.

**Suggestion**: expand 6.4 to half a page listing the six standard regularity conditions, indicate which are inherited from the component families (smoothness, integrability) and which are new to the masked setting (identifiability via Theorem 8), and refer to the new Appendix.

**Confidence**: 86

## Minor

### m1. The practitioner recipe (Section 6.4 list) misses a numerical-integration step for $\ell_L$ and $\ell_I$

**Location**: Section 6.4 line 1489 to 1503. Steps 1 to 5 ("Specify, Substitute, Differentiate, Solve, Construct confidence intervals") implicitly assume closed-form $R_j$ and $h_j$. For left- and interval-censored contributions (Equations 38, 39) the integrand $\sum_{j \in c} h_j(t) \prod_l R_l(t)$ has to be integrated numerically when $R_j$ is not closed-form (Gamma, mixture models, splines). A short Step 2b "If $R_j$ is not closed-form, choose a numerical-integration scheme (Gauss-Legendre, adaptive Simpson) before differentiating" would catch this. The `maskedhaz` software already does this; the paper should mirror it.

**Confidence**: 82

### m2. Identifiability check in the recipe is implicit

The recipe says "Solve the score equations numerically [...] Failure to converge [...] may indicate identifiability issues" (line 1762). For Technometrics this is too informal: a practitioner should be told to (a) construct $\tilde{C}$ from the empirical candidate-set distribution, (b) check its column rank, and (c) report the confounding graph if rank is deficient. This is one extra recipe step that turns Theorem 8 from theory into operations.

**Confidence**: 80

### m3. The worked example does not report standard errors or a confidence interval

**Location**: Section 6.5, line 1508 to 1588. The example computes $\hat\lambda_1 = \hat\lambda_3 \approx 0.0385$ and $\hat\lambda_2 \approx 0.1370$ but stops there. Step 5 of the recipe ("Construct confidence intervals using the observed Fisher information or bootstrap resampling") is not exercised. For a methods paper, a one-row CI table makes the recipe concrete. The closed-form Fisher information for the masked-Exponential case is tractable and would add genuine value.

**Confidence**: 78

### m4. The example uses $n = 6$, which under-illustrates the framework's intended sample regime

The framework is asymptotic; $n = 6$ is fine for showing the algebra but it would be more compelling to also reference (or include as a second example) a moderate-$n$ simulation showing the rank-deficient confounded-pair case from Example 1 and confirming the predicted ridge. The author has the `maskedhaz` R package; a 10-line simulation reference (e.g. "the analogous $n = 200$ simulation in `maskedhaz/vignettes/mle_recovery.Rmd` confirms Theorem 8(b)") would close the loop without bloating the paper.

**Confidence**: 70

### m5. No mention of model-selection diagnostics (AIC, BIC) for the framework

**Location**: Remark 6 (line 1674 to 1687) defers nested-model selection to `towell2026model-selection`. For a Technometrics audience, even one sentence "AIC and BIC remain valid model-selection criteria under the C1, C2, C3 likelihood because the masking factor $\beta_i$ contributes a constant to the log-likelihood that cancels in log-likelihood ratios and AIC differences" would be useful. The point is short and is what reliability-engineering reviewers will ask.

**Confidence**: 65

## Strengths

- The framework is reproducible: three R packages are listed (`maskedhaz`, `wei.series.md.c1.c2.c3`, plus supporting `flexhaz`, `serieshaz`, `algebraic.mle`) with GitHub URLs and a Zenodo DOI on the Weibull package.
- Data Availability and Code Availability sections are present and explicit (line 1858 to 1879).
- The recipe (5 steps) is itself a methodological contribution that several reliability-engineering reviewers will appreciate.
- The combined-likelihood form (Theorem 7) is sufficiently algebraically clean that practitioners can plug in any hazard family without rederiving anything.
