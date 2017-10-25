---
chapter: 11
section: 7
headings:
  - Queries
  - Approximations
---

# Approximation

Intrinsics relating to the current approximation of a p-adic value.

{% include jump-list.md %}

## Queries

> **AbsolutePrecision** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The absolute precision to which `x` is currently known.

> **WeakValuation** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of `x`, if known, otherwise the best lower bound `AbsolutePrecision(x)`.

> **IsWeaklyZero** (x :: *FldPadExactElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is zero to the current precision. That is, true if the valuation of `x` is at least the absolute precision.

**Parameters.**
- `Strategy := false`: when not `false`, it uses this strategy to increase the precision until `x` is not weakly zero or the strategy terminates.

> **IsWeaklyEqual** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` and `y` are equal to current precision.

**Parameters.**
- `Strategy := false`: when not `false`, it uses this strategy to increase the precision until `x` and `y` are not weakly equal or the strategy terminates.

> **Precision** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The relative precision to which `x` is known: `AbsolutePrecision(x) - WeakValuation(x)`. It is zero iff `x` is weakly zero.

> **IsDefinitelyZero** (x :: *FldPadExactElt*)
>
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is definitely zero: it is weakly zero and has infinite absolute precision.

> **BaselineValuation** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

A fixed lower bound on the valuation of `x`; usually the weak valuation of the initial approximation of `x`.

> **BaselinePrecision** (x :: *FldPadExactElt*)
>
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The precision of `x` relative to the baseline: `AbsolutePrecision(x)-BaselineValuation(x)`.

## Approximations

> **Approximation** (K :: *FldPadExact*, pr)
>
> -> *FldPad*
> {:.ret}
{:.intrinsic}

The approximating field of `K` with its precision set to `pr`.

Note that future calls to any other intrinsic could change the precision of the approximating field.

The lazy version `Approximation_Lazy` returns a getter which evaluates to the approximating field.

> **Approximation** (x :: *FldPadExactElt*, apr)
>
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

The approximation to `x` to absolute precision `apr`. It is an element of the approximating field of `Parent(x)`.

## Change precision

> **IncreaseAbsolutePrecision** (x :: *FldPadExactElt*, apr)
{:.intrinsic}

Increases the absolute precision of `x` to `apr`.