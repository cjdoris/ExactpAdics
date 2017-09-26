---
chapter: 90
---

# New types

## FldPadExact, FldPadExactElt

[Exact p-adic fields](pad-00-intro) and their elements.

## Val_FldPadElt, PowVal_FldPadElt

[Valuations of p-adic numbers](pad-04-elt-basics#val_fldpadelt), and the power structure of such things.

## RngUPol_FldPadExact, RngUPolElt_FldPadExact

[Rings of univarate polynomials over exact p-adic fields](upol-00-intro) (the exact analogue of `RngUPol[FldPad]`) and their elements.

## Val_RngUPolElt_FldPad, PowVal_RngUPolElt_FldPad

[Valuations of univariate polynomials over p-adic fields](upol-02-elt-basics#val_rngupolelt_fldpad), and the power structure of such things.

## RngMPol_FldPadExact, RngMPolElt_FldPadExact

[Rings of multivariate polynomials over exact p-adic fields](mpol-00-intro), and their elements.

## Val_RngMPolElt_FldPad, PowVal_RngMPolElt_FldPad

[Valuations of multivariate polynomials over p-adic fields](mpol-02-elt-basics#val_rngmpolelt_fldpad), and the power structure of such things.

## HasseHerbTransFunc

[Hasse-Herbrand transition functions](pad-06-ramification#hasse-herbrand-transition-functions).

## ExtDataFldPadExact

[Extensions of exact p-adic fields](pad-03-basics#extensions).

## HomFldPadExact

Homomorphisms of exact p-adic fields.

## XPGettr

Computations with lazy p-adic dependencies.

## ExactpAdics_Getter_Store

Internal book-keeping type.

## TmpFldPadExact, TmpFldPadExactElt

**Experimental/undocumented feature.** Exact p-adic fields and their elements in a different format: instead of storing an approximation and updating it, recompute it to a desired precision each time. Possibly useful for preventing the storage of large numbers of intermediate variables at the expense of possibly more computation.

## RngPadExact, RngPadExactElt

**Experimental/undocumented feature.** Rings of p-adic integers, and their elements.