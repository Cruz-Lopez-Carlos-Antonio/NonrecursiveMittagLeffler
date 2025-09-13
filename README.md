# A Non-recursive Formula for the High-order Derivative of the Two-Parameter Mittag-Leffler Function

This repository contains the theoretical development and Python implementations of a **non-recursive formula** for the high-order derivatives of the two-parameter Mittag-Leffler function (2PMLF).

---

## Background

The two-parameter Mittag-Leffler function is defined as:

$$
E_{\alpha,\beta}(z) = \sum_{k=0}^\infty \frac{z^k}{\Gamma(\alpha k + \beta)}, \quad \Re(\alpha)>0, \ \beta \in \mathbb{C}.
$$

It is considered the **Queen of fractional calculus**, since many analytical solutions of fractional differential equations are written in terms of this function and its derivatives.

---

## Recursive Formulas in the Literature

The classical recursive expression for derivatives (Djrbashian–Garrappa–Popolizio) is:

$$
E_{\alpha,\beta}^{(n)}(z) = \sum_{j=0}^n c_j^{(n)} \, E_{\alpha,\beta-\alpha j}(z),
$$

where the coefficients $c_j^{(n)}$ are defined recursively.

---

## Our Contribution

We provide a **non-recursive expression** for the coefficients, written in terms of nested sums and Stirling numbers of the first kind.  

Main formula:

$$
E_{\alpha,\beta}^{(n)}(z) = \sum_{l=0}^n b_l^{(n)} \, E_{\alpha,\beta-\alpha l}(z),
$$

with explicit non-recursive coefficients $b_l^{(n)}$.

---

## Algorithms

This repository includes Python 3 implementations for:

1. **Stirling numbers of the first kind**  
2. **Nested sums $G(j,n)$**  
3. **Symbolic expressions for $G(j,n)$**

---

## Applications

The developed formula is relevant for the analytical solution of problems in **nuclear engineering**, including:

- Fractional Bateman equations  
- Fractional neutron point kinetics  
- Non-exponential kinetics in complex systems  

---

## References

- R. Gorenflo, A.A. Kilbas, F. Mainardi, S. Rogosin, *Mittag-Leffler Functions, Related Topics and Applications*. Springer, 2020.  
- R. Garrappa, M. Popolizio, *Computing the Matrix Mittag-Leffler Function with Applications to Fractional Calculus*. J. Sci. Comput. 77 (2018), 129–153.  
- C.-A. Cruz-López, G. Espinosa-Paredes, *Fractional Radioactive Decay Law and Bateman Equations*. Nucl. Eng. Technol. 54 (2022), 275–282.  

---
