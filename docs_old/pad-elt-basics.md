---
chapter: 11
section: 4
headings:
  - Location
  - Arithmetic
  - Valuation
  - Val_FldPadElt
  - Printing
---

# Basic operations on elements

{% include jump-list.md %}

## Location

> **Parent** (x :: *FldPadExactElt*)
>
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field containing `x`.

## Arithmetic

> **\'-\'** (x :: *FldPadExactElt*)
>
> **\'+\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> **\'-\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> **\'\*\'**(x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> **\'/\'**(x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> **\'^\'**(x :: *FldPadExactElt*, n :: *RngIntElt*)
>
> **\'&+\'**(xs :: [*FldPadExactElt*])
>
> **\'&\*\'**(xs :: [*FldPadExactElt*])
>
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Negation, addition, subtraction, multiplication, division, powering, sum and product.

**Parameters:**

* `Strategy` (division and powering only): used to determine if the value being divided by is non-zero and its valuation. If this fails, a precision error will occur. (Default: `"default"`)

> **ShiftValuation** (x :: *FldPadExactElt*, n)
>
> -> *FldPadExactElt*
> {:.ret}
{:.ret}

Multiplies `x` by the `n`th power of the uniformizer. Hence this adds `n` to the valuation of `x`.

## Valuation

> **Valuation** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of `x`.

**Paremeters.**

* `Strategy`: Used to increase the precision of `x` until it is not weakly zero. If this fails, then a precision error occurs. (Default: `"default"`);

> **ValuationEq** (x :: *FldPadExactElt*, n)
>
> **ValuationNe** (x :: *FldPadExactElt*, n)
>
> **ValuationLe** (x :: *FldPadExactElt*, n)
>
> **ValuationLt** (x :: *FldPadExactElt*, n)
>
> **ValuationGe** (x :: *FldPadExactElt*, n)
>
> **ValuationGt** (x :: *FldPadExactElt*, n)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Compares the valuation of `x` with `n`. Avoids precision errors compared to doing for example `Valuation(x) lt 0` because the precise valuation of `x` is not required.

May increase the absolute precision of `x` to `n` or `n+1`.

> **IsUnit** (x :: *FldPadExactElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `x` is 0.

> **IsIntegral** (x :: *FldPadExactElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `x` is at least 0.

> **ValuationCmpValuation** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

-1, 0 or 1 depending on whether the valuation of `x` is less than, equal to or greater than the valuation of `y`.

**Lazy version.** `ValuationCmpValuation_Lazy`

## Val_FldPadElt

Valuations of p-adic numbers are represented by objects of type `Val_FldPadElt`, which are a simple wrapper type for integers, rationals and infinity. They are returned by intrinsics such as `Valuation` and `AbsolutePrecision`.

> **Val_FldPadElt_Make**(v)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

Makes a valuation with the value `v` which must be an integer `RngIntElt`, rational `FldRatElt` or infinity `Infty`.

> **Val_FldPadElt_Infinity**()
>
> **Val_FldPadElt_NegInfinity**()
>
> **Val_FldPadElt_Zero**()
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuations infinity, negative infinity and zero.

> **Val_FldPadElt_IsCoercible**(v)
>
> -> *BoolElt*, *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

True if `v` can be coerced to a `Val_FldPadElt`. If so, also returns the coerced valuation.

> **IsValidAbsolutePrecision**(x :: *FldPadExactElt*, v)
>
> -> *BoolElt*, *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

True if `v` can be coerced to a valuation or absolute precision for `x`, and if so, the coerced valuation.

> **Value** (v :: *Val_FldPadElt*)
>
> -> *Any*
> {:.ret}
{:.intrinsic}

The value of the valuation, either an integer `RngIntElt`, rational `FldRatElt` or infinity `Infty`.

> **IntegerValue** (v :: *Val_FldPadElt*)
>
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The value of the valuation coerced to an integer. The value must be an integer or a rational with denominator 1.

> **IsFinite** (v :: *Val_FldPadElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `v` is finite, i.e. an integer or rational.

> **IsIntegral** (v :: *Val_FldPadElt*)
>
> -> *BoolElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

True if `v` is an integer (or a rational of denominator 1). If so, returns the value as an integer.

> **Ceiling** (v :: *Val_FldPadElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The ceiling of `v`, namely `v` if it is infinite, else the next highest integer.

> **\'-\'**(v :: *Val_FldPadElt*)
>
> **\'+\'**(v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'-\'**(v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'meet\'**(v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'join\'**(v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'diff\'**(v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'&+\'**(vs :: [*Val_FldPadElt*])
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

Unary negation, addition, subtraction, intersection (i.e. minimum), union (i.e. maximum), diff (i.e. `v` if `v` is strictly greater than `u`, else negative infinity), summation.

> **\'eq\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'ne\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'le\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'lt\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'ge\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> **\'gt\'** (v :: *Val_FldPadElt*, w :: *Val_FldPadElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Comparisons.

> **\'\*\'** (v :: *Val_FldPadElt*, n)
>
> **\'\*\'** (n, v :: *Val_FldPadElt*)
>
> **\'/\'** (v :: *Val_FldPadElt*, n)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Multiplication/division by a scalar `n` which must be an integer or rational.

## Printing

By default, `*FldPadExactElt*`s are printed to relative precision 1, so we see its (weak) valuation and the first p-adic coefficient thereafter. At print level `Magma`, they are printed to their full absolute precision. The user can get more control using the `Format` intrinsic.

> **Format** (x :: *FldPadExactElt*)
>
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of `x` according to the parameters.

**Parameters.**

* `APr`: The absolute precision to print to. (Default: `AbsolutePrecision(x) meet (WeakValuation(x) + 1)`)
