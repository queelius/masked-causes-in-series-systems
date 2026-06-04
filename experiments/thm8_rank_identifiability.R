## thm8_rank_identifiability.R
##
## Backs the corrected Theorem 8 (identifiability under C1-C2-C3):
## full column rank of the augmented candidate-set matrix C-tilde is
## SUFFICIENT for identifiability, and separability alone is NOT
## (the pre-correction draft claimed separability + linearly
## independent hazards suffices, which is false).
##
## Two experiments:
##   (#5) Refutation: the m=4 separating-but-rank-deficient mechanism
##        S = {{1,2},{3,4},{1,3},{2,4}} has a flat likelihood ridge
##        along a = (1,-1,-1,1), so distinct parameter vectors give
##        identical likelihood despite separability and linearly
##        independent realized hazards.
##   (#11) Link: the smallest eigenvalue of the Fisher information
##        (a local identifiability proxy) collapses to ~0 exactly when
##        rank(C-tilde) < m, and is bounded away from 0 when
##        rank(C-tilde) = m.
##
## Run: Rscript experiments/thm8_rank_identifiability.R
## Writes: experiments/thm8_results.rds and prints a summary.

set.seed(20260603)

## ---------------------------------------------------------------------------
## Candidate-set machinery
## ---------------------------------------------------------------------------

#' Augmented candidate-set matrix: rows are indicator vectors of the
#' candidate sets, plus an all-ones row (from the total-hazard equation).
augmented_C <- function(sets, m) {
  C <- t(sapply(sets, function(s) as.integer(seq_len(m) %in% s)))
  rbind(C, rep(1L, m))
}

#' Separating: every component pair distinguished by some candidate set.
is_separating <- function(sets, m) {
  for (i in seq_len(m - 1L)) for (j in (i + 1L):m) {
    if (!any(vapply(sets, function(s) (i %in% s) != (j %in% s), logical(1))))
      return(FALSE)
  }
  TRUE
}

## ---------------------------------------------------------------------------
## Exponential series-system masked-cause log-likelihood (C1-C2-C3)
## ---------------------------------------------------------------------------
## Component j has constant hazard theta_j > 0. For an exact failure at
## time t with candidate set c: loglik contribution
##   -t * sum_l theta_l + log( sum_{j in c} theta_j ).
## For a right-censored obs at tau: -tau * sum_l theta_l.

#' Simulate a masked-cause exponential series-system data set.
sim_data <- function(theta, sets, n, cens_frac = 0.3, tau = 5) {
  m <- length(theta)
  rows <- vector("list", n)
  for (i in seq_len(n)) {
    comp_times <- rexp(m, rate = theta)
    sys_t <- min(comp_times); k <- which.min(comp_times)
    if (runif(1) < cens_frac || sys_t > tau) {
      rows[[i]] <- list(t = min(sys_t, tau), cens = TRUE, c = NA)
    } else {
      # candidate set: a randomly chosen set that CONTAINS the true cause
      containing <- Filter(function(s) k %in% s, sets)
      cset <- containing[[sample.int(length(containing), 1)]]
      rows[[i]] <- list(t = sys_t, cens = FALSE, c = cset)
    }
  }
  rows
}

neg_loglik <- function(log_theta, data) {
  theta <- exp(log_theta)
  tot <- sum(theta)
  ll <- 0
  for (r in data) {
    ll <- ll - r$t * tot
    if (!r$cens) ll <- ll + log(sum(theta[r$c]))
  }
  -ll
}

#' Same negative log-likelihood but parametrized in theta directly (theta > 0).
#' In theta-space the Theorem-8 null direction a is a straight line, so exact
#' likelihood flatness along a forces a^T H a = 0 EXACTLY; this is the correct
#' coordinate system for the FIM-eigenvalue-vs-rank demonstration (the
#' log-theta Hessian mixes in a finite-sample gradient-curvature term that
#' masks the zero eigenvalue).
neg_loglik_theta <- function(theta, data) {
  if (any(theta <= 0)) return(1e12)
  tot <- sum(theta)
  ll <- 0
  for (r in data) {
    ll <- ll - r$t * tot
    if (!r$cens) ll <- ll + log(sum(theta[r$c]))
  }
  -ll
}

