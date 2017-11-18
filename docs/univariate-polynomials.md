# Univariate polynomials


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

> **PolynomialRing** (F :: *FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The univariate polynomial ring over `F`.


## Ring basics

> **BaseRing** (R :: *RngUPol_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of `R`.


> **AssignNames** (~R :: *RngUPol_FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns the name of the variable of `R`.


> **Names** (R :: *RngUPol_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The names of `R`.


> **Name** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Gets the `i`th generator of `R`.




> **Generator** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The generator of `R`.


> **\'eq\'** (R :: *RngUPol_FldPadExact*, S :: *RngUPol_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


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

### From coefficients

> **Polynomial** (coeffs :: [*FldPadExactElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients.


> **Polynomial** (K :: *FldPadExact*, coeffs :: [])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial over `K` with the given coefficients.


### Coercion

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


> **CanChangeRing** (f :: *RngUPolElt_FldPadExact*, K :: *FldPadExact*)
> 
> **CanChangeRing** (f :: *RngUPolElt*, K :: *FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if `f` can be coerced to a polynomial over `K`. If so, also returns the coerced polynomial.




> **ChangeRing** (f, K)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Change the ring of `f` to `K`.


## Polynomial basics

> **BaseRing** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of `f`.


### Degree

> **Degree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The degree of `f`.

**Parameters**
- `Strategy`

> **WeakDegree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak degree of `f`, the degree of its approximation.


### Coefficients

> **Coefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The coefficients of `f`.

**Parameters**
- `Strategy`

> **WeakCoefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of `f`, possibly including some leading zeros.


> **LeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading coefficient of `f`.

**Parameters**
- `Strategy`

> **WeakLeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading weak coefficient of `f`.


> **Coefficient** (f :: *RngUPolElt_FldPadExact*, i :: *RngIntElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The `i`th coefficient of `f`.


### Valuation

> **IsIntegral** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

True if each coefficient of `f` is integral.


> **MinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of `f`.

**Parameters**
- `Strategy`

> **ValuationEq** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is `n`.


> **ValuationNe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is not `n`.


> **ValuationLe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is at most `n`.


> **ValuationLt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is less than `n`.


> **ValuationGe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is at least `n`.


> **ValuationGt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of `f` is greater than `n`.


### Arithmetic

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














> **\'div\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Exact division.

**Parameters**
- `Strategy`: Used to check that `g` is nonzero.

> **\'/\'** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Scalar division.

**Parameters**
- `Strategy`: Used to check that `x` is nonzero.

> **ShiftValuation** (f :: *RngUPolElt_FldPadExact*, ns)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the `i`th coefficient of `f` by `ns(i)`.


> **ShiftSlope** (f :: *RngUPolElt_FldPadExact*, n)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Shifts the valuation of the `i`th coefficient of `f` by `i*n`.

**Parameters**
- `Pivot`: Shifts the valuation a further `-n*Pivot` so that the `Pivot`th coefficient is unchanged.
- `Offset`: Shifts the valuation a further `Offset`.

> **ShiftArgument** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

`f(x+X)` as a polnomial in `X`


> **Slice** (f :: *RngUPolElt_FldPadExact*, idxs :: [*RngIntElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients of `f`.


> **Reverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed coefficients of `f`: `f`(1/x)*x^deg(`f`).

**Parameters**
- `Strategy`

> **WeakReverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed weak coefficient of `f`: `f`(1/x)*x^weakdeg(`f`).


> **Decimate** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial of the ith coefficients of `f` where i=`Phase` mod `n`.

**Parameters**
- `Phase`

### Derivative

> **Derivative** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The first derivative of `f`.


> **Derivative** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The `n`th derivative of `f`.


### Evaluate

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






> **Evaluate** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Evaluates `f` at `g`.


### Special forms

> **IsInertial** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is inertial (i.e. it is irreducible as a polynomial over the residue class field).

**Parameters**
- `Strategy`

> **IsEisenstein** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is Eisenstein.


## Discriminant and Resultant

> **Discriminant** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The discriminant of `f`.

**Parameters**
- `Strategy`

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

> **WeakResultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of `f` and `g`.


> **Resultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generalized resultant of `fs`.

**Parameters**
- `Strategy`
- `Strategies`

> **WeakResultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of `fs`, i.e. the resultant assuming the weak degree of each f in `fs` is correct.


## Newton polygon

> **NewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The Newton polygon of `f`.


**Parameters**
- `Strategy`
- `Support := <0,WeakDegree(f)>`: When given, must be a tuple `<a,b>` of two integers representing an interval; the support of the returned Newton polygon contains this. By default, returns the whole Newton polygon. If you are ok with f having one root very close to 0, then `Support:=<1,WeakDegree(f)>` may be appropriate.

> **WeakPartialNewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

A fragment of the Newton polygon of `f`, based on its non weakly zero coefficients.


## Hensel lifting

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

> **SetBaselineValuation** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Sets the baseline valuation of `f` to `n`.


> **IncreaseBaselinePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the baseline precision of `f` to `n`.


> **WeakApproximation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.


> **WeakMinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The minimum valuation of the coefficients of the approximation of `f`.


> **IncreaseAbsolutePrecision_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the precision of the approximation to `R` to at least `pr`.


> **Approximation_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to `R` whose base field has default precision `pr`.


> **IsDefinitelyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is precisely zero.


> **UpdateZero** (f :: *RngUPolElt_FldPadExact*, aprs :: [*RngIntElt*])
{:.intrinsic}

Updates `f` to sum_i(O(pi^`aprs`[i+1])*x^i).


> **IsWeaklyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` is weakly zero.

**Parameters**
- `Strategy`

> **IsWeaklyEqual** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f` and `g` are weakly equal.


## Root-finding and factorization

> **Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

The factorization of `f` as a sequence of `<factor, multiplicity>` pairs.

It is only possible to factorize squarefree polynomials, so `multiplicity` is always 1. The factors are monic; also returns the leading coefficient of `f`.


**Parameters**
- `Strategy`: The precision strategy.
- `Certificates`: When `true`, also returns a corresponding sequence of certificates including fields `F`, `E`, `Rho` and `Pi`.
- `Extensions`: When `true` implies `Certificates` and also includes `Extension` in each certificate.
- `Ideals`: When `true` implies `Certificates` and also includes `IdealGen1` and `IdealGen2` in each certificate.
- `UseNP := false`: When `true`, factorizes `f` first by its Newton polygon. This can be a significant performance improvement for large degree polynomials with several faces.

> **Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The roots of `f` as a sequence of `<root, multiplicity>` pairs.

`f` must not have repeated roots, and hence `multiplicity` will always be 1.


**Parameters**
- `Strategy`: The precision strategy.
- `UseNP`

> **NewtonPolygonFactorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The factorization of `f` according to its Newton polygon, as a sequence of factors.


**Parameters**
- `Strategy`
- `Residual := false`: When `true` then further factorizes according to the factorization of each residual polynomial.

