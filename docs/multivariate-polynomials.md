# Multivariate polynomials

> **PrecisionRequired** (f :: *RngMPolElt_FldPadExact*, apr)
> 
> -> *RngIntElt*
> {:.ret}
> 
> **CanChangeRing** (f :: *RngMPolElt_FldPadExact*, K :: *FldPadExact*)
> 
> **CanChangeRing** (f :: *RngMPolElt*, K :: *FldPadExact*)
> 
> -> *BoolElt*, *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The precision required to approximate f with the given parameters.





> **PolynomialRing** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngMPol_FldPadExact*
> {:.ret}
{:.intrinsic}

A polynomial ring of rank n over F.

> **BaseRing** (R :: *RngMPol_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of R.

> **Rank** (R :: *RngMPol_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The rank of R.

> **AssignNames** (~R :: *RngMPol_FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns names to the generators of R.

> **Name** (R :: *RngMPol_FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (R :: *RngMPol_FldPadExact*, i :: *RngIntElt*)
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The ith generator of R.



> **GeneratorsSequence** (R :: *RngMPol_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The indeterminates generating R.

> **Parent** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *RngMPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The parent ring of f.

> **IsCoercible** (R :: *RngMPol_FldPadExact*, X)
> 
> **IsCoercible** (R :: *RngMPol_FldPadExact*, X :: *RngMPolElt_FldPadExact*)
> 
> **IsCoercible** (R :: *RngMPol_FldPadExact*, X :: *Tup*)
> 
> **IsCoercible** (R :: *RngMPol_FldPadExact*, X :: *RngMPolElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible to R, and the coerced element.







> **Update** (f :: *RngMPolElt_FldPadExact*, app :: *RngMPolElt*)
{:.intrinsic}

Updates f to app.

> **UpdateZero** (f :: *RngMPolElt_FldPadExact*, n :: *RngIntElt*)
{:.intrinsic}

Updates f to O(pi^n).

> **\'eq\'** (R :: *RngMPol_FldPadExact*, S :: *RngMPol_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.

> **AbsolutePrecision** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The absolute precision of f.

> **WeakValuation** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The weak valuation of f.

> **BaselineValuation** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The baseline valuation of f, an unchanging lower bound on the valuation of f.

> **IncreaseAbsolutePrecision** (f :: *RngMPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the absolute precision of f to n.

> **Format** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of f.

> **Print** (f :: *RngMPolElt_FldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints f.

> **IncreaseAbsolutePrecision_Lazy** (R :: *RngMPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the precision of the approximation to R to at least pr.

> **Approximation_Lazy** (R :: *RngMPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (R :: *RngMPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

An approximation to R whose base field has default precision pr.



> **Approximation** (R :: *RngMPol_FldPadExact*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

The approximation to R.

> **MinValuation** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of f.

> **IsWeaklyZero** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is weakly zero.

> **IncreaseAbsolutePrecision_Lazy** (f :: *RngMPolElt_FldPadExact*, n)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A getter which when evaluated increases the absolute precision of f.

> **Approximation_Lazy** (f :: *RngMPolElt_FldPadExact*, APr)
> 
> **Approximation** (f :: *RngMPolElt_FldPadExact*, APr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to f.



> **BaseRing** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of f.

> **IsHenselLiftable** (fs :: [*RngMPolElt_FldPadExact*], xs :: [*FldPadExactElt*])
> 
> -> *BoolElt*, []
> {:.ret}
{:.intrinsic}

True if xs are Hensel liftable to roots of fs.

> **DotProduct** (fs :: [*RngMPolElt_FldPadExact*], xs :: [*FldPadExactElt*])
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Equivalent to &+[fs[i]*xs[i] : i in [1..n]] where n=#fs=#xs.

> **IsIntegral** (f :: *RngMPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True iff all coefficients of f have valuation at least 0.

> **ShiftArgument** (f :: *RngMPolElt_FldPadExact*, xs :: [*FldPadExactElt*])
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial f(Xs+xs).

> **\'\*\'** (f :: *RngMPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Multiplication by a scalar.

> **ShiftValuation** (f :: *RngMPolElt_FldPadExact*, n)
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the e coefficient of f by n(e).

> **ShiftSlope** (f :: *RngMPolElt_FldPadExact*, ns :: [])
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the x^e coefficient of f by ns*e.

> **\'&+\'** (fs :: [*RngMPolElt_FldPadExact*])
> 
> -> *RngMPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Sum.

