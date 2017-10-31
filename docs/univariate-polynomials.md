# Univariate polynomials

**Contents**
* [Creation of rings](#creation-of-rings)
* [Ring basics](#ring-basics)
* [Creation of polynomials](#creation-of-polynomials)
  * [From coefficients](#from-coefficients)
  * [Coersion](#coersion)
* [Polynomial basics](#polynomial-basics)
* [Arithmetic](#arithmetic)
* [Discriminant and Resultant](#discriminant-and-resultant)
* [Newton polygon](#newton-polygon)
* [Hensel lifting](#hensel-lifting)
* [Ramification polynomials and polygons](#ramification-polynomials-and-polygons)
* [Hasse-Herbrand transition function](#hasse-herbrand-transition-function)
  * [Creation](#creation)
  * [Operations](#operations)
* [Approximation](#approximation)
* [Internals](#internals)
* [Root-finding and factorization](#root-finding-and-factorization)

## Creation of rings

> **PolynomialRing** (F :: *FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The univariate polynomial ring over F.


## Ring basics

> **BaseRing** (R :: *RngUPol_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of R.


> **AssignNames** (~R :: *RngUPol_FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns the name of the variable of R.


> **Names** (R :: *RngUPol_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The names of R.


> **Name** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Gets the ith generator of R.




> **Generator** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The generator of R.


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

True if there is a polynomial ring containing both R and S.














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

The polynomial over K with the given coefficients.


### Coersion

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
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if f can be coerced to a polynomial over K. If so, also returns the coerced polynomial.




> **ChangeRing** (f, K)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Change the ring of f to K.


## Polynomial basics

> **Slice** (f :: *RngUPolElt_FldPadExact*, idxs :: [*RngIntElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients of f.


> **Reverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed coefficients of f: f(1/x)*x^deg(f).

**Parameters**
- `Strategy`

> **WeakReverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed weak coefficient of f: f(1/x)*x^weakdeg(f).


> **Decimate** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial of the ith coefficients of f where i=Phase mod n.

**Parameters**
- `Phase`

> **ValuationEq** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is n.


> **ValuationNe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is not n.


> **ValuationLe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is at most n.


> **ValuationLt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is less than n.


> **ValuationGe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is at least n.


> **ValuationGt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is greater than n.


> **Derivative** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The nth derivative of f.


> **Derivative** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The derivative of f.


> **Evaluate** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

f(g).


> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **Evaluate** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **IsIntegral** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

f(x).








> **MinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of f.

**Parameters**
- `Strategy`

> **BaseRing** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of f.


> **IsInertial** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is inertial (i.e. it is irreducible as a polynomial over the residue class field).

**Parameters**
- `Strategy`

> **Coefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The coefficients of f.

**Parameters**
- `Strategy`

> **WeakCoefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of f, possibly including some leading zeros.


> **LeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading coefficient of f.

**Parameters**
- `Strategy`

> **WeakLeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading weak coefficient of f.


> **Degree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The degree of f.

**Parameters**
- `Strategy`

> **WeakDegree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak degree of f, the degree of its approximation.


> **IsEisenstein** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is Eisenstein.


> **Parent** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial ring containing f.


> **Coefficient** (f :: *RngUPolElt_FldPadExact*, i :: *RngIntElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The ith coefficient of f.


## Arithmetic

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


## Discriminant and Resultant

> **Discriminant** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The discriminant of f.

**Parameters**
- `Strategy`

> **Resultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of f and g.

**Parameters**
- `Strategy`
- `fStrategy`
- `gStrategy`

> **WeakResultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of f and g.


> **Resultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generalized resultant of fs.

**Parameters**
- `Strategy`
- `Strategies`

> **WeakResultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of fs, i.e. the resultant assuming the weak degree of each f in fs is correct.


## Newton polygon

> **NewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The Newton polygon of f.

**Parameters**
- `Strategy`

> **WeakPartialNewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

A fragment of the Newton polygon of f, based on its non weakly zero coefficients.


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

## Ramification polynomials and polygons


In this package, if $f(x)$ is an Eisenstein polynomial with a root $\pi$, then we define the *ramification polynomial of $f$* to be $f(x+\pi)$ and the *ramification polygon of $f$* to be the Newton polygon of this. Observe that since $f(\pi)=0$ then the ramification polygon has end vertices at 1 and $\deg f$.

If $L/K$ is totally ramified, then the *ramification polygon of $L/K$* is the ramification polygon of any Eisenstein polynomial defining the extension. If $L/U$ is totally ramified and $U/K$ is unramified then the *ramification polygon of $L/K$* is that of $L/U$ with an additional horizontal face from $((L:U),0)$ to $((L:K),0)$.

The Newton polygon is an invariant of an extension and describes the ramification breaks of the *Galois set* $\Gamma(L/K)$ of embeddings $L \hookrightarrow \bar{K}$. This generalizes ramification theory of Galois extensions, where the Galois set is equal to the Galois group.

> **RamificationResidualPolynomials** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The residual polynomials of the ramification polygon of f.


> **RamificationResidualPolynomial** (f :: *RngUPolElt_FldPadExact*, face :: *NwtnPgonFace*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

The residual polynomial of the given face of the ramification polygon of f.


> **RamificationPolynomial** (L :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The ramification polynomial of L with respect to its defining polynomial.


> **RamificationPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of the extension defined by f.


> **RamificationPolygon** (E :: *FldPadExact*)
> 
> **RamificationPolygon** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of `E` over its base field or `F`.




## Hasse-Herbrand transition function

### Creation

> **TransitionFunction** (E :: *FldPadExact*)
> 
> **TransitionFunction** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> **TransitionFunction** (E :: *FldPad*)
> 
> **TransitionFunction** (E :: *FldPad*, F :: *FldPad*)
> 
> -> *HassHerbTransFunc*
> {:.ret}
{:.intrinsic}

The Hasse-Herbrand transition function of `E` over its base field or `F`.








### Operations

> **Degree** (h :: *HassHerbTransFunc*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of the extension this is the transition function of.


> **Vertices** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The vertices of the function.


> **LowerBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The lower breaks of h.


> **UpperBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The upper breaks of h.


> **\'eq\'** (h1 :: *HassHerbTransFunc*, h2 :: *HassHerbTransFunc*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if h1 and h2 are equal as field invariants, i.e. they define the same function.


> **\'@\'** (v, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Evaluates h at v.


> **\'@@\'** (u, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The inverse of h at u.


> **RamificationPolygon** (h :: *HassHerbTransFunc*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of a totally ramified extension with the given transition function.


## Approximation

> **SetBaselineValuation** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Sets the baseline valuation of f to n.


> **BaselineValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The baseline valuation of f.


> **BaselinePrecision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The baseline precision of f: AbsolutePrecision(f) - BaselineValuation(f).


> **IncreaseBaselinePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the baseline precision of f to n.


> **WeakApproximation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.


> **WeakValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuations of the coefficients of the approximation of f.


> **WeakMinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The minimum valuation of the coefficients of the approximation of f.


> **AbsolutePrecision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The absolute precisions of the coefficients of the approximation of f.


> **Precision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The precisions of the coefficients of the approximation of f.


> **Approximation_Lazy** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> **Approximation** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to f.



**Parameters**
- `Quick`
- `FixPr`

> **IncreaseAbsolutePrecision_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the precision of the approximation to R to at least pr.


> **Approximation_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

An approximation to R whose base field has default precision pr.




> **Approximation** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

The approximation to R.


> **IsDefinitelyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is precisely zero.


> **IncreaseAbsolutePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the absolute precision of f to n.


> **IncreaseAbsolutePrecision_Lazy** (f :: *RngUPolElt_FldPadExact*, n)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A getter which when evaluated increases the absolute precision of f.


> **Update** (f :: *RngUPolElt_FldPadExact*, app :: *RngUPolElt*[*FldPad*])
{:.intrinsic}

Updates f to app.


> **UpdateZero** (f :: *RngUPolElt_FldPadExact*, aprs :: [*RngIntElt*])
{:.intrinsic}

Updates f to sum_i(O(pi^aprs[i+1])*x^i).


> **IsWeaklyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is weakly zero.

**Parameters**
- `Strategy`

> **IsWeaklyEqual** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f and g are weakly equal.


## Internals

> **SetData** (f :: *RngUPolElt_FldPadExact*, data)
{:.intrinsic}

Sets the custom data field.


> **GetData** (f :: *RngUPolElt_FldPadExact*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Gets the custom data field.


## Root-finding and factorization

> **Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

The factorization of f as a sequence of `<factor, multiplicity>` pairs.

It is only possible to factorize squarefree polynomials, so `multiplicity` is always 1. The factors are monic; also returns the leading coefficient of `f`.


**Parameters**
- `Strategy`: The precision strategy.
- `Certificates`: When `true`, also returns a corresponding sequence of certificates including fields `F`, `E`, `Rho` and `Pi`.
- `Extensions`: When `true` implies `Certificates` and also includes `Extension` in each certificate.
- `Ideals`: When `true` implies `Certificates` and also includes `IdealGen1` and `IdealGen2` in each certificate.

> **Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The roots of `f` as a sequence of `<root, multiplicity>` pairs.

`f` must not have repeated roots, and hence `multiplicity` will always be 1.


**Parameters**
- `Strategy`: The precision strategy.

