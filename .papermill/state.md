---
title: "Masked Causes of Failure in Series Systems: A Likelihood Framework"
stage: pre-submission
format: latex
authors:
  - name: "Alexander Towell"
    email: "lex@metafunctor.com"
    orcid: "0000-0001-6443-9897"

thesis:
  one_sentence: "Under three coarsening-at-random conditions on the diagnostic mechanism (C1 containment, C2 symmetry, C3 parameter independence), the masking factor cancels from the score for a series system with a masked failure cause, yielding a single distribution-agnostic likelihood in the component hazards that supports maximum likelihood estimation for any parametric component family across all four observation types, with parameter recovery characterized by the rank of an augmented candidate-set matrix."
  contributions:
    - "(i) Distribution-agnostic likelihood: the C1/C2/C3 masked-data likelihood is formulated purely in component hazard and reliability functions, so it instantiates for any parametric family (Exponential, Weibull, Pareto, Log-normal, Gamma, splines) without rederivation."
    - "(ii) Unified censoring treatment: exact, right-, left-, and interval-censored observations share one algebraic structure, where prior work treated exact failures with right-censoring only."
    - "(iii) Rank-based identifiability: necessary separability and sufficient full-column-rank conditions on the augmented candidate-set matrix C-tilde (Theorem 8), generalizing Meilijson 1981 from autopsy to masked-cause data."
    - "(iv) Partial-identifiability theory: a confounding-graph / super-component characterization (Theorem 9) of what is recoverable when full identifiability fails, plus remediation strategies."
    - "(v) Foundational anchor: a reusable reference for family-specific companion papers and R packages, and for sibling papers applying coarsening outside reliability."
  claim: "A distribution-agnostic likelihood framework for component reliability estimation in series systems where the failed component is masked. The framework formulates the joint likelihood entirely in terms of component hazard functions, treats all four observation types (exact, right-censored, left-censored, interval-censored) within one algebraic structure, and gives explicit coarsening-at-random conditions (C1 containment, C2 symmetry, C3 parameter independence) under which the masking-mechanism factor cancels from the score so that component parameters can be estimated without modelling the masking process. The identifiability theorems (Theorems 8 and 9), keyed to the rank of the augmented candidate-set matrix, give necessary and sufficient conditions for component and super-component parameter recovery."
  novelty: "Earlier treatments of masked series-system data (Usher and Hodgson 1988, Lin Usher Guess 1993, Sarhan 2001/2004, Flehinger Reiser Yashchin 1998/2002) specialised to Exponential or Weibull families and treated exact failures together with right-censoring. The contribution here is threefold. (i) The C1/C2/C3 likelihood is lifted to arbitrary parametric hazard specifications, with the same algebraic factorisation across exact, right-, left-, and interval-censored observations. (ii) Identifiability is characterised through the rank of an augmented candidate-set matrix C-tilde built from the observation-type distribution; the algebraic-rank approach generalises Meilijson (1981) from autopsy data to masked-cause data. (iii) The result anchors a companion ecosystem of papers and R packages (mdrelax, maskedcauses, maskedhaz, wei.series.md.c1.c2.c3) so the framework is reusable rather than self-contained to one family."
  refined: true

