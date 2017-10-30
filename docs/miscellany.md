# Miscellany

**Contents**
* [Default associative arrays](#default-associative-arrays)
* [Promotion](#promotion)
* [Lower bounds](#lower-bounds)

## Default associative arrays

> **IsCoercible_DefaultAssociativeArray** (x)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default x.

> **IsCoercible_DefaultAssociativeArray** (x, keys, values)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default x and given keys and values.

> **IsCoercible_DefaultAssociativeArray** (x, y)
> 
> **IsCoercible_DefaultAssociativeArray** (x, y :: *Assoc*)
> 
> **IsCoercible_DefaultAssociativeArray** (x, y :: [*Tup*])
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default x and values y.





> **DefaultAssociativeArray** (x)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value x.

> **DefaultAssociativeArray** (x, ys)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value x and keys and values specified by ys (an associative array or sequence of <key,value> pairs).

> **DefaultAssociativeArray** (x, keys, values)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value x, and given keys and values.

> **Print** (x :: *AssocDflt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.

> **\'@\'** (i, x :: *AssocDflt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The value at index i of x.

> **ApplyPointwise** (f, x :: *AssocDflt*, y :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function f pointwise to values of x and y.

> **ApplyPointwise** (f, x :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function f pointwise to values of x.

> **Image** (x :: *AssocDflt*)
> 
> -> {}
> {:.ret}
{:.intrinsic}

The set of possible output values.

> **DefaultValue** (x :: *AssocDflt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The default value of x.

> **SpecialAssociativeArray** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The associative array of the special values of x.

> **SpecialKeys** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The keys of special values of x.

> **Zip** (xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> [x(i) : x in xs]. The inputs must have compatible indices.

> **ZipApplyPointwise** (f, xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> f([x(i) : x in xs]). Equivalent to ApplyPointwise(f,Zip(xs)).

> **ForAll** (x :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f(x(i)) is true for all i.

> **ForAll** (x :: *AssocDflt*, y :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f(x(i),y(i)) is true for all i.

## Promotion

> **IsPromotable** (x, y)
> 
> -> *BoolElt*, Any, Any
> {:.ret}
{:.intrinsic}

True if x and y are promotable to the same parent.

> **Promote** (x, y)
> 
> -> Any, Any
> {:.ret}
{:.intrinsic}

Promotes x and y to a common type.

## Lower bounds

> **ExactpAdics_LowerBound** (v)
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

The lower bound v.

> **IsSharp** (b :: *ExactpAdics_BndLow*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if b is a sharp bound.

> **BoundValue** (b :: *ExactpAdics_BndLow*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The lower bound.

> **Value** (b :: *ExactpAdics_BndLow*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The value of b, assuming it is sharp.

> **Print** (b :: *ExactpAdics_BndLow*, lvl :: *Magma*)
{:.intrinsic}

Print.

> **\'&+\'** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the sum of the values being bounded.

> **Max** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the maximum of the values being bounded.

> **Min** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the minimum of the values being bounded.

