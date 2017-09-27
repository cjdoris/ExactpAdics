---
chapter: 13
section: 1
headings:
  - Creation
  - Basic properties
---

# Basic operations on multivariate polynomial rings

{% include jump-list.md %}

## Creation

> **PolynomialRing** (K :: *FldPadExact*, n :: *RngIntElt*)
>
> -> *RngMPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The ring of polynomials in `n` indeterminates with coefficients in `K`.

## Basic properties

> **BaseRing** (R :: *RngMPol_FldPadExact*)
>
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The ring of coefficients of `R`.

> **Rank** (R :: *RngMPol_FldPadExact*)
>
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The rank of `R`: the number of indeterminates.