prior_art:
  last_survey: "2026-06-03"
  key_references:
    - key: heitjan1991
      role: "Coined coarsening at random (CAR); the formal parent of the C1/C2/C3 conditions. ADDED 2026-06-03; cited in Related Work and the ignorability paragraph."
    - key: gill1997coarsening
      role: "Full characterization of CAR (when the coarsening mechanism factors out of the likelihood). ADDED 2026-06-03; cited alongside Heitjan-Rubin."
    - key: meilijson1981
      role: "Algebraic identifiability via incidence-matrix rank in the autopsy model; structural ancestor of the candidate-set matrix used here."
    - key: Usher-1988
      role: "First MLE formulation for masked series-system data (Exponential)."
    - key: Lin-1993
      role: "Exact MLE for masked series-system data; closed-form Exponential development."
    - key: flehinger1998
      role: "Stage-1/stage-2 framework for masked competing risks (Biometrika)."
    - key: flehinger2002
      role: "Full parametric cause-specific hazard treatment; closest precursor to the present likelihood."
    - key: lin1996
      role: "Bayesian (Gibbs) alternative by the Lin/Usher/Guess group."
    - key: kuo2000
      role: "Gibbs sampling for masked system data (Exp/Weibull)."
    - key: craiu2004
      role: "EM-based semiparametric alternative."
    - key: craiu2006
      role: "Extension to dependent competing risks."
    - key: lindqvist2023
      role: "Identifiability theory for competing risks via phase-type models."
    - key: liu2021
      role: "Bayesian nonparametric with dependent masked competing risks."
    - key: monterrubio2024
      role: "Comprehensive recent review of competing-risks methods."
    - key: heckman1989
      role: "Identifiability of the competing-risks model (classical foundation)."
    - key: mukhopadhyay2006
      role: "Maximum likelihood analysis of masked series-system lifetime data."
    - key: crowder2001
      role: "Reference monograph: Classical Competing Risks."
    - key: miyakawa1984
      role: "Early analysis of incomplete competing-risks data."
    - key: tsiatis1975
      role: "Nonidentifiability result for competing risks (classical)."
  gaps: "Coarsening-at-random foundation now cited: Heitjan-Rubin (1991) and Gill-van der Laan-Robins (1997) were added 2026-06-03 and tied to C1/C2/C3 in both Related Work and the ignorability paragraph, closing the longest-standing flagged gap (the framework invoked CAR conceptually but cited only Little-Rubin). Flehinger-2002 novelty boundary is explicit in the text (two-point comparison: masking enters as estimated nuisance vs. cancels under C1/C2/C3; their identifiability is implicit vs. our explicit rank theorem plus confounding-graph partial identifiability). Remaining optional, non-blocking: Yu (2012) random-partition masking; Reiser-Flehinger-Conn (1995) Technometrics piece and Lawless (2003) censoring text would be courtesy adds IF the primary target shifts to Technometrics; Sarhan 2004 is subsumed by the Sarhan 2001 entry. None are blockers for the IEEE TR / Lifetime Data Analysis primary path."
  survey_file: "prior-art-survey-2026-02-18.md"

experiments: []

venue:
  primary_target: "IEEE Transactions on Reliability"
  primary_rationale: "Home venue of the masked-cause series-system lineage (Usher-Hodgson 1988, Lin-Usher-Guess 1993, Miyakawa 1984 all appeared here). A distribution-agnostic likelihood with an explicit identifiability/rank theorem is squarely in scope, and theory-plus-simulation methods papers without field data are standard there. Reviewers already know the C1/C2/C3 lineage, so the novelty boundary against Flehinger is legible to them."
  preprint_step: "arXiv (stat.ME, cross-list stat.AP and cs.IT) with a Zenodo concept-DOI deposit; do this first so siblings can cite a stable DOI/ID, then submit the journal version."
  candidates:
    - name: "IEEE Transactions on Reliability"
      rank: 1
      fit: "high"
      scope: "Reliability methods and theory; masked-cause series-system estimation is a recurring topic here."
      sim_only_ok: "yes (theory + Monte Carlo validation is the norm; no field data required)"
      typical_length: "8 to 14 journal pages (double-column); current single-column draft compresses into range"
      format: "IEEE two-column journal template (IEEEtran); reformat at submission"
      rationale: "Primary. Direct lineage venue; identifiability theorem fits the audience."
    - name: "Lifetime Data Analysis"
      rank: 2
      fit: "high"
      scope: "Statistical theory and methods for time-to-event/competing-risks data."
      sim_only_ok: "yes (methods papers with simulation are standard)"
      typical_length: "20 to 30 pages (Springer single-column)"
      format: "Springer LaTeX (svjour3); light reformat"
      rationale: "Strong backup. Flehinger-Reiser-Yashchin 2002 (the closest precursor) appeared here, so the contribution boundary is maximally legible; coarsening-at-random and identifiability theory land well."
    - name: "Technometrics"
      rank: 3
      fit: "good"
      scope: "Statistics in the physical, chemical, and engineering sciences."
      sim_only_ok: "yes, but reviewers typically expect a real-data application OR a substantive simulation study; a purely formula-level methods paper is a harder sell"
      typical_length: "20 to 25 pages (Taylor & Francis interact class)"
      format: "T&F interact LaTeX; forward citations to in-prep work usually flagged"
      rationale: "Good scope (Reiser-Flehinger-Conn 1995 was here) but more applied emphasis; would likely require adding a worked simulation/application before it is competitive."
    - name: "Reliability Engineering and System Safety"
      rank: 4
      fit: "good"
      scope: "Reliability and risk/safety engineering, applied emphasis."
      sim_only_ok: "yes, but an engineering case study is the cultural expectation"
      typical_length: "10 to 15 pages (Elsevier elsarticle)"
      format: "Elsevier elsarticle; applied framing preferred"
      rationale: "Sarhan 2001 appeared here; fit is good but the venue leans toward applied system-safety over pure likelihood theory."
    - name: "Journal of Statistical Computation and Simulation"
      rank: 5
      fit: "moderate"
      scope: "Computational and simulation-based statistics."
      sim_only_ok: "yes (simulation is the venue's core)"
      typical_length: "15 to 25 pages"
      format: "Taylor & Francis"
      rationale: "Natural home for a companion simulation paper, less so for the foundational theory paper; keep as a fallback / companion-paper target."
    - name: "Journal of the American Statistical Association (Theory and Methods)"
      rank: 6
      fit: "moderate"
      scope: "Top-tier general statistics theory and methods."
      sim_only_ok: "yes in principle"
      typical_length: "25 to 35 pages"
      format: "ASA/T&F template"
      rationale: "High bar; the increment over Flehinger 2002 (hazard-level lifting plus the rank theorem) may read as specialized for a general-statistics flagship. Aspirational, not the first target."
    - name: "arXiv stat.ME + Zenodo"
      rank: 0
      fit: "high"
      scope: "Preprint/DOI deposit, not peer review."
      sim_only_ok: "n/a"
      typical_length: "n/a"
      format: "arXiv accepts the current article class as-is"
      rationale: "Deposit step that precedes journal submission; gives siblings a stable citation target."

