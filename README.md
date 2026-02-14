# Masked Causes of Failure in Series Systems: A Likelihood Framework

**Alexander Towell**
&middot; [lex@metafunctor.com](mailto:lex@metafunctor.com)
&middot; [ORCID 0000-0001-6443-9897](https://orcid.org/0000-0001-6443-9897)

## Abstract

We develop a distribution-agnostic likelihood framework for estimating component reliability from series system data when the component cause of failure is masked. Three sufficient conditions on the masking mechanism (C1--C2--C3) allow the unknown masking distribution to be eliminated from the likelihood, yielding likelihood contributions expressed entirely in terms of component hazard and reliability functions. The framework covers exact failures with masked cause, right-censored, left-censored, and interval-censored observations.

A key result is a **formal identifiability theorem** that characterizes precisely when component parameters can be recovered from masked data: a *necessary* condition shows that diagnostically confounded components are non-identifiable, and a *sufficient* condition guarantees identifiability when candidate sets separate every component pair and component hazard functions are linearly independent.

We provide instantiations for five common parametric families (Exponential, Weibull, Pareto, Log-normal, Gamma).

## Key Results

| Result | Description |
|--------|-------------|
| **Theorems 1--3** | System reliability, density, and hazard from component hazard functions |
| **Theorems 4--6** | Joint, marginal, and conditional distributions of component cause of failure |
| **Theorem 7** | Likelihood contribution under C1--C2--C3 for all four observation types |
| **Theorem 8 (Identifiability)** | Necessary and sufficient conditions for parameter recovery under masking |
| **Table 2** | Hazard specifications for five parametric families |
| **Section 6** | General MLE recipe: log-likelihood, score equations, practitioner workflow |

## Building

```bash
pdflatex paper.tex && bibtex paper && pdflatex paper.tex && pdflatex paper.tex
```

## Software Ecosystem

The framework is implemented as a layered R package stack:

```
flexhaz          Component lifetime distributions (hazard-first)
    |
serieshaz        Series system composition (additive hazards)
    |
maskedhaz        C1-C2-C3 masked-data likelihood (this paper)
    |
maskedcauses     High-level interface: data generation, observation schemes, fitting
```

| Package | GitHub |
|---------|--------|
| [flexhaz](https://github.com/queelius/flexhaz) | Hazard-based lifetime distributions |
| [serieshaz](https://github.com/queelius/serieshaz) | Series system distributions |
| [maskedhaz](https://github.com/queelius/maskedhaz) | Masked-cause likelihood models |
| [maskedcauses](https://github.com/queelius/maskedcauses) | End-to-end masked reliability analysis |
| [wei.series.md.c1.c2.c3](https://github.com/queelius/wei.series.md.c1.c2.c3) | Weibull-specific MLE with Fisher information |
| [algebraic.mle](https://github.com/queelius/algebraic.mle) | MLE algebra and bootstrap confidence intervals |

## Companion Papers

| Paper | Status |
|-------|--------|
| [Exponential case: closed-form FIM](https://github.com/queelius/expo-masked-fim) | Draft complete |
| [Model selection (homogeneous Weibull LRT)](https://github.com/queelius/reliability-estimation-in-series-systems-model-selection) | Draft complete |
| [Master's project (original Weibull treatment)](https://github.com/queelius/reliability-estimation-in-series-systems) | Published |
| Weibull MLE companion | Planned |

## Citation

```bibtex
@article{towell2025masked,
  author  = {Towell, Alexander},
  title   = {Masked Causes of Failure in Series Systems: A Likelihood Framework},
  year    = {2025},
  url     = {https://github.com/queelius/masked-causes-in-series-systems}
}
```

## License

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/)
