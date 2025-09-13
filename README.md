# A Non-recursive Formula for the High-order Derivative of the Two-Parameter Mittag-Leffler Function

This repository is one of the research products of the project:

*“Desarrollo de modelos fenomenológicos energéticos de orden fraccional, para la optimización y simulación en reactores nucleares de potencia”*,  

funded by the **Consejo Nacional de Humanidades, Ciencia y Tecnología (CONAHCYT)** under the program *“Estancias Posdoctorales por México, 2022”*, and by the **Basic Science and Frontier Project 2023-2024**, reference **CBF-2023-2024-2023**.

---

## Purpose

The non-recursive formula developed here allows **efficient and direct computation** of high-order derivatives of the 2PMLF, avoiding recursive definitions and enabling pre-computations.  

This is useful for:

- Developing analytical and numerical solutions of **fractional differential equations**.  
- Modeling **memory effects** and **anomalous diffusion** in physics and engineering.  
- Applications in **nuclear engineering**, such as fractional Bateman equations and fractional neutron point kinetics.  
- More general **fractional models** in pharmacokinetics, transport processes, and complex systems.

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

## Example (Python)

```python
# Example: computing Stirling numbers of the first kind
from stirling import stirlings

vector = []
stirlings(6, vector)
print("Row for n=6:", vector[-1])

# Example: computing nested sums G(j,n)
from nested_sums import Coeff_G

a = [11.9 - u for u in range(0, 7)]  # Example values
vector_test = []
Coeff_G(6, vector_test, a)
print("Row for n=6:", vector_test[-1])