review_history:
  - date: "2026-02-17"
    type: "self-review"
    findings_major: 2
    findings_minor: 7
    recommendation: "minor-revision"
    notes: "Quick pass. Mathematics correct. Two structural issues (Section 5 title undersells general-m result, R2 proof gap at w=1). Minor items: email, label placement, ToC, colorlinks, bibliography recency, DPI strictness phrasing, subsection title."
  - date: "2026-02-18"
    type: "self-review"
    findings_major: 2
    findings_minor: 5
    recommendation: "minor-revision"
    notes: "Thorough pass. Theorem 9(b) proof was a sketch (algebra from eq:ident-proof to h_j=h_j' missing); Remark 7 falsely claimed exponential hazards linearly dependent. Minor: j' undefined in C3, four prior-art refs missing from refs.bib, Thm 9(b) hypothesis stated as data condition not model condition, x_min,j missing from notation, companion bib entries dated 2025. All resolved later that day. File: review-2026-02-18.md."
  - date: "2026-03-14"
    type: "multi-agent-review"
    findings_major: 2
    findings_minor: 10
    recommendation: "minor-revision"
    notes: "Seven specialist agents (logic-checker, novelty-assessor, prose-auditor, citation-verifier, format-validator, two literature scouts). Major: Theorem 9(a) overclaimed iff (only sufficiency proven); Meilijson (1981) missing as intellectual ancestor. File: reviews/review-2026-03-14.md."
  - date: "2026-03-14"
    type: "multi-agent-review"
    findings_major: 2
    findings_minor: 5
    recommendation: "minor-revision"
    notes: "Round 2 (five specialist agents). All Round 1 issues resolved. New majors: Theorem 8(b) proof needs right-censored observations in the conditions; Theorem 9(c) bound q*d holds only when components within a super-component share parametric structure. Verdict: accept with minor revisions. File: reviews/review-2026-03-14-r2.md."
  - date: "2026-06-08"
    type: "multi-agent-review"
    findings_major: 0
    findings_minor: 2
    recommendation: "ready"
    notes: "Area chair ran all six lenses directly (sub-agent spawning unavailable, as in the 2026-06-04 run); proofs re-derived in Python/SymPy plus an independent optimizer, build run from scratch and tree restored. Assessed the 2026-06-08 revision (commit 7d2467d, made after the 2026-06-04 review): sharper abstract/contribution framing, added weak-supervision (cour2011partial, huellermeier2015superset) and C2-symmetry-lineage (sen2001masked, yu2010conditional) paragraphs, added nowik1990 cut-set characterization; a quality improvement, no new error. 0 Critical, 0 Major. Every load-bearing result re-verifies exactly (C1/C2/C3 cancellation; Theorem 8 rank identifiability with the rank-3 / null (1,-1,-1,1) witness; Theorem 9 Example-13 q=3 reduction; worked-example MLE in closed form and via independent optimizer; Remark 6 I(K;C_w)=ln(m/w)). Clean build: 30 pages, 0 undefined refs, 0 warnings, 0 overfull/underfull, 0 BibTeX warnings, 0 true orphans. Two cosmetic minors carried over (Hoadley triangular-array gloss; L(theta;D) vs L(theta)). Only required submission-time step is the deferred IEEEtran reformat. File: reviews/2026-06-08/review.md."

