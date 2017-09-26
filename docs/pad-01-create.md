---
headings:
  - Prime fields
  - Unramified extensions
  - Totally ramified extensions
  - Completions
  - From fixed precision fields
  - Examples
---

# Creation of p-adic fields

## Prime fields

> **`ExactpAdicField`**`(p :: RngIntElt)`

> `-> FldPadExact`

Returns the field of `p`-adic numbers, where `p` is a positive prime.

## Unramified extensions

> **`ext`**`<K :: FldPadExact | f>`

> **`UnramifiedExtension`**`(K :: FldPadExact, f)`

> **`UnramifiedExtension`**`(K :: FldPadExact, f :: RngUPolElt_FldPadExact)`

> **`UnramifiedExtension`**`(f :: RngUPolElt_FldPadExact)`

> `-> FldPadExact`

Returns the unramified extension of `K` defined by the polynomial `f` (or anything coercible to a polynomial over `K`), which must be inertial (see `IsInertial`). The generator of the extension will be a root of `f`.

> **`UnramifiedExtension`**`(K :: FldPadExact, n :: RngIntElt)`

> **`ext`**`<K :: FldPadExact | n :: RngIntElt>`

> `-> FldPadExact`

Returns an unramified extension of `K` of degree `n`.

## Totally ramified extensions

> **`TotallyRamifiedExtension`**`(K :: FldPadExact, f :: RngUPolElt_FldPadExact)`

> **`TotallyRamifiedExtension`**`(K :: FldPadExact, f :: RngUPolElt)`

> **`TotallyRamifiedExtension`**`(f :: RngUPolElt_FldPadExact)`

> **`ext`**`<K :: FldPadExact | f>`

> `-> FldPadExact`

Returns a totally ramified extension of `K` defined by the polynomial `f` (or anything coercible to a polynomial over `K`), which must be Eisenstein (see `IsEisenstein`). The generator and uniformizing element of the extension will be a root of `f`.

> **`TotallyRamifiedExtension`**`(K :: FldPadExact, n :: RngIntElt, pi)`

> **`TotallyRamifiedExtension`**`(K :: FldPadExact, n :: RngIntElt)`

> `-> FldPadExact`

Returns the totally ramified extension of `K` defined by the `n`th root of `pi`, which must coercible to a uniformizing element of `K`. If `pi` is not specified, it defaults to `UniformizingElement(K)`.

## Completions

> **`ExactCompletion`**`(K :: FldRat, p)`

> **`ExactCompletion`**`(K :: FldNum, p)`

> `-> FldPadExact, Map, Map`

Returns a completion of `K` at the prime `p`. Also returns the embedding from `K` into the completion. Also returns the embedding from `K` into the approximation field of the completion, with a partial inverse taking an approximate element to a representative in `K`.

## From fixed precision fields

> **`ExactpAdicField`**`(L :: FldPad)`

> `-> FldPadExact`

Returns an exact field isomorphic to `L`. Its defining polynomial will be equal to that of `L` up to precision.

> **`ExactpAdicField`**`(L :: FldPad, K :: FldPadExact)`

> `-> FldPadExact`

Returns an exact field isomorphic to `L` as an extension of `K`. `L` must be an extension of the approximation field of `K`.

> **`ExactpAdicField`**`(L :: FldPad, m :: Map)`

> `-> FldPadExact`

Given `m` is a map from a subfield `K` of `L` into an approximation field of an exact field `K2`, returns an extension of `K2` isomorphic to `L`/`K`.

## Examples

```
> K := ExactpAdicField(2);
> U<u> := ext<K | 3>;
> L<pi> := ext<L | [2*u,0,1]>;
```

This creates the 2-adic field `K`, an unramified extension `U<u>` of `K` of degree 3, and a totally ramified extension `L<pi>` of `U` of degree `2` whose uniformizer `pi` is the square root of `-2*u`.