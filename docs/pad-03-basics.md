---
headings:
  - Extensions
  - Invariants
  - Ramification predicates
---

# Basic operations on fields

## Extensions

> **`IsExtensionOf`**`(L :: FldPadExact, K :: FldPadExact)`
>
> `-> BoolElt, ExtDataFldPadExact`

True if `L` is an extension of `K`. If so, also returns an object representing this extension; any intrinsic which takes as input two fields expected to be in an extension can instead take this one object.

> **`IsPrimeField`**`(K :: FldPadExact)`
>
> `-> BoolElt`

True if `K` is a prime field, i.e. a completion of the rationals.

> **`BaseField`**`(K :: FldPadExact)`
>
> `-> FldPadExact`

The field over which `K` is defined as an extension.

> **`DefiningPolynomial`**`(K :: FldPadExact)`
>
> `-> RngUPolElt_FldPadExact`

The polynomial defining `K` over its base field. `Generator(K)` is a root of this.

## Invariants

> **`Prime`**`(K :: FldPadExact)`
>
> `-> RngIntElt`

The rational prime under the prime ideal of `K`.

> **`Degree`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> **`InertiaDegree`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> **`RamificationDegree`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> RngIntElt`

The degree, inertia degree or ramification degree of `L` over `K`.

> **`AbsoluteDegree`**`(K :: FldPadExact)`
>
> **`AbsoluteInertiaDegree`**`(K :: FldPadExact)`
>
> **`AbsoluteRamificationDegree`**`(K :: FldPadExact)`
>
> `-> RngIntElt`

The degree, inertia degree or ramification degree of `K` over its prime subfield.

> **`DiscriminantValuation`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> RngIntElt`

The valuation of the discriminant of `L` over `K`.

## Ramification predicates

> **`IsUnramified`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> BoolElt`

True if `RamificationDegree(L,K)` is 1.

> **`IsTotallyRamified`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> BoolElt`

True if `InertiaDegree(L,K)` is 1.

> **`IsRamified`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> BoolElt`

True if `RamificationDegree(L,K)` is not 1.

> **`IsTotallyWildlyRamified`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> BoolElt`

True if `InertiaDegree(L,K)` is 1 and `RamificationDegree(L,K)` is a power of `Prime(L)`.

> **`IsWildlyRamified`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> BoolElt`

True if `RamificationDegree(L,K)` is divisible by `Prime(L)`.