related_papers:
  - path: "~/github/papers/scrna-coarsening"
    rel: "extended-by"
    label: "Sibling paper applying the coarsening framework to single-cell RNA-seq; cites this work as towell2026masked."
  - path: "~/github/papers/spatial-coarsening"
    rel: "extended-by"
    label: "Sibling paper applying the framework to spatial transcriptomics; cites as towell2026masked."
  - path: "~/github/papers/dp-coarsening"
    rel: "extended-by"
    label: "Sibling paper on differential privacy as coarsening; cites as towell2026masked."
  - path: "~/github/papers/weaksup-coarsening"
    rel: "extended-by"
    label: "Sibling paper on weakly supervised learning as coarsening; cites as towell2026masked."
  - path: "~/github/papers/phenotype-coarsening"
    rel: "extended-by"
    label: "Sibling paper on phenotype coarsening; cites as towell2026masked."
  - path: "~/github/papers/reliability-estimation-in-series-systems"
    rel: "supersedes"
    label: "Authors's MS project (2023); this paper generalises the Weibull-specific treatment."
  - path: "~/github/papers/masked-series-companions"
    rel: "companion"
    label: "Companion suite (Weibull MLE, deterministic masking, weibull-masked-FIM, consequence analysis)."
  - path: "~/github/papers/mdrelax"
    rel: "implemented-by"
    label: "R package (mdrelax) and paper on relaxed C1/C2/C3 candidate-set models."
  - path: "~/github/rlang/maskedcauses"
    rel: "implemented-by"
    label: "R package: closed-form parametric MLE (Exp/Weibull) with composable observation functors."
  - path: "~/github/rlang/maskedhaz"
    rel: "implemented-by"
    label: "R package: arbitrary hazard functions via numerical integration; flexhaz/serieshaz stack."
  - path: "~/github/released/wei.series.md.c1.c2.c3"
    rel: "implemented-by"
    label: "Original R package implementing the C1/C2/C3 likelihood for Weibull series systems."
---

## Notes

Migrated from legacy `.papermill.md` on 2026-05-27. All recorded thesis, prior-art notes, venue plans, and review history preserved. The state file was promoted from a flat `findings` block to the schema's `findings_major / findings_minor / recommendation / notes` shape; the March 2026 multi-agent reviews stored under `.papermill/reviews/` were folded into the structured `review_history` (the originals remain in place for reference).

## Related Work and Software

This paper is the foundational reference for a series on masked-data coarsening. Five sibling papers (`scrna-coarsening`, `spatial-coarsening`, `dp-coarsening`, `weaksup-coarsening`, `phenotype-coarsening`, all under `~/github/papers/`) cite it as `towell2026masked` and apply the C1/C2/C3 framework outside reliability (single-cell genomics, spatial transcriptomics, differential privacy, weakly supervised learning, phenotype data).

Three R packages implement the framework: `maskedcauses` (closed-form Exp/Weibull, composable observation functors), `maskedhaz` (arbitrary hazard functions, builds on `flexhaz` and `serieshaz`), and the original `wei.series.md.c1.c2.c3` (Weibull-specific). Supporting infrastructure lives in `algebraic.mle`, `likelihood.model`, `hypothesize`, and `compositional.mle`. The `mdrelax` paper and R package develop the relaxed-conditions extension.

The paper supersedes the author's 2023 MS project (`reliability-estimation-in-series-systems`), which gave the Weibull-specific treatment that the present work lifts to arbitrary parametric hazards.

## Structure

| Section | Content |
|---|---|
| 1. Introduction | Motivation, related work, contribution list |
| 2. Series System Model | Theorems 1 to 3 (system reliability, pdf, hazard) |
| 3. Component Cause of Failure | Theorems 4 to 6 (joint, marginal, conditional distributions of K and T) |
| 4. Observational Model | Observation types, masked-data notation, likelihood table, dependency DAG |
| 5. The C1 C2 C3 Likelihood | Conditions, derivation, worked example, censored extensions, combined likelihood, identifiability theorem |
| 6. Maximum Likelihood Estimation | Log-likelihood (Theorem 10), score equations, asymptotics, practitioner recipe, worked Exponential example |
| 7. Common Hazard Specifications | Table: Exponential, Weibull, Pareto, Log-normal, Gamma |
| 8. Discussion | What the framework enables, relaxation of conditions, computation, software ecosystem |
| 9. Conclusion | Summary |

