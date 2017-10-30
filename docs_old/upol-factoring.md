---
chapter: 12
section: 3
headings:
  - Hensel lifting
  - Roots
  - Factorization
---

# Roots and factorization

{% include jump-list.md %}

## Hensel lifting

> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, x)
>
> **IsHenselLiftable** (f :: *RngUPolElt*, x :: *FldPadExact*)
>
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True if `f` and `x` satisfy Hensel's lemma. That is, `f` and `x` are both integral and v(`f`(`x`)) > 2 v(`f`'(x)).

If so, Hensel's lemma tells us there is a unique root of `f` within a certain distance of `x`. The second return value is the Hensel-lifted root.

**Parameters.**

* `Strategy`: Used at various points to avoid precision errors. (Default: `"default"`)
* `ShiftSlope`: If `false`, ignored. If `true`, shift the valuation of `x` by the negative of its valuation and shift the slope of `f` the corresponding amount. If `"weak"` then do the same but using the weak valuation of `x`. (Default: `"false"`)
* `ShiftValuation`: If `false`, ignored. If `true`, shift the valuation of `f` by the negative of the minimum valuation of its coefficients. If `"Weak"` then do the same but using the weak valuation of `f`. (Default: `"false"`)

> **HenselLift** (f :: *RngUPolElt_FldPadExact*, x)
>
> **HenselLift** (f :: *RngUPolElt*, x :: *FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Hensel lifts an approximation to a root of `f`.

Equivalent to calling `IsHenselLiftable(f,x)`, raising an error if it returns false, and then returning the second value.

**Parameters.** As for `IsHenselLiftable(f,x)`.

> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if `f` and `g` satisfy Hensel's lemma for factors of univariate polynomials. That is, `f` and `g` are both integral and v(`f - g * (f div g)`) > 2 * v(`Resultant(g, f div g)`).

If so, Hensel's lemma tells us there is a unique factor of `f` within a certain distance of `g`. The second return value is the Hensel-lifted factor.

**Parameters.**

* `Strategy`: Used at various points to avoid precision errors. (Default: `"default"`)
* `ShiftSlope`: If `false`, ignored. If `true`, shift the slopes of `f` and `g` by the negative of the maximal slope of `g`. If an integer, shift the slopes of `f` and `g` by this. (Default: `false`)
* `ShiftValuation`: If `false`, ignored. If `true`, shift the valuations of `f` and `g` by the minimum valuations of their coefficients. If `"Weak"` then do the same but using weak valuations. (Default: `false`)
* `WeakResultant`: If `true`, use the weak resultant instead of the resultant in the Hensel condition. (Default: `false`)

> **HenselLift** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Hensel lifts an approximation to a factor of `f`.

Equivalent to calling `IsHenselLiftable(f,g)`, raising an error if it returns false, and then returning the second value.

**Parameters.** As for `IsHenselLiftable(f,g)`.

## Roots

> **Roots** (f :: *RngUPolElt_FldPadExact*, [K :: *FldPadExact*])
>
> **Roots** (f :: *RngUPolElt*, K :: *FldPadExact*)
>
> -> []
> {:.ret}
{:.intrinsic}

The roots of `f` as a polynomial over `K`. Each root is represented by a pair `<r,m>` where `r` is the root itself, an element of `K`, and `m` is the multiplicity.

The nature of finite-precision p-adic arithmetic means it is not possible to prove that a pair of roots which are very close are actually equal, and hence it is only possible to find simple roots. Therefore `f` must not have repeated roots in `K`. If a precision error occurs it is likely that `f` has roots very close together and so using a larger `Strategy` would help.

**Parameters.**

* `Strategy`. (Default: `"default"`)
* `MainStrategy`. We increase the precision of `f` according to the strategy until calling `Roots` on its approximation succeeds. (Default: `Strategy`)

## Factorization

> **Factorization** (f :: *RngUPolElt_FldPadExact*)
>
> -> [], *FldPadExactElt*, []
> {:.ret}
{:.intrinsic}

The monic irreducible factors of `f` over its base ring. Each factor is represented by a pair `<g,m>` where `g` is the factor itself and `m` is the multiplicity.

Also returns the leading coefficient of `f` and a sequence of certificates, if requested.

The certificates are a sequence of records corresponding to the factors of `f` and they contain additional information about the factors. At a minimum, they prove that the factor is irreducible and different from the other factors. The fields are:

* `F`: the inertia degree.
* `Rho`: a polynomial which, evaluated at a root of the factor, has valuation 0 and whose residue class generates an extension of degree `F` of the residue class field of the base field of `f`. Hence this proves that the factor defines an extension of inertia degree a multiple of `F`.
* `E`: the ramification degree.
* `Pi`: a polynomial which, evaluated at a root of the factor, has valuation `1/E`. This proves that the factor defines an extension of ramification degree a multiple of `E`.
* `IdealGen1`, `IdealGen2` (when `Ideals:=true`): polynomials???
* `Extension` (when `Extensions:=true`): an extension of the base field of `f` of degree `E*F` containing a root of the factor.

As with the `Roots` intrinsic above, `f` must be squarefree.

**Parameters.**

* `Strategy`: (Default: `"default"`)
* `MainStrategy`: We increase the precison of `f` according to this strategy until calling `Factorization` on its approximation succeeds. (Default: `Strategy`)
* `Proof`: Forces the factorization to be proven. If false, the factorization may only be correct up to some precision. In particular, this option allows multiplicities greater than 1. (Default: `true`)
* `Certificates`: Returns a third value, a sequence of certificates corresponding to the factors. Implies `Proof:=true`. (Default: `false`)
* `Extensions`: Includes extensions in the sequence of certificates. Implies `Certificates:=true`. (Default: `false`)
* `Ideals`: Includes ideals in the sequence of certificates. Implies `Ideals:=true`. (Default: `false`)