## ---------------------------------------------------------------------------
## Experiment 5: refutation via flat likelihood ridge
## ---------------------------------------------------------------------------

exp5 <- function() {
  m <- 4
  sets <- list(c(1,2), c(3,4), c(1,3), c(2,4))
  Ct <- augmented_C(sets, m)
  r <- qr(Ct)$rank
  sep <- is_separating(sets, m)
  a <- c(1, -1, -1, 1)                       # claimed null vector
  resid <- as.numeric(Ct %*% a)

  ## Flat-ridge check: along theta(s) = theta0 * exp(s * a) the EXACT-failure
  ## candidate-set sums sum_{j in c} theta_j are NOT preserved (exponential
  ## hazards are nonlinear in the log-parametrization), so we instead verify
  ## the linearized non-identifiability the theorem is about: the directional
  ## curvature of the population objective along a is zero at theta0 with
  ## equal rates, which is exactly when sum_{j in c} theta_j is constant to
  ## first order. Use equal-rate theta0 so the null direction is exactly flat.
  theta0 <- rep(1.0, m)                      # equal rates: sum over any set fixed under a
  ## with equal theta and sum_{j in c} a_j = 0 for every c, the perturbation
  ## theta0 + eps*a keeps every candidate-set sum equal to |c| to first order
  set_sums_0   <- sapply(sets, function(s) sum(theta0[s]))
  set_sums_eps <- sapply(sets, function(s) sum((theta0 + 1e-6 * a)[s]))
  total_0   <- sum(theta0)
  total_eps <- sum(theta0 + 1e-6 * a)
  max_setsum_change <- max(abs(set_sums_eps - set_sums_0))
  total_change <- abs(total_eps - total_0)

  ## Numerically: fit twice from two starts offset along +a and -a; with a
  ## genuinely flat ridge the fitted total hazards agree but individual rates
  ## differ. Large-n exact-failure-only data, equal truth.
  data <- sim_data(theta0, sets, n = 4000, cens_frac = 0.3, tau = 8)
  fitA <- optim(log(theta0) + 0.4 * a, neg_loglik, data = data,
                method = "BFGS", control = list(maxit = 1000))
  fitB <- optim(log(theta0) - 0.4 * a, neg_loglik, data = data,
                method = "BFGS", control = list(maxit = 1000))
  thA <- exp(fitA$par); thB <- exp(fitB$par)
  list(
    m = m, sets = sets, rank_Ctilde = r, m_target = m,
    separating = sep, null_vector = a, Ctilde_times_a = resid,
    max_candidate_set_sum_change_along_a = max_setsum_change,
    total_hazard_change_along_a = total_change,
    fit_from_plus_a  = thA, fit_from_minus_a = thB,
    loglik_plus  = -fitA$value, loglik_minus = -fitB$value,
    loglik_gap = abs(fitA$value - fitB$value),
    total_hazard_plus  = sum(thA), total_hazard_minus = sum(thB),
    indiv_rate_maxdiff = max(abs(thA - thB))
  )
}

## ---------------------------------------------------------------------------
## Experiment 11: smallest FIM eigenvalue vs rank(C-tilde)
## ---------------------------------------------------------------------------
## Observed Fisher information at the truth, computed by numerical Hessian of
## the negative log-likelihood. Local identifiability <=> FIM nonsingular.
## We expect lambda_min(FIM) ~ 0 iff rank(C-tilde) < m.

num_hessian <- function(fn, x, eps = 1e-4, ...) {
  p <- length(x); H <- matrix(0, p, p)
  for (i in seq_len(p)) for (j in seq_len(p)) {
    xpp <- x; xpp[i] <- xpp[i]+eps; xpp[j] <- xpp[j]+eps
    xpm <- x; xpm[i] <- xpm[i]+eps; xpm[j] <- xpm[j]-eps
    xmp <- x; xmp[i] <- xmp[i]-eps; xmp[j] <- xmp[j]+eps
    xmm <- x; xmm[i] <- xmm[i]-eps; xmm[j] <- xmm[j]-eps
    H[i,j] <- (fn(xpp,...) - fn(xpm,...) - fn(xmp,...) + fn(xmm,...)) / (4*eps^2)
  }
  (H + t(H)) / 2
}