## Formal Results Inventory

| Type | Count | Notes |
|---|---|---|
| Theorems | 10 | System reliability (1), pdf (2), hazard (3), joint K,T (4), marginal K (5), conditional K given T (6), left-censored (7), interval-censored (8), combined likelihood (9), log-likelihood (10) |
| Conditions | 3 | C1 (candidate-set containment), C2 (symmetry), C3 (parameter independence of masking) |
| Definitions | 1 | Candidate-set separability |
| Remarks | 8 | Component independence, info-theoretic C2, diagnostic timing, common special case, covariate hazards, nested models, others |

## Log

- 2026-02-17: Initialized by papermill.
- 2026-02-17: Refreshed to 0.2.0 schema with YAML frontmatter.
- 2026-02-17: Quick review (minor-revision).
- 2026-02-17: Prior-art survey (added 2013 to 2025 references).
- 2026-02-17: Full refresh, filled novelty, venue candidates, companion papers, software ecosystem.
- 2026-02-18: Thesis refined: foundational reference, not submission-targeted; identifiability theorem as the key original result; venue updated to arXiv/OSF.
- 2026-02-18: Thorough self-review completed; all issues resolved same day. Theorem 9(b) proof expanded; Sections 2 and 3 compressed (citing the MS thesis); censoring treatment unified.
- 2026-02-18: Second prior-art survey (32 references screened). Added flehinger1998, flehinger2002, lin1996, kuo2000, craiu2006.
- 2026-02-19: Proof audit (all 12 results checked). Gap found in Theorem 8(b) Step 3: separability does not guarantee full column rank of augmented candidate-set matrix C-tilde. Hypothesis strengthened to require full column rank; proof rewritten in three lines. Remark 6 updated.
- 2026-03-14: Multi-agent review round 1 (seven agents). Two majors: Theorem 9(a) iff overclaim; Meilijson 1981 missing. Minor revision verdict.
- 2026-03-14: Multi-agent review round 2 (five agents). Round 1 fully resolved. New majors: Theorem 8(b) needs right-censored observations in the conditions; Theorem 9(c) bound q*d needs parameter-sharing qualifier. Accept with minor revisions.
- 2026-05-27 (init refresh): Migrated `.papermill.md` to `.papermill/state.md`. Promoted review entries to the canonical `findings_major / findings_minor / recommendation` shape and folded March 2026 multi-agent reviews into `review_history`. Added `related_papers` block linking the five sibling coarsening papers, the MS project, the masked-series-companions suite, and the four implementing R packages.
- 2026-05-27 (polish): Pre-flight pass. Added Acknowledgments, Data Availability, and Code Availability sections. Fixed two overfull hboxes introduced by the new sections (long institutional name; long GitHub URL). Updated `\date` and CITATION.cff `date-released`. Final build: 24 pages, zero LaTeX warnings, zero overfull or underfull boxes, zero undefined references. Stage bumped to `submission`. Pending items below.
- 2026-06-03 (papermill pipeline run): status, venue, thesis, prior-art, polish.
  - VENUE: replaced the flat candidate list with a ranked shortlist (scope fit, simulation-only acceptability, typical length, format constraint per venue). Primary peer-reviewed target set to IEEE Transactions on Reliability (lineage venue for Usher-Hodgson, Lin-Usher-Guess, Miyakawa; theory + Monte Carlo methods papers are standard there). Backups: Lifetime Data Analysis (rank 2, where Flehinger 2002 appeared), Technometrics (rank 3, would want a worked simulation/application), RESS (rank 4), JSCS (rank 5, companion-paper home), JASA T&M (rank 6, aspirational). arXiv stat.ME + Zenodo remains the deposit step that precedes journal submission.
  - THESIS: added a one-sentence claim and an explicit five-item contribution list to the thesis block (mechanism-first framing: masking factor cancels from the score under C1/C2/C3; deliverables are the distribution-agnostic likelihood and the rank-based identifiability theory).
  - PRIOR-ART: added the two foundational coarsening-at-random references that the framework had invoked only conceptually: heitjan1991 (Ann. Statist. 19:2244-2253, DOI 10.1214/aos/1176348396) and gill1997coarsening (Springer LNS 123, pp. 255-294, DOI 10.1007/978-1-4684-6316-3_14). Cited both in Related Work (CAR as the parent of C1/C2/C3) and in the ignorability paragraph (C1/C2/C3 stated as the masked-data specialization of CAR). Verified both render in the PDF; bibliography now has 44 entries. Confirmed the Flehinger-2002 novelty boundary is already explicit in the text and left it intact. Renamed the misleading BibTeX key Amma-2001 to sarhan2001 (author is Sarhan); updated its single cite site.
  - POLISH: fixed the one remaining overfull hbox (43pt, appendix R6/Wald-bridge region) by moving an inline arg-max expression to a display. Added the term coarsening at random to the abstract to align it with the strengthened body. Verified: 0 unresolved cross-references, 0 orphan citations (every cited key defined; every defined key cited), 0 undefined references, author metadata correct, abstract and all 7 figure/table captions and labels present. Bibliography style left as plainnat (author-year) for the preprint and the sibling-citation cascade; switching to IEEEtran numeric is a mechanical submission-time step recorded under Pending User Actions.
  - BUILD: full pdflatex + bibtex + pdflatex x2. Final: 27 pages, 0 LaTeX warnings, 0 undefined refs/citations, 0 overfull/underfull boxes, 0 BibTeX warnings.
