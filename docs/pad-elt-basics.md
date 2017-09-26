---
chapter: 11
section: 4
headings:
  - Location
  - Arithmetic
  - Approximation
  - Valuation
  - Val_FldPadElt
  - Printing
---

# Basic operations on elements

{% include jump-list.md %}

## Location

> **`Parent`**`(x :: FldPadExactElt)`
>
> `-> FldPadExact`

The field containing `x`.

## Arithmetic

> **`'-'`**`(x :: FldPadExactElt)`
>
> **`'+'`**`(x :: FldPadExactElt, y :: FldPadExactElt)`
>
> **`'-'`**`(x :: FldPadExactElt, y :: FldPadExactElt)`
>
> **`'*'`**`(x :: FldPadExactElt, y :: FldPadExactElt)`
>
> **`'/'`**`(x :: FldPadExactElt, y :: FldPadExactElt)`
>
> **`'^'`**`(x :: FldPadExactElt, n :: RngIntElt)`
>
> **`'&+'`**`(xs :: [FldPadExactElt])`
>
> **`'&*'`**`(xs :: [FldPadExactElt])`
>
> `-> FldPadExactElt`

Negation, addition, subtraction, multiplication, division, powering, sum and product.

**Parameters:**

* `Strategy` (division and powering only): used to determine if the value being divided by is non-zero and its valuation. If this fails, a precision error will occur. (Default: `"default"`)

## Approximation

> **`AbsolutePrecision`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

The absolute precision to which `x` is currently known.

> **`WeakValuation`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

The valuation of `x`, if known, otherwise the best lower bound `AbsolutePrecision(x)`.

> **`IsWeaklyZero`**`(x :: FldPadExactElt)`
>
> `-> BoolElt`

True if `x` is zero to the current precision. That is, true if the valuation of `x` is at least the absolute precision.

> **`Precision`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

The relative precision to which `x` is known: `AbsolutePrecision(x) - WeakValuation(x)`. It is zero iff `x` is weakly zero.

> **`IsDefinitelyZero`**`(x :: FldPadExactElt)`
>
> `-> BoolElt`

True if `x` is definitely zero: it is weakly zero and has infinite absolute precision.

> **`BaselineValuation`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

A fixed lower bound on the valuation of `x`; usually the weak valuation of the initial approximation of `x`.

> **`BaselinePrecision`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

The precision of `x` relative to the baseline: `AbsolutePrecision(x)-BaselineValuation(x)`.

## Valuation

> **`Valuation`**`(x :: FldPadExactElt)`
>
> `-> Val_FldPadElt`

The valuation of `x`.

**Paremeters.**

* `Strategy`: Used to increase the precision of `x` until it is not weakly zero. If this fails, then a precision error occurs. (Default: `"default"`);

> **`ValuationEq`**`(x :: FldPadExactElt, n)`
>
> **`ValuationNe`**`(x :: FldPadExactElt, n)`
>
> **`ValuationLe`**`(x :: FldPadExactElt, n)`
>
> **`ValuationLt`**`(x :: FldPadExactElt, n)`
>
> **`ValuationGe`**`(x :: FldPadExactElt, n)`
>
> **`ValuationGt`**`(x :: FldPadExactElt, n)`
>
> `-> BoolElt`

Compares the valuation of `x` with `n`. Avoids precision errors compared to doing for example `Valuation(x) lt 0` because the precise valuation of `x` is not required.

May increase the absolute precision of `x` to `n` or `n+1`.

> **`IsUnit`**`(x :: FldPadExactElt)`
>
> `-> BoolElt`

True if the valuation of `x` is 0.

> **`IsIntegral`**`(x :: FldPadExactElt)`
>
> `-> BoolElt`

True if the valuation of `x` is at least 0.

## Val_FldPadElt

Valuations of p-adic numbers are represented by objects of type `Val_FldPadElt`, which are a simple wrapper type for integers, rationals and infinity. They are returned by intrinsics such as `Valuation` and `AbsolutePrecision`.

> **`Val_FldPadElt_Make`**`(v)`
>
> `-> Val_FldPadElt`

Makes a valuation with the value `v` which must be an integer `RngIntElt`, rational `FldRatElt` or infinity `Infty`.

> **`Value`**`(v :: Val_FldPadElt)`
>
> `-> .`

The value of the valuation, either an integer `RngIntElt`, rational `FldRatElt` or infinity `Infty`.

> **`IntegerValue`**`(v :: Val_FldPadElt)`
>
> `-> RngIntElt`

The value of the valuation coerced to an integer. The value must be an integer or a rational with denominator 1.

> **`'+'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'-'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'*'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'&+'`**`(vs :: [Val_FldPadElt])`
>
> **`'&*'`**`(vs :: [Val_FldPadElt])`
>
> `-> Val_FldPadElt`

Add, subtract, multiply, sum, product.

> **`Ceiling`**`(v :: Val_FldPadElt)`
>
> `-> Val_FldPadElt`

The valuation rounded up to the next integer.

> **`'meet'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'join'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`

Minimum and maximum. We use `meet` and `join` because more general valuations, such as those for polynomials, are only partially ordered.

> **`'eq'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'ne'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'le'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'lt'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'ge'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> **`'gt'`**`(v :: Val_FldPadElt, w :: Val_FldPadElt)`
>
> `-> BoolElt`

Comparisons.

## Printing

By default, `FldPadExactElt`s are printed to relative precision 1, so we see its (weak) valuation and the first p-adic coefficient thereafter. At print level `Magma`, they are printed to their full absolute precision. The user can get more control using the `Format` intrinsic.

> **`Format`**`(x :: FldPadExactElt)`
>
> `-> MonStgElt`

Returns a string representation of `x` according to the parameters.

**Parameters.**

* `APr`: The absolute precision to print to. (Default: `AbsolutePrecision(x) meet (WeakValuation(x) + 1)`)