exp11 <- function() {
  m <- 4
  theta_true <- c(0.7, 1.1, 1.6, 0.9)        # distinct rates
  designs <- list(
    "full-rank (singletons)"      = list(c(1),c(2),c(3),c(4)),
    "full-rank (mixed)"           = list(c(1,2),c(2,3),c(3,4),c(1),c(4)),
    "rank-deficient (separating)" = list(c(1,2),c(3,4),c(1,3),c(2,4)),
    "rank-deficient (chain)"      = list(c(1,2),c(2,3),c(3,4))
  )
  out <- lapply(names(designs), function(nm) {
    sets <- designs[[nm]]
    Ct <- augmented_C(sets, m); r <- qr(Ct)$rank
    data <- sim_data(theta_true, sets, n = 6000, cens_frac = 0.3, tau = 8)
    # Observed FIM in theta-space (correct coordinates: the null direction a is
    # a straight line here, so rank deficiency shows as a ~0 eigenvalue).
    H <- num_hessian(neg_loglik_theta, theta_true, data = data)
    ev <- sort(eigen(H, symmetric = TRUE, only.values = TRUE)$values)
    # normalize by the largest eigenvalue so "near zero" is scale-free
    ev_norm <- ev / ev[length(ev)]
    list(design = nm, rank_Ctilde = r, full_rank = (r == m),
         separating = is_separating(sets, m),
         fim_min_eig = ev[1], fim_max_eig = ev[length(ev)],
         fim_min_eig_normalized = ev_norm[1],
         fim_condition = ev[length(ev)] / max(ev[1], .Machine$double.eps))
  })
  out
}

## ---------------------------------------------------------------------------
## Driver
## ---------------------------------------------------------------------------

cat("=== Experiment 5: refutation of separability-alone sufficiency ===\n")
e5 <- exp5()
cat(sprintf("  m=%d, S={{1,2},{3,4},{1,3},{2,4}}\n", e5$m))
cat(sprintf("  rank(C-tilde) = %d of %d ; separating = %s\n",
            e5$rank_Ctilde, e5$m_target, e5$separating))
cat(sprintf("  C-tilde %% a (a=(1,-1,-1,1)) = [%s]  (zero => a in null space)\n",
            paste(round(e5$Ctilde_times_a, 6), collapse=", ")))
cat(sprintf("  along a at equal rates: max candidate-set-sum change = %.2e, total-hazard change = %.2e\n",
            e5$max_candidate_set_sum_change_along_a, e5$total_hazard_change_along_a))
cat(sprintf("  two fits offset by +-0.4a: loglik gap = %.4f (small => flat ridge)\n", e5$loglik_gap))
cat(sprintf("  total hazard:  +a fit = %.4f, -a fit = %.4f (agree)\n",
            e5$total_hazard_plus, e5$total_hazard_minus))
cat(sprintf("  individual-rate max |diff| = %.4f (large => non-identified components)\n",
            e5$indiv_rate_maxdiff))

cat("\n=== Experiment 11: smallest FIM eigenvalue vs rank(C-tilde) ===\n")
e11 <- exp11()
cat(sprintf("  %-30s rank full? sep?  lambda_min/lambda_max   cond(FIM)\n", "design"))
for (d in e11) {
  cat(sprintf("  %-30s  %d   %-5s %-5s  %18.3e   %10.3g\n",
              d$design, d$rank_Ctilde, d$full_rank, d$separating,
              d$fim_min_eig_normalized, d$fim_condition))
}
cat("  (normalized lambda_min ~0 iff rank(C-tilde) < m: local non-identifiability)\n")

saveRDS(list(exp5 = e5, exp11 = e11, seed = 20260603),
        "experiments/thm8_results.rds")
cat("\nSaved experiments/thm8_results.rds\n")
