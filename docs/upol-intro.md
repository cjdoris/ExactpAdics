---
chapter: 12
---

# Univariate polynomials

The new type `RngUPol_FldPadExact` is the exact analogue of `RngUPol[FldPad]`, representing univariate polynomials with coefficients in an exact p-adic field. Its elements, the polynomials, have type `RngUPolElt_FldPadExact` which is analogous to `RngUPolElt[FldPad]`.

Valuations of polynomials are represented by the new type `Val_RngUPolElt_FldPad` which is essentially a function taking an index `i` and returning the valuation of the `i`th coefficient.

## Contents

{% include chapter-contents.md %}