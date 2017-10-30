---
chapter: 11
section: 5
---

# Residue class fields

{% include jump-list.md %}

> **ResidueClassField** (K :: *FldPadExact*)
>
> -> *FldFin*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The residue class field of `K`.

It is guaranteed to be an extension of the residue class field of any subfield of `K`, and is also equal to the residue class field of the approximation field of `K`.

Also returns the quotient map from `K` into the residue class field. The inverse is defined and returns elements to absolute precision 1 which cannot have their precision increased further. Also returns the quotient map from the approximation field of `K` into the residue class field.

> **ResidueClass** (K :: *FldPadExactElt*)
>
> -> *FldFinElt*
> {:.ret}
{:.intrinsic}

The residue class of `x`, an element of `ResidueClassField(Parent(x))`.