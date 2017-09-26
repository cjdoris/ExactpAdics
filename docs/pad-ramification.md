---
headings:
  - Ramification polygons
  - Hasse-Herbrand transition functions
---

# Ramification

## Ramification polygons

In this section, when $f(x)$ is an Eisenstein polynomial with root $pi$, then the *ramification polynomial* of $f$ is defined to be $rho(x):=f(x+pi)$. The key feature is that if $pi'$ is another root of $f(x)$ then $pi'-pi$ is a root of $rho(x)$, and hence the roots of $rho$ measure ramification. If $L/K$ is the extension defined by $f$ then the *ramification polygon* of $L/K$ is defined to be the Newton polygon of $rho$, which is independent of the choice of $f$. If $L/K$ is a more general extension, then its ramification polygon is that of its totally ramified part with an additional horizontal edge.

> **`RamificationPolynomial`**`(K :: FldPadExact)`
>
> `-> RngUPolElt_FldPadExact`

The ramification polynomial of the defining polynomial of `K`. Hence, `K` must be a totally ramified extension.

> **`RamificationPolygon`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> NwtnPgon`

The ramification polygon of `L` over `K`. Since the ramification polynomial always has 0 as a root, the x co-ordinates of the vertices of the polygon range from 1 to `Degree(L,K)`.

> **`RamificationPolygon`**`(f :: RngUPolElt_FldPadExact)`
>
> `-> NwtnPgon`

The ramification polygon of the Eisenstein polynomial `f`.

## Hasse-Herbrand transition functions

The Hasse-Herbrand transition function is an invariant of an extension of local fields. It converts ramification breaks from the "lower numbering" (relative to the top field) to the "upper numbering" (relative to the base field). This module introduces a new type `HasseHerbTransFunc` to represent these. For convenience, we can create them from `FldPad`s as well as `FldPadExact`s.

> **`TransitionFunction`**`(L :: FldPad, [K :: FldPad])`
>
> **`TransitionFunction`**`(L :: FldPadExact, [K :: FldPadExact])`
>
> `-> HasseHerbTransFunc`

The transition function of `L` over `K`.

> **`RamificationPolygon`**`(h :: HasseHerbTransFunc)`
>
> `-> NwtnPgon`

The ramification polygon of a totally ramified extension with the given transition function.

> **`RamificationDegree`**`(h :: HasseHerbTransFunc)`
>
> `-> RngIntElt`

The ramification degree of an extension with this transition function.

> **`Vertices`**`(h :: HasseHerbTransFunc)`
>
> `-> []`

The vertices of the transition function.

> **`'@'`**`(v, h :: HasseHerbTransFunc)`
>
> `-> .`

Evaluates `h` at `v`.

> **`'@@'`**`(u, h :: HasseHerbTransFunc)`
>
> `-> .`

Evaluates the inverse of `h` at `u`.

> **`'eq'`**`(h1 :: HasseHerbTransFunc, h2 :: HasseHerbTransFunc)`
>
> `-> BoolElt`

Test for equality.

> **`LowerBreaks`**`(h :: HasseHerbTransFunc)`
>
> `-> []`

The ramification breaks in lower numbering; that is, the x co-ordinate of the vertices.

> **`UpperBreaks`**`(h :: HasseHerbTransFunc)`
>
> `-> []`

The ramification breaks in upper numbering; that is, the y co-ordinate of the vertices.
