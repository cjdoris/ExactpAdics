---
chapter: 13
---

# Multivariate polynomials

The new type `RngMPol_FldPadExact` is the exact p-adic analogue of `RngMPol`, representing multivariate polynomials with coefficients in an exact p-adic field. Its elements, the polynomials, have type `RngMPolElt_FldPadExact` which is analogous to `RngMPolElt`.

Valuations of polynomials are represented by the new type `Val_RngMPolElt_FldPad` which is essentially a function taking an exponent vector `e` and returning the valuation of the `e`th coefficient.

## Contents

{% include chapter-contents.md %}