# Growth criteria for weighted reciprocal series

**twinheterodox · Prepared with Codex · 13 November 2026**

This repository contains two papers on irrationality criteria based on growth, without assumptions on prime factors of the sequence.

## Nonincreasing weights

**Growth criteria for reciprocal series with nonincreasing weights**

[Read the paper (PDF, 9 pages)](output/pdf/weighted-family-growth.pdf) · [LaTeX source](paper/weighted-family-growth.tex)

Fix positive integer weights $w_0\ge\cdots\ge w_{d-1}$ with total weight at least two, and define $c>1$ by

$$
(c-1)^2\sum_{j=0}^{d-1}w_jc^j=w_0.
$$

For every strictly increasing sequence of positive integers $(a_n)$ satisfying

$$
\limsup_{n\to\infty}\frac{\log a_n}{c^n}=\infty,
$$

the series

$$
\sum_{n=1}^{\infty}\frac{1}{a_n^{w_0}\cdots a_{n+d-1}^{w_{d-1}}}
$$

is irrational. The proof allows irregular growth. For every nonconstant nonincreasing profile, the sufficient base improves on the general criterion of [Barreto, Kang, Kim, Kovač and Zhang](https://arxiv.org/abs/2601.21442v3), including the classical base-2 fallback. Staircase weights $(d,d-1,\ldots,1)$ give $c=(d+1)^{1/d}$; in particular, weights $(3,2,1)$ give $\sqrt[3]{4}$ instead of 2.

The paper also treats nondecreasing sequences and positive integer numerators under polynomial size bounds. It extends the earlier $(2,1)$ result below; optimal growth thresholds remain open in general.

## The earlier √3 criterion

**A √3 growth criterion for weighted reciprocal series**

[Read the paper (PDF, 6 pages)](output/pdf/weighted-reciprocal-growth.pdf) · [LaTeX source](paper/weighted-reciprocal-growth.tex) · [Hexagon 2611.00428v1](https://hexagonmath.org/2611.00428v1)

For every strictly increasing sequence of positive integers $(a_n)$ satisfying

$$
\limsup_{n\to\infty}\frac{\log a_n}{(\sqrt{3})^n}=\infty,
$$

the series

$$
\sum_{n=1}^{\infty}\frac{1}{a_n^2a_{n+1}}
$$

is irrational. The criterion allows irregular growth and requires no information about the prime factors of the sequence.

This improves the sufficient growth base from 2 to √3 for weights (2,1) in the criterion of [Barreto, Kang, Kim, Kovač and Zhang](https://arxiv.org/abs/2601.21442v3). Their rational constructions occur at base √2, so the optimal threshold remains open. For example, the new criterion applies to $a_n=\lceil\exp((9/5)^n)\rceil$. The paper also proves a version for nondecreasing sequences and positive integer numerators under polynomial size bounds.

## Build

From the repository root, build the general-weight paper with:

```bash
bash build-family.sh
```

Build the earlier two-weight paper with:

```bash
bash build.sh
```

Each script runs pdfLaTeX three times and writes the corresponding file under `output/pdf/`. The general-weight paper additionally uses booktabs; both require the standard AMS, Latin Modern, microtype, geometry and hyperref packages. Temporary build files go in `tmp/latex/`. Bibliographies are included in the TeX sources.

## Verification

Two cooperating Codex sessions separately reviewed the complete general-weight proof and manuscript for correctness and exposition. The [general-weight review summary](verification/weighted-family-review-summary.json) identifies the reviewed versions and subsequent presentation changes. No fresh external audit of that generalization is claimed.

For the earlier √3 paper, an independent mathematical audit on 13 November 2026 found no error or missing hypothesis in the underlying proof. A separate review checked its presentation. Its [audit summary](verification/audit-summary.json) distinguishes those scopes. None of these reviews is formal verification; neither proof requires numerical certificates.

The published file hashes can be checked with `sha256sum -c SHA256SUMS`.

## License

The repository is distributed under the [Apache License 2.0](LICENSE).
