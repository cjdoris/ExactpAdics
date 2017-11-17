# Aggregates


Sometimes a collection of p-adic objects are highly related and should share a single update function. For example, if we Hensel-lift a system of roots of a system of multivariate polynomials, then updating one element of the system requires updating them all. In this case, we represent the whole aggregation as a single p-adic object.


**Contents**
* [Tuples](#tuples)
  * [Cartesian products](#cartesian-products)
  * [Creation of tuples](#creation-of-tuples)
  * [Basic operations](#basic-operations)

## Tuples

### Cartesian products

> **ExactpAdics_CartesianProduct** (components :: *Tup*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The cartesian product of the given `components`, which must all be p-adic sets.


> **ExactpAdics_CartesianPower** (X :: *StrPadExact*, n :: *RngIntElt*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The `n`th cartesian power `X`, which must be a p-adic set.


### Creation of tuples

> **IsCoercible** (C :: *SetCart_PadExact*, X)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `X` is coercible to a tuple in `C`. If so, also returns such a tuple.

Succeeds if `X` is:
- An element of `C`.
- A tuple of the right length of elements coercible to each component of `C`.
- A tuple `<init,mkupdate>` or `<init,mkupdate,data>`.


### Basic operations

> **Parent** (T :: *Tup_PadExact*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The cartesian product containing `T`.


> **ToTuple** (T :: *Tup_PadExact*)
> 
> -> *Tup*
> {:.ret}
{:.intrinsic}

Converts T to an ordinary tuple.


> **ToSequence** (T :: *Tup_PadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Converts T to a sequence.


> **NumberOfComponents** (C :: *SetCart_PadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of components of C.


> **\'@\'** (i :: *RngIntElt*, C :: *SetCart_PadExact*)
> 
> -> *StrPadExact*
> {:.ret}
{:.intrinsic}

The `i`th component of `C`.


> **\'#\'** (T :: *Tup_PadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of elements of T.


> **\'@\'** (i :: *RngIntElt*, T :: *Tup_PadExact*)
> 
> -> *PadExactElt*
> {:.ret}
{:.intrinsic}

The `i`th element of `T`.


> **_ExactpAdics_WeakValuationOfApproximation** (C :: *SetCart_PadExact*, x)
> 
> -> *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

The weak valuation of an element of `C` with approximation `x`.


> **_ExactpAdics_AbsolutePrecisionOfApproximation** (C :: *SetCart_PadExact*, x)
> 
> -> *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

The weak valuation of an element of `C` with approximation `x`.


> **Format** (T :: *Tup_PadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of `T`.

**Parameters**
- `APr`

> **_ExactpAdics_PrecisionRequired** (C :: *SetCart_PadExact*, xt :: *Tup*, apr)
> 
> -> *Tup*
> {:.ret}
{:.intrinsic}

The precision required in `C` to update an element with approximation `xt` to `apr`.


> **IncreaseAbsolutePrecision_Lazy** (C :: *SetCart_PadExact*, pr :: *Tup*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the absolute precision of `C` to `pr`, which must be a tuple of precisions for each component.


> **Approximation_Lazy** (C :: *SetCart_PadExact*, pr :: *Tup*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The approximation of `C` to precision `pr`.


