# Aggregates


Sometimes a collection of p-adic objects are highly related and should share a single update function. For example, if we Hensel-lift a system of roots of a system of multivariate polynomials, then updating one element of the system requires updating them all. In this case, we represent the whole aggregation as a single p-adic object.


**Contents**
* [Tuples](#tuples)
  * [Cartesian products](#cartesian-products)
  * [Creation of tuples](#creation-of-tuples)
  * [Basic operations](#basic-operations)

## Tuples

### Cartesian products

><a id="ExactpAdics_CartesianProduct"></a><a id="ExactpAdics_CartesianProduct--Tup"></a>
> **ExactpAdics_CartesianProduct** (components :: *Tup*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The cartesian product of the given `components`, which must all be p-adic sets.


><a id="ExactpAdics_CartesianPower--StrPadExact--etc"></a><a id="ExactpAdics_CartesianPower"></a><a id="ExactpAdics_CartesianPower--StrPadExact--RngIntElt"></a>
> **ExactpAdics_CartesianPower** (X :: *StrPadExact*, n :: *RngIntElt*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The `n`th cartesian power `X`, which must be a p-adic set.


### Creation of tuples

><a id="IsCoercible--SetCart_PadExact--any"></a><a id="IsCoercible--SetCart_PadExact--etc"></a><a id="IsCoercible"></a>
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

><a id="Parent--Tup_PadExact"></a><a id="Parent"></a>
> **Parent** (T :: *Tup_PadExact*)
> 
> -> *SetCart_PadExact*
> {:.ret}
{:.intrinsic}

The cartesian product containing `T`.


><a id="ToTuple"></a><a id="ToTuple--Tup_PadExact"></a>
> **ToTuple** (T :: *Tup_PadExact*)
> 
> -> *Tup*
> {:.ret}
{:.intrinsic}

Converts `T` to an ordinary tuple.


><a id="ToSequence"></a><a id="ToSequence--Tup_PadExact"></a>
> **ToSequence** (T :: *Tup_PadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Converts `T` to a sequence.


><a id="NumberOfComponents"></a><a id="NumberOfComponents--SetCart_PadExact"></a>
> **NumberOfComponents** (C :: *SetCart_PadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of components of `C`.


><a id="@--RngIntElt--etc"></a><a id="@--RngIntElt--SetCart_PadExact"></a><a id="@"></a>
> **\'@\'** (i :: *RngIntElt*, C :: *SetCart_PadExact*)
> 
> -> *StrPadExact*
> {:.ret}
{:.intrinsic}

The `i`th component of `C`.


><a id="#--Tup_PadExact"></a><a id="#"></a>
> **\'#\'** (T :: *Tup_PadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of elements of `T`.


><a id="@--RngIntElt--etc-2"></a><a id="@--RngIntElt--Tup_PadExact"></a><a id="@-2"></a>
> **\'@\'** (i :: *RngIntElt*, T :: *Tup_PadExact*)
> 
> -> *PadExactElt*
> {:.ret}
{:.intrinsic}

The `i`th element of `T`.


><a id="Format--Tup_PadExact"></a><a id="Format"></a>
> **Format** (T :: *Tup_PadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of `T`.

**Parameters**
- `APr`

><a id="IncreaseAbsolutePrecision_Lazy--SetCart_PadExact--etc"></a><a id="IncreaseAbsolutePrecision_Lazy"></a><a id="IncreaseAbsolutePrecision_Lazy--SetCart_PadExact--Tup"></a><a id="Approximation_Lazy--SetCart_PadExact--Tup"></a><a id="Approximation_Lazy"></a><a id="Approximation_Lazy--SetCart_PadExact--etc"></a>
> **IncreaseAbsolutePrecision_Lazy** (C :: *SetCart_PadExact*, pr :: *Tup*)
> 
> **Approximation_Lazy** (C :: *SetCart_PadExact*, pr :: *Tup*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the absolute precision of `C` to `pr`, which must be a tuple of precisions for each component.




