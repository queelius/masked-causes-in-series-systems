# Logic Checker 2026-05-27

Re-audit of the central foundational results that five sibling papers cite. The 2026-03-14 round-2 majors (Theorem 8(b) right-censored hypothesis; Theorem 9(c) parameter-sharing qualifier) are confirmed addressed in source.

## Critical

### C1. Sibling-paper invocation `\cite[Appendix]{towell2026masked}` resolves to material not present

**Location**: foundational paper has no appendix; siblings (especially `dp-coarsening/sections/identifiability.tex` line 70 and `weaksup-coarsening/sections/identifiability.tex` line 64) cite an Appendix giving "standard regularity gives global identifiability from local non-degeneracy under compactness," i.e., the bridge from the local rank condition of Theorem 8 to global identifiability of the MLE. Section 6.3 "Asymptotic Properties" only sketches regularity in one paragraph by external citation and explicitly says "must be verified for each specific distribution family." That is consistency-of-MLE language, not local-to-global identifiability under compactness.

**Quoted text**: line 1469 to 1473, "Under standard regularity conditions (which must be verified for each specific distribution family) [...] the MLE is consistent, asymptotically normal, and asymptotically efficient." (No appendix is referenced anywhere in the manuscript.)

**Why it matters for the series**: at least one sibling (`dp-coarsening`) and the `weaksup-coarsening` proof both rely on the foundational paper to supply the local-to-global bridge. As of right now the citation target does not exist.

**Suggestion**: add a short Appendix A "Regularity conditions for the masked-data MLE" stating the standard six-condition package (compact parameter space, continuity of the score, integrability domination, identifiability via Theorem 8, interior of the parameter space, nondegenerate Fisher information) and a one-paragraph proof that local injectivity of the parameter-to-likelihood map plus compactness gives global identifiability. The appendix only needs to be one to two pages.

**Confidence**: 92

## Major

### M1. Theorem 8(b) full-column-rank hypothesis is stated as a data condition, but the proof uses it as a model condition

**Location**: Theorem 8(b) line 1095 to 1099 and proof Step 3 line 1166 to 1175

**Quoted text** (line 1097 to 1099): "If $\tilde{C}$ has full column rank $m$ and the observational mechanism assigns positive probability to both exact-failure events (type E) and right-censored events (type R), then the parameter vector $\theta$ is identifiable."

**Issue**: $\tilde{C}$ is defined (Theorem 8 statement, line 1080 to 1083) as "the matrix whose rows are the indicator vectors of the sets in $\mathcal{S}$," where $\mathcal{S}$ is "the collection of candidate sets that occur with positive probability under the masking mechanism" (Definition 1, line 1059). Definition 1 thus pegs $\mathcal{S}$ and hence $\tilde{C}$ to the mechanism, not the sample. The proof correctly uses the mechanism interpretation, but the surrounding prose (e.g. line 1184 "the analyst constructs $\tilde{C}$ from the candidate-set structure $\mathcal{S}$") then encourages the reader to think of $\tilde{C}$ as something constructed from the observed data. For an identifiability statement the distinction is load-bearing.

**Suggestion**: in the paragraph following the proof (line 1184 to 1185), add "the mechanism-level collection $\mathcal{S}$, not the empirical realisation, determines $\tilde{C}$" so the practitioner does not mistakenly compute the rank from a finite sample. The math is correct; the prose risks a misreading by a reliability practitioner.

**Confidence**: 84

### M2. Theorem 9(b) proof appeals to Theorem 8(a) in a way that hides one step

**Location**: Theorem 9 proof Part (b), line 1287 to 1291

**Quoted text**: "This is a direct consequence of Theorem 8(a): within $P_k$, every pair is diagnostically confounded, so any reparametrization preserving $h_{P_k}$ leaves the likelihood unchanged."

**Issue**: Theorem 8(a) gives non-identifiability of the *pair* $(\theta_j, \theta_{j'})$ when only $h_j + h_{j'}$ is preserved. The step from pairs to the full super-component $P_k$ (which may have $|P_k| > 2$) needs one extra line: that diagnostic confounding is an equivalence relation (already stated, line 1230 to 1232), so any reparametrization preserving $h_{P_k} = \sum_{j \in P_k} h_j$ can be built as a composition of pairwise reparametrizations preserving the pair-sums, each of which preserves $L$ by Theorem 8(a). One sentence to close the gap.

**Suggestion**: insert at line 1291: "Composing pairwise reparametrizations of confounded pairs gives a reparametrization of all of $P_k$ that preserves $L$, since the pairwise property of Theorem 8(a) is preserved under composition along the equivalence class."

**Confidence**: 75

## Minor

### m1. The Pareto support carve-out in Table 2 is stated but not enforced in the worked example

**Location**: text at line 1654 to 1658 plus Table 2 row "Pareto". The Pareto-specific formulas are "valid only for $t \geq x_{\min,j}$" but the likelihood expressions in Sections 5 and 6 implicitly treat $h_j$ as defined on $(0, \infty)$. For the Pareto family the integrand in $\ell_L$ and $\ell_I$ is zero on $(0, x_{\min,j})$, so the integrals from $0$ to $\tau_i$ should be from $x_{\min,j}$ to $\tau_i$ (when $\tau_i > x_{\min,j}$). The general likelihood expressions handle this correctly under the convention "set $R_j(t) = 1$ and $h_j(t) = 0$ for $t < x_{\min,j}$" stated at line 1655, but a practitioner might miss this. Suggest adding one sentence to Remark 7 or Section 5.4 reminding the reader that distributions with parameter-dependent support require restricting the integration range.

**Confidence**: 80

### m2. Remark 4 (information-theoretic C2) forward-cites a companion paper that does not exist in the bibliography under that key

**Location**: Remark 4 line 842, `\citet{towell2026exponential-series}`. Bib entry (`refs.bib` line 394 to 399) is `@unpublished{...}` with note "In preparation." This is fine for an arXiv deposit but Technometrics may flag forward citations to unpublished work for a key claim. The closed-form $I(K; \mathcal{C}_w) = \ln(m/w)$ is stated as a result; consider either proving it in two lines in the remark (it is two lines for equal failure rates) or weakening "see X for the formal statement and proof" to "see X for the general statement."

**Confidence**: 78

### m3. The "almost surely" qualifier in Section 3 line 397 to 399 needs a measure-theoretic disclaimer

**Location**: "Whenever a series system fails, precisely one component is the cause (almost surely, since the component lifetime distributions are assumed to be absolutely continuous with respect to Lebesgue measure)." The almost-sure uniqueness is correct under absolute continuity, but Theorems 4 to 6 then treat $K_i$ as a discrete random variable. The pdf/probability mixing is fine, but a single explicit line "ties have probability zero, so $K_i$ is well-defined almost surely" would help a measure-theoretic reader.

**Confidence**: 60

## Strengths confirmed

- Worked Exponential example (Section 6.5): the identity $\hat\lambda_1 + \hat\lambda_2 + \hat\lambda_3 = 4/18.7$ is verified algebraically by computing $\sum_k \lambda_k \cdot \nabla_k \ell = -18.7 \Lambda + 4 = 0$. The "general property of the Exponential MLE" claim is correct.
- $T_{\text{total}} = 18.7$ from the data in Table 1: verified ($1.1 + 1.3 + 2.6 + 3.7 + 5.0 + 5.0 = 18.7$).
- Theorem 8 proof Steps 1 to 3 are tight; the right-censored type-R hypothesis (added in March 2026 round 2) is now correctly load-bearing in Step 1.
- C1/C2/C3 wording at line 764 matches the canonical cross-series phrasing.