- 2026-06-08 (multi-agent review, papermill): full editorial pass on the 2026-06-08 revision. All six lenses run directly by the area chair (sub-agent spawning unavailable). Verdict: ready (0 Critical, 0 Major, 2 cosmetic minors, 5 suggestions). Independently re-derived: worked-example MLE (closed form + multi-start optimizer; scores ~1e-15; total rate 4/18.7 exact), symbolic C3 score cancellation, Theorem 8(a) flat-ridge and 8(b) rank witnesses (rank 3, null (1,-1,-1,1); identity-row rank m), Theorem 9 Example-13 super-components (q=3 reduced, q=5 full) and 9(b) (|P_k|-1)d count, Remark 6 mutual-information identity and monotonicity. From-scratch build clean (30 pages, 0 undefined refs, 0 warnings, 0 overfull/underfull, 0 BibTeX warnings); tree restored after build. Citation integrity: 0 undefined, 0 true orphans, five new entries (nowik1990, sen2001masked, yu2010conditional, cour2011partial, huellermeier2015superset) well-formed and accurately attached. Carried-over cosmetics: Hoadley triangular-array gloss (Remark 8); L(theta;D) vs L(theta). Freshness limitation: no live web search this run (verdict rests on the 2026-02-18 survey + training knowledge to Jan 2026); recommend a confirmatory pass at submission. Files under reviews/2026-06-08/.

## Pending User Actions

- **Zenodo DOI deposit**: Once ready to release, push a git tag (e.g., `v1.0`) and deposit on Zenodo via the GitHub integration. Update `CITATION.cff` with the resulting `doi:` field and add the same DOI to the paper's footnote on the first page if desired.
- **arXiv submission**: Upload `paper.tex` + `refs.bib` + `image/` to arXiv under `stat.ME`. Cross-list to `stat.AP` (applied) and possibly `cs.IT` (information theory, given the C2 information-theoretic discussion).
- **Sibling-paper citation cascade**: After arXiv ID issues, update the bib entries `towell2026masked` in each of `scrna-coarsening`, `spatial-coarsening`, `dp-coarsening`, `weaksup-coarsening`, `phenotype-coarsening` with the assigned arXiv ID and DOI.
- **Optional refinements (deferred, all minor)**: Round 2 reviewer suggestions still on the table: (m1) move contribution list earlier in the introduction; (m4) promote the censored-beta_i parenthetical to a sentence; (m5) align `L(theta; D)` notation with the rest of the paper's `L(theta)` convention.
- **Journal reformat at submission**: the working draft is 11pt single-column `article` with `plainnat` author-year. IEEE Transactions on Reliability (primary target) requires the IEEEtran two-column class with numeric citation style; reformat at submission, not before (author-year is preferable for the arXiv preprint and the sibling-citation cascade). Lifetime Data Analysis (backup) uses Springer svjour3 with light changes only.
- **If retargeting to Technometrics**: add a worked simulation or application (the methodology-auditor flagged that the n=6 algebra example under-illustrates the asymptotic regime; `maskedhaz` can produce an n=200 recovery study), and add Reiser-Flehinger-Conn (1995) and Lawless (2003) as courtesy citations. Not needed for IEEE TR / LDA.
