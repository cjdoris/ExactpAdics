# Univariate polynomials
{:#univariate-polynomials}


**Contents**
* [Creation of rings](#creation-of-rings)
* [Ring basics](#ring-basics)
* [Creation of polynomials](#creation-of-polynomials)
  * [From coefficients](#from-coefficients)
  * [Coercion](#coercion)
* [Polynomial basics](#polynomial-basics)
  * [Degree](#degree)
  * [Coefficients](#coefficients)
  * [Valuation](#valuation)
  * [Arithmetic](#arithmetic)
  * [Derivative](#derivative)
  * [Evaluate](#evaluate)
  * [Special forms](#special-forms)
* [Discriminant and Resultant](#discriminant-and-resultant)
* [Newton polygon](#newton-polygon)
* [Hensel lifting](#hensel-lifting)
* [Approximation](#approximation)
* [Root-finding and factorization](#root-finding-and-factorization)

## Creation of rings
{:#creation-of-rings}

<a id="PolynomialRing"></a><a id="PolynomialRing--FldPadExact"></a>
> **PolynomialRing** (F :: *FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The univariate polynomial ring over `F`.


## Ring basics
{:#ring-basics}

<a id="BaseRing"></a><a id="BaseRing--RngUPol_FldPadExact"></a>
> **BaseRing** (R :: *RngUPol_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of `R`.


<a id="AssignNames"></a><a id="AssignNames--RngUPol_FldPadExact--etc"></a><a id="AssignNames--RngUPol_FldPadExact--seq-MonStgElt"></a>
> **AssignNames** (~R :: *RngUPol_FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns the name of the variable of `R`.


<a id="Names"></a><a id="Names--RngUPol_FldPadExact"></a>
> **Names** (R :: *RngUPol_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The names of `R`.


<a id="Name"></a><a id="Name--RngUPol_FldPadExact--etc"></a><a id="Name--RngUPol_FldPadExact--RngIntElt"></a><a id="."></a><a id=".--RngUPol_FldPadExact--etc"></a><a id=".--RngUPol_FldPadExact--RngIntElt"></a>
> **Name** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Gets the `i`th generator of `R`.




<a id="Generator"></a><a id="Generator--RngUPol_FldPadExact"></a>
> **Generator** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The generator of `R`.


<a id="eq"></a><a id="eq--RngUPol_FldPadExact--etc"></a><a id="eq--RngUPol_FldPadExact--RngUPol_FldPadExact"></a>
> **\'eq\'** (R :: *RngUPol_FldPadExact*, S :: *RngUPol_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


<a id="ExistsCoveringStructure"></a><a id="ExistsCoveringStructure--RngUPol_FldPadExact--etc"></a><a id="ExistsCoveringStructure--RngUPol_FldPadExact--RngUPol_FldPadExact"></a><a id="ExistsCoveringStructure--RngUPol_FldPadExact--RngUPol"></a><a id="ExistsCoveringStructure--RngUPol--etc"></a><a id="ExistsCoveringStructure--RngUPol--RngUPol_FldPadExact"></a><a id="ExistsCoveringStructure--RngUPol_FldPadExact--Str"></a><a id="ExistsCoveringStructure--Str--etc"></a><a id="ExistsCoveringStructure--Str--RngUPol_FldPadExact"></a><a id="ExistsCoveringStructure--RngUPol--FldPadExact"></a><a id="ExistsCoveringStructure--FldPadExact--etc"></a><a id="ExistsCoveringStructure--FldPadExact--RngUPol"></a>
> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *RngUPol*)
> 
> **ExistsCoveringStructure** (S :: *RngUPol*, R :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *Str*)
> 
> **ExistsCoveringStructure** (S :: *Str*, R :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol*, S :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (S :: *FldPadExact*, R :: *RngUPol*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a polynomial ring containing both `R` and `S`.














## Creation of polynomials
{:#creation-of-polynomials}

### From coefficients
{:#from-coefficients}

<a id="Polynomial"></a><a id="Polynomial--seq-FldPadExactElt"></a>
> **Polynomial** (coeffs :: [*FldPadExactElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients.


<a id="Polynomial-2"></a><a id="Polynomial--FldPadExact--etc"></a><a id="Polynomial--FldPadExact--seq"></a>
> **Polynomial** (K :: *FldPadExact*, coeffs :: [])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial over `K` with the given coefficients.


### Coercion
{:#coercion}

<a id="IsCoercible"></a><a id="IsCoercible--RngUPol_FldPadExact--etc"></a><a id="IsCoercible--RngUPol_FldPadExact--any"></a>
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `X` is coercible to an element of `R`. If so, also returns the coerced element. Otherwise, also returns a string explaining why not.

Succeeds if either:
- `X` is an element of `R`
- `X` is coercible to the base ring of `R`
- `X` is a `RngUPol` or `RngUPol_FldPadExact` whose coefficients are coercible to the base ring of `R`
- `X` is a `RngUPol[FldPad]` coercible to the approximation ring of `R`
- `X` is a sequence of coefficients coercible to the base ring of `R`


<a id="CanChangeRing"></a><a id="CanChangeRing--RngUPolElt_FldPadExact--etc"></a><a id="CanChangeRing--RngUPolElt_FldPadExact--FldPadExact"></a><a id="CanChangeRing--RngUPolElt--etc"></a><a id="CanChangeRing--RngUPolElt--FldPadExact"></a>
> **CanChangeRing** (f :: *RngUPolElt_FldPadExact*, K :: *FldPadExact*)
> 
> **CanChangeRing** (f :: *RngUPolElt*, K :: *FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if `f` can be coerced to a polynomial over `K`. If so, also returns the coerced polynomial.




<a id="ChangeRing"></a><a id="ChangeRing--any--etc"></a><a id="ChangeRing--any--any"></a>
> **ChangeRing** (f, K)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Change the ring of `f` to `K`.


## Polynomial basics
{:#polynomial-basics}

<a id="BaseRing-2"></a><a id="BaseRing--RngUPolElt_FldPadExact"></a>
> **BaseRing** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of `f`.


### Degree
{:#degree}

<a id="Degree"></a><a id="Degree--RngUPolElt_FldPadExact"></a>
> **Degree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The degree of `f`.

**Parameters**
- `Strategy`

<a id="WeakDegree"></a><a id="WeakDegree--RngUPolElt_FldPadExact"></a>
> **WeakDegree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak degree of `f`, the degree of its approximation.


### Coefficients
{:#coefficients}

<a id="Coefficients"></a><a id="Coefficients--RngUPolElt_FldPadExact"></a>
> **Coefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The coefficients of `f`.

**Parameters**
- `Strategy`

<a id="WeakCoefficients"></a><a id="WeakCoefficients--RngUPolElt_FldPadExact"></a>
> **WeakCoefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of `f`, possibly including some leading zeros.


<a id="LeadingCoefficient"></a><a id="LeadingCoefficient--RngUPolElt_FldPadExact"></a>
> **LeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading coefficient of `f`.

**Parameters**
- `Strategy`

<a id="WeakLeadingCoefficient"></a><a id="WeakLeadingCoefficient--RngUPolElt_FldPadExact"></a>
> **WeakLeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading weak coefficient of `f`.


<a id="Coefficient"></a><a id="Coefficient--RngUPolElt_FldPadExact--etc"></a><a id="Coefficient--RngUPolElt_FldPadExact--RngIntElt"></a>
> **Coefficient** (f :: *RngUPolElt_FldPadExact*, i :: *RngIntElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The `i`th coefficient of `f`.


### Valuation
{:#valuation}

<a id="IsIntegral"></a><a id="IsIntegral--RngUPolElt_FldPadExact"></a>
> **IsIntegral** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

True if each coefficient of `f` is integral.


<a id="MinValuation"></a><a id="MinValuation--RngUPolElt_FldPadExact"></a>
> **MinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of `f`.

**Parameters**
- `Strategy`

<a id="ValuationEq"></a><a id="ValuationEq--RngUPolElt_FldPadExact--etc"></a><a id="ValuationEq--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationEq** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is `n`.


<a id="ValuationNe"></a><a id="ValuationNe--RngUPolElt_FldPadExact--etc"></a><a id="ValuationNe--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationNe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is not `n`.


<a id="ValuationLe"></a><a id="ValuationLe--RngUPolElt_FldPadExact--etc"></a><a id="ValuationLe--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationLe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is at most `n`.


<a id="ValuationLt"></a><a id="ValuationLt--RngUPolElt_FldPadExact--etc"></a><a id="ValuationLt--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationLt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is less than `n`.


<a id="ValuationGe"></a><a id="ValuationGe--RngUPolElt_FldPadExact--etc"></a><a id="ValuationGe--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationGe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is at least `n`.


<a id="ValuationGt"></a><a id="ValuationGt--RngUPolElt_FldPadExact--etc"></a><a id="ValuationGt--RngUPolElt_FldPadExact--RngIntElt"></a>
> **ValuationGt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is greater than `n`.


### Arithmetic
{:#arithmetic}

<a id="-"></a><a id="---RngUPolElt_FldPadExact"></a><a id="+"></a><a id="+--RngUPolElt_FldPadExact--etc"></a><a id="+--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a><a id="---RngUPolElt_FldPadExact--etc"></a><a id="---RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a><a id="&+"></a><a id="&+--seq-RngUPolElt_FldPadExact"></a><a id="*"></a><a id="*--RngUPolElt_FldPadExact--etc"></a><a id="*--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a><a id="&*"></a><a id="&*--seq-RngUPolElt_FldPadExact"></a><a id="^"></a><a id="^--RngUPolElt_FldPadExact--etc"></a><a id="^--RngUPolElt_FldPadExact--RngIntElt"></a>
> **\'-\'** (f :: *RngUPolElt_FldPadExact*)
> 
> **\'+\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> **\'-\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> **\'&+\'** (fs :: [*RngUPolElt_FldPadExact*])
> 
> **\'\*\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> **\'&\*\'** (fs :: [*RngUPolElt_FldPadExact*])
> 
> **\'^\'** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Negate, add, subtract, sum, multiply, product, power.














<a id="div"></a><a id="div--RngUPolElt_FldPadExact--etc"></a><a id="div--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **\'div\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Exact division.

**Parameters**
- `Strategy`: Used to check that `g` is nonzero.

<a id="/"></a><a id="/--RngUPolElt_FldPadExact--etc"></a><a id="/--RngUPolElt_FldPadExact--FldPadExactElt"></a>
> **\'/\'** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Scalar division.

**Parameters**
- `Strategy`: Used to check that `x` is nonzero.

<a id="ShiftValuation"></a><a id="ShiftValuation--RngUPolElt_FldPadExact--etc"></a><a id="ShiftValuation--RngUPolElt_FldPadExact--any"></a>
> **ShiftValuation** (f :: *RngUPolElt_FldPadExact*, ns)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the `i`th coefficient of `f` by `ns(i)`.


<a id="ShiftSlope"></a><a id="ShiftSlope--RngUPolElt_FldPadExact--etc"></a><a id="ShiftSlope--RngUPolElt_FldPadExact--any"></a>
> **ShiftSlope** (f :: *RngUPolElt_FldPadExact*, n)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the `i`th coefficient of `f` by `i*n`.

**Parameters**
- `Pivot`: Shifts the valuation a further `-n*Pivot` so that the `Pivot`th coefficient is unchanged.
- `Offset`: Shifts the valuation a further `Offset`.

<a id="ShiftArgument"></a><a id="ShiftArgument--RngUPolElt_FldPadExact--etc"></a><a id="ShiftArgument--RngUPolElt_FldPadExact--FldPadExactElt"></a>
> **ShiftArgument** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

`f(x+X)` as a polnomial in `X`


<a id="Slice"></a><a id="Slice--RngUPolElt_FldPadExact--etc"></a><a id="Slice--RngUPolElt_FldPadExact--seq-RngIntElt"></a>
> **Slice** (f :: *RngUPolElt_FldPadExact*, idxs :: [*RngIntElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients of `f`.


<a id="Reverse"></a><a id="Reverse--RngUPolElt_FldPadExact"></a>
> **Reverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed coefficients of `f`: `f`(1/x)*x^deg(`f`).

**Parameters**
- `Strategy`

<a id="WeakReverse"></a><a id="WeakReverse--RngUPolElt_FldPadExact"></a>
> **WeakReverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed weak coefficient of `f`: `f`(1/x)*x^weakdeg(`f`).


<a id="Decimate"></a><a id="Decimate--RngUPolElt_FldPadExact--etc"></a><a id="Decimate--RngUPolElt_FldPadExact--RngIntElt"></a>
> **Decimate** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial of the ith coefficients of `f` where i=`Phase` mod `n`.

**Parameters**
- `Phase`

### Derivative
{:#derivative}

<a id="Derivative"></a><a id="Derivative--RngUPolElt_FldPadExact"></a>
> **Derivative** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The first derivative of `f`.


<a id="Derivative-2"></a><a id="Derivative--RngUPolElt_FldPadExact--etc"></a><a id="Derivative--RngUPolElt_FldPadExact--RngIntElt"></a>
> **Derivative** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The `n`th derivative of `f`.


### Evaluate
{:#evaluate}

<a id="Evaluate"></a><a id="Evaluate--RngUPolElt_FldPadExact--etc"></a><a id="Evaluate--RngUPolElt_FldPadExact--FldPadExactElt"></a><a id="Evaluate--RngUPolElt_FldPadExact--any"></a><a id="Evaluate--RngUPolElt--etc"></a><a id="Evaluate--RngUPolElt--FldPadExactElt"></a>
> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **Evaluate** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Evaluates `f` at `x`.






<a id="Evaluate-2"></a><a id="Evaluate--RngUPolElt_FldPadExact--etc-2"></a><a id="Evaluate--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **Evaluate** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Evaluates `f` at `g`.


### Special forms
{:#special-forms}

<a id="IsInertial"></a><a id="IsInertial--RngUPolElt_FldPadExact"></a>
> **IsInertial** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is inertial (i.e. it is irreducible as a polynomial over the residue class field).

**Parameters**
- `Strategy`

<a id="IsEisenstein"></a><a id="IsEisenstein--RngUPolElt_FldPadExact"></a>
> **IsEisenstein** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is Eisenstein.


## Discriminant and Resultant
{:#discriminant-and-resultant}

<a id="Discriminant"></a><a id="Discriminant--RngUPolElt_FldPadExact"></a>
> **Discriminant** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The discriminant of `f`.

**Parameters**
- `Strategy`

<a id="Resultant"></a><a id="Resultant--RngUPolElt_FldPadExact--etc"></a><a id="Resultant--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **Resultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of `f` and `g`.

**Parameters**
- `Strategy`
- `fStrategy`
- `gStrategy`

<a id="WeakResultant"></a><a id="WeakResultant--RngUPolElt_FldPadExact--etc"></a><a id="WeakResultant--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **WeakResultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of `f` and `g`.


<a id="Resultant-2"></a><a id="Resultant--seq-RngUPolElt_FldPadExact"></a>
> **Resultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generalized resultant of `fs`.

**Parameters**
- `Strategy`
- `Strategies`

<a id="WeakResultant-2"></a><a id="WeakResultant--seq-RngUPolElt_FldPadExact"></a>
> **WeakResultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of `fs`, i.e. the resultant assuming the weak degree of each f in `fs` is correct.


## Newton polygon
{:#newton-polygon}

<a id="NewtonPolygon"></a><a id="NewtonPolygon--RngUPolElt_FldPadExact"></a>
> **NewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The Newton polygon of `f`.


**Parameters**
- `Strategy`
- `Support := <0,WeakDegree(f)>`: When given, must be a tuple `<a,b>` of two integers representing an interval; the support of the returned Newton polygon contains this. By default, returns the whole Newton polygon. If you are ok with f having one root very close to 0, then `Support:=<1,WeakDegree(f)>` may be appropriate.

<a id="WeakPartialNewtonPolygon"></a><a id="WeakPartialNewtonPolygon--RngUPolElt_FldPadExact"></a>
> **WeakPartialNewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

A fragment of the Newton polygon of `f`, based on its non weakly zero coefficients.


## Hensel lifting
{:#hensel-lifting}

<a id="IsHenselLiftable"></a><a id="IsHenselLiftable--RngUPolElt_FldPadExact--etc"></a><a id="IsHenselLiftable--RngUPolElt_FldPadExact--FldPadExactElt"></a><a id="IsHenselLiftable--RngUPolElt_FldPadExact--any"></a><a id="IsHenselLiftable--RngUPolElt--etc"></a><a id="IsHenselLiftable--RngUPolElt--FldPadExactElt"></a>
> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **IsHenselLiftable** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True if `x` is Hensel-liftable to a root of `f`. If so, also returns the root.

This uses a generalized statement of Hensel's lemma which does not require the inputs to be integral, namely:

**Hensel's lemma.** *If $f(x) \in K[x]$ and $x \in K$ such that $x$ is closer to one root of $f$ than any other, then iterating $x \mapsto x - f(x)/f'(x)$ converges to that root.*





**Parameters**
- `Strategy`

<a id="HenselLift"></a><a id="HenselLift--RngUPolElt_FldPadExact--etc"></a><a id="HenselLift--RngUPolElt_FldPadExact--any"></a><a id="HenselLift--RngUPolElt--etc"></a><a id="HenselLift--RngUPolElt--any"></a>
> **HenselLift** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **HenselLift** (f :: *RngUPolElt*, x)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The root of `f` uniquely closest to `x` (see `IsHenselLiftable`).



**Parameters**
- `Strategy`

<a id="IsHenselLiftable-2"></a><a id="IsHenselLiftable--RngUPolElt_FldPadExact--etc-2"></a><a id="IsHenselLiftable--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if `g` is Hensel-liftable to a factor of `f`. If so, also returns the factor (with the same leading coefficient as `g`) and its cofactor.

**Future.** Optionally choose `Slope`, `fShift` and `gShift` automagically.


**Parameters**
- `Strategy`
- `Slope := 0`: A rational number, deslope the polynomials by this amount before applying Hensel's lemma; usually Slope will be a slope of the Newton polygon of `g`.
- `fShift := 0`: A rational number, subtract this from the valuation of `f` after applying `Slope`.
- `gShift := 0`: A rational number, subtract this from the valuation of `g` after applying `Slope`.

## Approximation
{:#approximation}

<a id="SetBaselineValuation"></a><a id="SetBaselineValuation--RngUPolElt_FldPadExact--etc"></a><a id="SetBaselineValuation--RngUPolElt_FldPadExact--any"></a>
> **SetBaselineValuation** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Sets the baseline valuation of `f` to `n`.


<a id="IncreaseBaselinePrecision"></a><a id="IncreaseBaselinePrecision--RngUPolElt_FldPadExact--etc"></a><a id="IncreaseBaselinePrecision--RngUPolElt_FldPadExact--any"></a>
> **IncreaseBaselinePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the baseline precision of `f` to `n`.


<a id="WeakApproximation"></a><a id="WeakApproximation--RngUPolElt_FldPadExact"></a>
> **WeakApproximation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.


<a id="WeakMinValuation"></a><a id="WeakMinValuation--RngUPolElt_FldPadExact"></a>
> **WeakMinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The minimum valuation of the coefficients of the approximation of `f`.


<a id="IncreaseAbsolutePrecision_Lazy"></a><a id="IncreaseAbsolutePrecision_Lazy--RngUPol_FldPadExact--etc"></a><a id="IncreaseAbsolutePrecision_Lazy--RngUPol_FldPadExact--RngIntElt"></a>
> **IncreaseAbsolutePrecision_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the precision of the approximation to `R` to at least `pr`.


<a id="Approximation_Lazy"></a><a id="Approximation_Lazy--RngUPol_FldPadExact--etc"></a><a id="Approximation_Lazy--RngUPol_FldPadExact--RngIntElt"></a>
> **Approximation_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to `R` whose base field has default precision `pr`.


<a id="IsDefinitelyZero"></a><a id="IsDefinitelyZero--RngUPolElt_FldPadExact"></a>
> **IsDefinitelyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is precisely zero.


<a id="UpdateZero"></a><a id="UpdateZero--RngUPolElt_FldPadExact--etc"></a><a id="UpdateZero--RngUPolElt_FldPadExact--seq-RngIntElt"></a>
> **UpdateZero** (f :: *RngUPolElt_FldPadExact*, aprs :: [*RngIntElt*])
{:.intrinsic}

Updates `f` to sum_i(O(pi^`aprs`[i+1])*x^i).


<a id="IsWeaklyZero"></a><a id="IsWeaklyZero--RngUPolElt_FldPadExact"></a>
> **IsWeaklyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is weakly zero.

**Parameters**
- `Strategy`

<a id="IsWeaklyEqual"></a><a id="IsWeaklyEqual--RngUPolElt_FldPadExact--etc"></a><a id="IsWeaklyEqual--RngUPolElt_FldPadExact--RngUPolElt_FldPadExact"></a>
> **IsWeaklyEqual** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` and `g` are weakly equal.


## Root-finding and factorization
{:#root-finding-and-factorization}

<a id="Factorization"></a><a id="Factorization--RngUPolElt_FldPadExact"></a>
> **Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

The factorization of `f` as a sequence of `<factor, multiplicity>` pairs.

It is only possible to factorize squarefree polynomials, so `multiplicity` is always 1. The factors are monic; also returns the leading coefficient of `f`.


**Parameters**
- `Strategy`: The precision strategy.
- `Alg := "OM"`: The algorithm to use, either "Builtin" to use Magma's bulitin algorithm or "OM" to use our implementation.
- `Certificates`: When `true`, also returns a corresponding sequence of certificates including fields `F`, `E`, `Rho` and `Pi`.
- `Extensions`: When `true` implies `Certificates` and also includes `Extension` in each certificate.

<a id="Roots"></a><a id="Roots--RngUPolElt_FldPadExact"></a>
> **Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The roots of `f`.

**Parameters**
- `Strategy`
- `Alg`

<a id="NewtonPolygonFactorization"></a><a id="NewtonPolygonFactorization--RngUPolElt_FldPadExact"></a>
> **NewtonPolygonFactorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The factorization of `f` according to its Newton polygon, as a sequence of factors.


**Parameters**
- `Strategy`
- `Residual := false`: When `true` then further factorizes according to the factorization of each residual polynomial.

<a id="Builtin_Factorization"></a><a id="Builtin_Factorization--RngUPolElt_FldPadExact"></a>
> **Builtin_Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

Called internally by `Factorization` with `Alg:="Builtin"`.


**Parameters**
- `Strategy`: The precision strategy.
- `Certificates`: When `true`, also returns a corresponding sequence of certificates including fields `F`, `E`, `Rho` and `Pi`.
- `Extensions`: When `true` implies `Certificates` and also includes `Extension` in each certificate.
- `Ideals`: When `true` implies `Certificates` and also includes `IdealGen1` and `IdealGen2` in each certificate.
- `UseNP := true`: When `true`, factorizes `f` first by its Newton polygon. This can be a significant performance improvement for large degree polynomials with several faces.

<a id="Builtin_Roots"></a><a id="Builtin_Roots--RngUPolElt_FldPadExact"></a>
> **Builtin_Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Called internally by `Roots` with `Alg:="Builtin"`.


**Parameters**
- `Strategy`: The precision strategy.
- `UseNP := true`: When `true`, factorizes `f` first by its Newton polygon.

<a id="ExactpAdics_Factorization"></a><a id="ExactpAdics_Factorization--RngUPolElt_FldPadExact"></a>
> **ExactpAdics_Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadExactElt*, []
> {:.ret}
{:.intrinsic}

Called internally by `Factorization` with `Alg:="OM"`.


**Parameters**
- `Proof := true`: When true, the output is proven.
- `Certificates := false`: When true, implies `Proof:=true` and returns certificates.
- `Extensions := false`: When true, implies `Certificates:=true` and certificates include extensions.
- `InternalData := false`: When true, implies `Certificates:=true` and certificates include the state of the branch leading to this factor.
- `Strategy`: The precision strategy.
- `SimpleLift := false`: When true, uses "single factor lifting" just enough to use simple Hensel lifting on the factors. Probably slower, but possibly more reliable.

<a id="ExactpAdics_Factorization-2"></a><a id="ExactpAdics_Factorization--RngUPolElt-FldPad"></a>
> **ExactpAdics_Factorization** (f :: *RngUPolElt*[*FldPad*])
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

Our implementation of an OM factorization algorithm for Magma's builtin p-adics.


**Parameters**
- `Proof := true`: When true, the output is proven.
- `Certificates := false`: When true, implies `Proof:=true` and also outputs certificates.
- `Extensions := false`: When true, implies `Certificates:=true` and certificates include extensions.
- `InternalData := false`: When true, implies `Certificates:=true` and certificates include the state of the branch leading to this factor.
- `Lift := true`: When false, does not lift the result to full precision. Hence faster, but gives less precise results.

<a id="ExactpAdics_Roots"></a><a id="ExactpAdics_Roots--RngUPolElt_FldPadExact"></a>
> **ExactpAdics_Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Called internally by `Roots` with `Alg:="OM"`.


**Parameters**
- `Strategy`: The precision strategy.

<a id="ExactpAdics_Roots-2"></a><a id="ExactpAdics_Roots--RngUPolElt-FldPad"></a>
> **ExactpAdics_Roots** (f :: *RngUPolElt*[*FldPad*])
> 
> -> []
> {:.ret}
{:.intrinsic}

Our implementation of an OM factorization algorithm, specialised to root-finding, for Magma's builtin p-adics.


**Parameters**
- `Lift := true`: When false, does not lift the result to full precision. Hence faster, but gives less precise results.

