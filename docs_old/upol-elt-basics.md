---
chapter: 12
section: 2
headings:
  - Distinguished polynomials
  - Creation
  - Basic properties
  - Approximation
  - Valuation
  - Val_RngUPolElt_FldPad
  - Arithmetic
  - Related polynomials
  - Resultant and discriminant
  - Evaluation
  - Predicates for special polynomials
---

# Basic operations on univariate polynomials

{% include jump-list.md %}

## Distinguished polynomials

> **Zero** (R :: *RngUPolElt_FldPadExact*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The zero polynomial in `R`,

> **One** (R :: *RngUPolElt_FldPadExact*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The one polynomial in `R`.

> R.1
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The indeterminate of `R`.

## Creation

> R ! f
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Coerces `f` to a polynomial in `R :: *RngUPol_FldPadExact*` where `f` is one of:

* A `RngUPol_FldPadExact` or `RngUPol` whose coefficients can be coerced to the base ring of `R`

* A sequence of coefficients which can be coerced to the base ring of `R`

> **Polynomial** (coeffs :: [*FldPadExactElt*])
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients. Equivalent to `PolynomialRing(Universe(coeffs)) ! coeffs`.

> **Polynomial** (K :: *FldPadExact*, coeffs :: [])
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial over `K` with the given coefficients. Equivalent to `PolynomialRing(K) ! coeffs`.

## Basic properties

> **Parent** (f :: *RngUPolElt_FldPadExact*)
>
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial ring containing `f`.

> **BaseRing**(f :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field containing the coefficients of `f`. Equivalent to `BaseRing(Parent(f))`.

> **WeakDegree** (f :: *RngUPolElt_FldPadExact*)
>
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of stored coefficients of `f` minus 1. It is possible that the top stored coefficient is actually zero, so this is an upper bound on the actual degree.

> **Degree** (f :: *RngUPolElt_FldPadExact*)
>
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of `f`.

**Paremeters.**

* `Strategy`: Used to determine if the top coefficient is non-zero. Will raise a precision error if not. (Default: `"default"`)

> **WeakCoefficients** (f :: *RngUPolElt_FldPadExact*)
>
> -> []
> {:.ret}
{:.intrinsic}

The stored coefficients of `f`. It is possible that the top coefficient is actually zero.

> **Coefficients** (f :: *RngUPolElt_FldPadExact*)
>
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of `f`.

**Paremeters.** As for `Degree(f)`.

> **WeakLeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The `WeakDegree(f)`th coefficient of `f`.

> **LeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

**Parameters.** As for `Degree(f)`.

> **Coefficient** (f :: *RngUPolElt_FldPadExact*, i :: *RngIntElt*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The `i`th coefficient of `f`. `i` must not be negative.

## Approximation

> **AbsolutePrecision** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_RngUPolElt_FldPad
> {:.ret}
{:.intrinsic}

The absolute precisions of the coefficients of the current approximation of `f`.

> **WeakValuation** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_RngUPolElt_FldPad
> {:.ret}
{:.intrinsic}

The weak valuations of the coefficients of the current approximation of `f`.

> **WeakMinValuation** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_FldPadElt
> {:.ret}
{:.intrinsic}

The smallest weak valuation of the coefficients of the current approximation of `f`.

> **IsWeaklyZero** (f :: *RngUPolElt_FldPadExact*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the current approximation of `f` is zero up to precision.

> **IsWeaklyEqual** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the current approximation of `f` and `g` are equal up to precision.

> **BaselineValuation** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_RngUPolElt_FldPad
> {:.ret}
{:.intrinsic}

A fixed lower bound on the valuation of `f`; usually the weak valuation of the initial approximation of `f`.

> **BaselinePrecision** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_RngUPolElt_FldPad
> {:.ret}
{:.intrinsic}

The precision of `f` relative to the baseline: `AbsolutePrecision(f)-BaselineValuation(f)`.

## Valuation

> **Valuation** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_RngUPolElt_FldPad
> {:.ret}
{:.intrinsic}

The valuations of the coefficients of `f`

**Parameters.**

* `Strategy`: Used to determine if each coefficient of `f` is nonzero.

> **MinValuation** (f :: *RngUPolElt_FldPadExact*)
>
> -> Val_FldPadElt
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of `f`.

**Parameters.**

* `Strategy`: Used to determine if `f` is nonzero. (Default: `"default"`)
* `Slope`: Adds `Slope*i` to the valuation of the `i`th coefficient. (Default: `0`)
* `Pivot`: Adds `-Slope*Pivot` to each valuation. (Default: `0`)

## Val_RngUPolElt_FldPad

TODO

## Arithmetic

> **\'-\'** (f :: *RngUPolElt_FldPadExact*)
>
> **\'+\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> **\'-\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> **\'\*\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> **\'^\'** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
>
> **\'div\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> **\'&+\'** (fs :: [*RngUPolElt_FldPadExact*])
>
> **\'&\*\'** (fs :: [*RngUPolElt_FldPadExact*])
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Negate, add, subtract, multiply, power, exact divide, sum, product.

**Parameters.**

* `Strategy` (`'div'` only): Used to check that `g` is non-zero. (Default: `"default"`)

## Related polynomials

> **Derivative** (f :: *RngUPolElt_FldPadExact*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The derivarive of `f`.

> **Derivative** (f :: *RngUPolElt_FldPadExact*, k :: *RngIntElt*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The `k`th derivative of `f`.

> **ShiftValuation** (f :: *RngUPolElt_FldPadExact*, v)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the coefficients of `f` by `v`. `v` must be a `Val_RngUPolElt_FldPad`, `[RngIntElt]`, `RngIntElt`, `Val_FldPad`, or anything else coercible to `Val_RngUPolElt_FldPad`.

> **ShiftSlope** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
>
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the `i`th coefficient of `f` by `i*n`.

**Parameters.**

* `Pivot`: Additionally shifts the polynomial by `-Pivot*n` so that the `Pivot`th coefficient is unchanged. (Default: `0`)

## Resultant and discriminant

> **WeakResultant** (fs :: [*RngUPolElt_FldPadExact*])
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of the polynomials `fs` assuming that their weak degrees are correct.

> **WeakResultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of `f` and `g` assuming that their weak degrees are correct.

> **Resultant** (fs :: [*RngUPolElt_FldPadExact*])
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of the polynomials `fs`.

**Parameters.**

* `Strategy`: (Default: `"default"`)
* `Strategies`: A sequence or list of strategies corresponding to `fs` used to check the degree of each polynomial. (Default: `[Strategy: f in fs]`)

> **Resultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of `f` and `g`.

**Parameters.**

* `Strategy`: (Default: `"default"`)
* `fStrategy`: The strategy to check the degree of `f`. (Default: `Strategy`)
* `gStrategy`: The strategy to check the degree of `g`. (Default: `Strategy`)

> **Discriminant** (f :: *RngUPolElt_FldPadExact*)
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The discriminant of `f`.

**Parameters.**

* `Strategy`: The strategy to check the degree of `f`. (Default: `Strategy`)

## Evaluation

> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
>
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

`f` evaluated at `x`.

## Predicates for special polynomials

> **IsEisenstein** (f :: *RngUPolElt_FldPadExact*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is Eisenstein. That is, the leading coefficient has valuation 0, the constant coefficient has valuation 1 and all others have valuation at least 1. Such a polynomial is irreducible and its roots are uniformizers defining a totally ramified extension.

> **IsInertial** (f :: *RngUPolElt_FldPadExact*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is inertial. That is, each coefficient is integral, the leading coefficient has valuation 0, and the polynomial reduced to the residue class field is irreducible. Such a polynomial is irreducible and its roots define an unramified extension.