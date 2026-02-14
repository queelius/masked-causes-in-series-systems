# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an academic paper repository for a **distribution-agnostic likelihood framework** for estimating component reliability from masked series system data. The paper develops the general C1--C2--C3 likelihood framework without specializing to any particular lifetime distribution. Distribution-specific treatments (e.g., Weibull simulations) are deferred to companion papers.

## Build Commands

### Building the Paper (from root directory)

```bash
pdflatex paper.tex && bibtex paper && pdflatex paper.tex && pdflatex paper.tex
```

The paper is pure LaTeX (no R Markdown, no lualatex dependency).

### Building Figures from LaTeX (from root directory)

```bash
./makefig.sh image/dep_model_standalone.tex
```

Compiles `.tex` to PDF and converts to PNG.

## Architecture

- **`paper.tex`**: Main LaTeX paper (pure LaTeX, hand-authored)
- **`refs.bib`**: Bibliography
- **`image/`**: TikZ figures for the paper
  - `dep_model.tex` / `dep_model_standalone.tex`: Data generating process dependency diagram
  - `series.tex` / `series_standalone.tex`: Series system diagram
- **`rmarkdown/`**: Legacy R Markdown source (Weibull-specific master's project version)
- **`conditions.md`**: Reference notes on C1--C2--C3 conditions
- **`results/`**: Legacy simulation scripts (Weibull-specific, not used by current paper)

## Paper Structure

1. Introduction
2. Series System Model (Theorems 1--3: reliability, pdf, hazard)
3. Component Cause of Failure (Theorems 4--6: joint/marginal/conditional distributions)
4. Observational Model (observation types, masked data notation, likelihood table)
5. The C1--C2--C3 Likelihood (core contribution: three conditions, derivation, real-world example)
6. Maximum Likelihood Estimation (log-likelihood, score equations, practitioner recipe)
7. Instantiation for Common Distribution Families (table: Exp, Weibull, Pareto, Log-normal, Gamma)
8. Discussion (relaxations, computational considerations, software ecosystem)
9. Conclusion

## Companion Software

- R package: https://github.com/queelius/wei.series.md.c1.c2.c3
- MLE utilities: https://github.com/queelius/algebraic.mle
