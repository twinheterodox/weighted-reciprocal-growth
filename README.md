# A √3 growth criterion for weighted reciprocal series

**twinheterodox · Prepared with Codex · 13 November 2026**

[Read the paper (PDF, 6 pages)](output/pdf/weighted-reciprocal-growth.pdf) · [LaTeX source](paper/weighted-reciprocal-growth.tex)

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

From the repository root, run:

```bash
bash build.sh
```

This runs pdfLaTeX three times and writes `output/pdf/weighted-reciprocal-growth.pdf`. It requires the standard AMS, Latin Modern, microtype, geometry and hyperref packages. Temporary build files go in `tmp/latex/`. The bibliography is included in the TeX source.

## Verification

An independent mathematical audit on 13 November 2026 found no error or missing hypothesis in the underlying proof. A separate review checked the manuscript's presentation. The [audit summary](verification/audit-summary.json) distinguishes their scopes and the subsequent editorial revisions. These are mathematical reviews, not formal verification. The proof has no numerical certificate dependencies.

The published file hashes can be checked with `sha256sum -c SHA256SUMS`.

## License

The repository is distributed under the [Apache License 2.0](LICENSE).
