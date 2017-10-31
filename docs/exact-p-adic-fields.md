# Exact p-adic fields


**Contents**
* [Creation of p-adic fields](#creation-of-p-adic-fields)
  * [Prime fields](#prime-fields)
  * [Extensions](#extensions)
  * [Completions](#completions)
  * [From approximate fields](#from-approximate-fields)
* [Creation of p-adic numbers](#creation-of-p-adic-numbers)
  * [Distinguished elements](#distinguished-elements)
  * [From coefficients](#from-coefficients)
  * [Coercion](#coercion)
  * [Random](#random)
* [Basic operations on p-adic numbers](#basic-operations-on-p-adic-numbers)
* [Arithmetic](#arithmetic)
* [Valuation](#valuation)
  * [Comparison to constant](#comparison-to-constant)
  * [Comparison between elements](#comparison-between-elements)
  * [Smallest and closest](#smallest-and-closest)
* [Extensions](#extensions)
  * [Basic information](#basic-information)
  * [Invariants](#invariants)
  * [Ramification predicates](#ramification-predicates)
  * [Printing](#printing)
  * [Standard form](#standard-form)
* [Residue class field](#residue-class-field)
* [Ramification polynomials and polygons](#ramification-polynomials-and-polygons)
* [Hasse-Herbrand transition function](#hasse-herbrand-transition-function)
  * [Creation](#creation)
  * [Operations](#operations)
* [Primitivity and minimal polynomials](#primitivity-and-minimal-polynomials)
* [Quotient ring](#quotient-ring)
* [Homomorphisms (incomplete feature)](#homomorphisms-incomplete-feature)
* [Temporary field (incomplete feature)](#temporary-field-incomplete-feature)
* [Integer ring (incomplete feature)](#integer-ring-incomplete-feature)
* [Approximation](#approximation)
* [Internals](#internals)
  * [FldPadExactElt](#fldpadexactelt)
  * [ExtDataFldPadExact](#extdatafldpadexact)

## Creation of p-adic fields

### Prime fields

> **ExactpAdicField** (p :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The exact p-adic field.


### Extensions

> **ext** \<E :: *FldPadExact* \| ...>
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

An extension of `E`, where the right hand side is either:
- an integer, giving the unramified extension of this degree
- coercible to a defining polynomial (Eisenstein or inertial)


> **Extension** (f :: *RngUPolElt_FldPadExact*)
> 
> **Extension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The extension defined by `f` over its base field or `F`.




> **UnramifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> **UnramifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension defined by `f` over its base field or `F`.




> **UnramifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension of `F` of degree `n`.


> **TotallyRamifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> **TotallyRamifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension defined by `f` over its base field or `F`.




> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*, pi)
> 
> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension of `F` of degree `n` got by adjoining the `n`th root of `pi` (or the default uniformizer of `F`).




### Completions

> **ExactCompletion** (K :: *FldRat*, P :: *RngIntElt*)
> 
> **ExactCompletion** (K :: *FldRat*, P :: *RngInt*)
> 
> **ExactCompletion** (K :: *FldNum*, P :: *RngOrdIdl*)
> 
> **ExactCompletion** (K :: *FldNum*, P :: *PlcNumElt*)
> 
> -> *FldPadExact*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The completion C of K at P as an exact p-adic field. Also returns the embedding K to C, and the invertible map K to xC (the approximation field for C).








### From approximate fields

> **ExactpAdicField** (xxL :: *FldPad*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given a p-adic field xxL, returns L isomorphic to xxL and a map xxL -> xL.

**Parameters**
- `NoCheckUnique`

> **ExactpAdicField** (xxL :: *FldPad*, mK :: *Map*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given an extension xxL/xxK and mK : xxK -> xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xxK and a map xxL -> xL.

**Parameters**
- `NoCheckUnique`

> **ExactpAdicField** (xxL :: *FldPad*, xxK :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given xxL/xxK where xxK is coercible to and from xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xxK, and a map xxL -> xL.

**Parameters**
- `NoCheckUnique`

> **ExactpAdicField** (xxL :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given xxL/xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xK, and a map xL -> xxL.

**Parameters**
- `NoCheckUnique`

## Creation of p-adic numbers

### Distinguished elements

> **Zero** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Zero.


> **One** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

One.


> **UniformizingElement** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The uniformizing element of F.


> **InertiaGenerator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element of F generating the maximal unramified subextension of F over its prime subfield, and its minimal polynomial.


> **PrimitiveElement** (E :: *FldPadExact*)
> 
> **PrimitiveElement** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A primitive element of `E` over its prime subfield or `F`.




### From coefficients

> **elt** \<E :: *FldPadExact* \| ...>
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Constructs an element of `E`, where the right hand side is either:
- a single element, coercible to `E`
- multiple elements, coercible to the base field of `E`, interpreted as coefficients


### Coercion

> **IsCoercible** (F :: *FldPadExact*, X)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `X` is coercible to an element of `F`, and the coerced element.

`X` must be either:
- an element of `F`
- an integer or rational
- coercible to the base field of `F`
- coercible to a field embedded in `F` (such as if `F` is a completion)
- a `FldPadElt` coercible to the approximation field of `F`
- a sequence of elements coercible to the base field of `F`
- a tuple `<init, mkupdate>` or `<init, mkupdate, data>` defining the element directly


### Random

> **RandomInteger** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random integer of F.


> **Random** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of F of value at least v.


> **RandomUnit** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random unit of F.


> **RandomUnit** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of F of value v.


## Basic operations on p-adic numbers

> **Parent** (x :: *FldPadExactElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field containing x.


> **Coefficient** (x :: *FldPadExactElt*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generator^i coefficient of x in K(generator)/K.


> **Coefficients** (x :: *FldPadExactElt*)
> 
> **Eltseq** (x :: *FldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of x in the basis generator^i in K(generator)/K.




## Arithmetic

> **\'-\'** (x :: *FldPadExactElt*)
> 
> **\'+\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> **\'-\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> **\'&+\'** (xs :: [*FldPadExactElt*])
> 
> **\'\*\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> **\'&\*\'** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Negate, add, subtract, sum, multiply, product.












> **\'/\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Division.

**Parameters**
- `Strategy`: Used to confirm that `y` is nonzero.

> **\'^\'** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Powering.

**Parameters**
- `Strategy`: Used when `n` is negative to confirm that `x` is nonzero.

> **ShiftValuation** (x :: *FldPadExactElt*, n)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Multiplies `x` by the `n`th power of the uniformizing element.


> **IsSquare** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff x is a square. (Strategy is used to determine if x is nonzero.)

**Parameters**
- `Strategy`

> **IsPower** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff x is an nth power. (Strategy is used to determine if x is nonzero.)

**Parameters**
- `Strategy`

## Valuation

> **Valuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of x.

**Parameters**
- `Strategy`

### Comparison to constant

> **ValuationEq** (x :: *FldPadExactElt*, v)
> 
> **ValuationNe** (x :: *FldPadExactElt*, v)
> 
> **ValuationGe** (x :: *FldPadExactElt*, v)
> 
> **ValuationGt** (x :: *FldPadExactElt*, v)
> 
> **ValuationLe** (x :: *FldPadExactElt*, v)
> 
> **ValuationLt** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Compares the valuation of `x` with `v`.












> **IsUniformizingElement** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is a uniformizing element; that is, its valuation is 1.


> **IsUnit** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is a unit; that is, its valuation is 0.


> **IsIntegral** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is an integer; that is, its valuation is at least 0.


### Comparison between elements

> **ValuationCmpValuation_Lazy** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **ValuationCmpValuation** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

Respectively <0, 0 or >0 if the valuation of x is less than, equal to or greater than the valuation of y.



**Parameters**
- `Strategy`

> **ValuationGtValuation_Lazy** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **ValuationGtValuation** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True iff x has greater valuation than y.



**Parameters**
- `Strategy`

### Smallest and closest

> **IndexOfSmallest** (xs :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(xs[i]). If Unique, raises an error if there is no unique smallest.

**Parameters**
- `Strategy`
- `Unique`

> **IndexOfClosest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(x-ys[i]). If Unique, raises an error if there is no unique closest.

**Parameters**
- `Strategy`
- `Unique`

> **Smallest** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest element of xs, and its index.

**Parameters**
- `Strategy`
- `Unique`

> **Closest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The closest element y of ys to x and its index.

**Parameters**
- `Strategy`
- `Unique`

## Extensions

> **BaseField** (F :: *FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of F.


> **IsPrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is a prime p-adic field.


> **PrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The prime field of F.


> **IsExtensionOf** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

True if E is an extension of F. If so, also returns an object representing the extension.


> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *RngInt*)
> 
> **ExistsCoveringStructure** (E :: *RngInt*, F :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *FldRat*)
> 
> **ExistsCoveringStructure** (E :: *FldRat*, F :: *FldPadExact*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a structure containing E and F, and the common structure.










### Basic information

> **DefiningPolynomial** (K :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The defining polynomial of K.


> **AssignNames** (~F :: *FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns a name to the generator of F.


> **Name** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The ith generator of F.




> **Generator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generating element of F.


> **\'eq\'** (F :: *FldPadExact*, E :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


### Invariants

> **Prime** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The p in p-adic.


> **Degree** (E :: *FldPadExact*)
> 
> **Degree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of `E` over its base field or `F`.




> **AbsoluteDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of F over its prime field.


> **InertiaDegree** (E :: *FldPadExact*)
> 
> **InertiaDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of `E` over its base field or `F`.




> **AbsoluteInertiaDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of F over its prime field.


> **RamificationDegree** (E :: *FldPadExact*)
> 
> **RamificationDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of `E` over its base field or `F`.




> **AbsoluteRamificationDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of F over its prime field.


> **DiscriminantValuation** (E :: *FldPadExact*)
> 
> **DiscriminantValuation** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of the discriminant of `E` over its base field or `F`.




### Ramification predicates

> **IsUnramified** (E)
> 
> **IsUnramified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is unramified over its base field or `F`; that is, if the ramification degree is 1.




> **IsRamified** (E)
> 
> **IsRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is ramified over its base field or `F`; that is, if the ramification degree is not 1.




> **IsTotallyRamified** (E)
> 
> **IsTotallyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is totally ramified over its base field or `F`; that is, if the inertia degree is 1.




> **IsWildlyRamified** (E)
> 
> **IsWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is wildly ramified over its base field or `F`; that is, if the ramification degree is divisible by the prime p.




> **IsTotallyWildlyRamified** (E)
> 
> **IsTotallyWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is totally wildly ramified over its base field or `F`; that is, if it is totally ramified and the ramification degree is a power of the prime p.




### Printing

> **DescribeExtension** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

A string describing the extension E/F with F described as FName.

**Parameters**
- `BaseName`

### Standard form

> **IsInStandardForm** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is in standard form: E is a totally ramified extension of an unramified extension of F.


> **StandardForm** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

Returns a standard form version of E/F (that is, a totally ramified extension of an unramified extension of F).


## Residue class field

> **ResidueClassField** (F :: *FldPadExact*)
> 
> -> *FldFin*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The residue class field R of F, the map F to R, and the map from the approximation of F to R.


> **ResidueClass** (x :: *FldPadExactElt*)
> 
> -> *FldFinElt*
> {:.ret}
{:.intrinsic}

The residue class of x.


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


## Primitivity and minimal polynomials

> **IsDefinitelyPrimitive** (x, E :: *FldPadExact*, F :: *FldPadExact*)
> 
> **IsDefinitelyPrimitive** (x :: *FldPadExactElt*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if `x` is a primitive element for `E` (or `Parent(x)`) over `F`.



**Parameters**
- `Strategy`

> **MinimalPolynomial** (x :: *FldPadExactElt*, F :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The minimal polynomial of x over F. Requires that x is a primitive element for E/F where E is the field containing x.

**Parameters**
- `Strategy`

## Quotient ring

> **Quotient** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

The integers Q of F mod pi^n, and the map F to Q.


> **quo** \<F :: *FldPadExact* \| ...>
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

Quotient of the ring of integers of `F` by the elements on the right hand side.


## Homomorphisms (incomplete feature)

> **BaseField** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of h, which is fixed.


> **Domain** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The domain of h.


> **Codomain** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The codomain of h.


> **\'@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the map.


> **IsInvertible** (h :: *HomFldPadExact*)
> 
> -> *BoolElt*, *HomFldPadExact*
> {:.ret}
{:.intrinsic}

True if h has an inverse, and the inverse.


> **Inverse** (h :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The inverse of h.


> **\'@@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the inverse map.


> **TrivialEmbedding** (X :: *ExtDataFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of BaseField(X) into TopField(X).


> **TrivialEmbedding** (F :: *FldPadExactElt*, E :: *FldPadExactElt*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of F into E.


> **\'\*\'** (h1 :: *HomFldPadExact*, h2 :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The composition x @ (h1 * h2) = x @ h1 @ h2.


> **Embeddings** (X :: *ExtDataFldPadExact*, h :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X) into Codomain(h) extending h:BaseField(X)->Codomain(h).


> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*, h0 :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X1) into TopField(X2) extending h0:BaseField(X1)->BaseField(X2).


> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X1) into TopField(X2) fixing BaseField(X1)=BaseField(X2).


## Temporary field (incomplete feature)

> **Temporary** (F :: *FldPadExact*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The temporary elements of F.


> **Temporary** (x :: *FldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

A temporary representation of x.


> **Parent** (t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The parent of t.


> **Print** (T :: *TmpFldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Print T.


> **Print** (t :: *TmpFldPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print t.


> **Evaluate** (t :: *TmpFldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Returns a permanent version of t.


> **WeakValuation** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

A lower bound on the valuation of t.


> **AbsolutePrecision** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The absolute precision to which a permanent version of t will be made.


> **\'&+\'** (ts :: [*TmpFldPadExactElt*])
> 
> **\'+\'** (s :: *TmpFldPadExactElt*, t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Addition.




> **BaseField** (T :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

The base field of T.


> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *Str*)
> 
> **ExistsCoveringStructure** (S :: *Str*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a structure containing both S and T.






> **\'eq\'** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


> **IsCoercible** (T :: *TmpFldPadExact*, X)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *TmpFldPadExactElt*)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *RngIntElt*)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *FldRatElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible to T, and the coerced element.








> **Eltseq** (x :: *TmpFldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Eltseq.


> **Coefficient** (x :: *TmpFldPadExactElt*, i :: *RngIntElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Eltseq[i].


## Integer ring (incomplete feature)

> **Integers** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of elements of F of valuation at least v.


> **Integers** (F :: *FldPadExact*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of integers of F.


> **FieldOfFractions** (F :: *FldPadExact*)
> 
> **FieldOfFractions** (R :: *RngPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field of fractions.




> **\'eq\'** (R :: *RngPadExact*, S :: *RngPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


> **IsCoercible** (R :: *RngPadExact*, X)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *FldPadExactElt*)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *RngPadExactElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible into R and the coerced element.






> **Parent** (x :: *RngPadExactElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

Parent of x.


> **Print** (x :: *RngPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.


> **Random** (R :: *RngPadExact*)
> 
> -> *RngPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of R.


> **Format** (x :: *FldPadExactElt*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of x.

**Parameters**
- `APr`

> **Format** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of f.

**Parameters**
- `APr`

> **Random** (R :: *RngUPol_FldPadExact*, d :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

A random element of R of the given degree.

**Parameters**
- `Eisenstein`
- `Inertial`
- `Monic`
- `Irreducible`

## Approximation

Intrinsics to do with the current approximation of a p-adic number.

> **SetBaselineValuation** (x :: *FldPadExactElt*, n)
{:.intrinsic}

Sets the baseline valuation.


> **BaselineValuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The baseline valuation.


> **BaselinePrecision** (x :: *FldPadExactElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The baseline precision of x: AbsolutePrecision(x) - BaselineValuation(x).


> **IncreaseBaselinePrecision** (x :: *FldPadExactElt*, n)
{:.intrinsic}

Increases the baseline precision.


> **WeakApproximation** (x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.


> **PrecisionRequired** (x :: *FldPadExactElt*, apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

(A bound on) the precision required in the parent field of x to approximate x to the given absolute precision.


> **PrecisionRequired** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The precision required to approximate f with the given parameters.


> **Approximation_Lazy** (x :: *FldPadExactElt*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to x.

**Parameters**
- `Quick`
- `FixPr`

> **Approximation** (x :: *FldPadExactElt*, apr)
> 
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

An approximation to x.

**Parameters**
- `Quick`
- `FixPr`

> **IncreaseAbsolutePrecision_Lazy** (F :: *FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Getter which, when evaluated, the approximation field of F has at least precision pr.


> **Approximation_Lazy** (F :: *FldPadExact*, pr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (F :: *FldPadExact*, pr :: *RngIntElt*)
> 
> -> *FldPad*
> {:.ret}
{:.intrinsic}

The approximating field of F with default precision pr.




> **Approximation** (F :: *FldPadExact*)
> 
> -> *FldPad*
> {:.ret}
{:.intrinsic}

The approximating field.


> **IncreaseAbsolutePrecision** (x :: *FldPadExactElt*, n)
> 
> **IncreaseAbsolutePrecision_Lazy** (x :: *FldPadExactElt*, n)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the absolute precision of x to n.




> **AbsolutePrecision** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The absolute precision of x.


> **Precision** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The precision of x.


> **WeakValuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak valuation of x.


> **Update** (x :: *FldPadExactElt*, app :: *FldPadElt*)
{:.intrinsic}

Updates x to app.


> **UpdateZero** (x :: *FldPadExactElt*, apr :: *RngIntElt*)
{:.intrinsic}

Updates x to O(pi^apr).


> **IsDefinitelyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x is precisely zero.


> **IsWeaklyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x is zero up to precision.

**Parameters**
- `Strategy`

> **IsWeaklyEqual** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x and y are weakly equal up to precision.

**Parameters**
- `Strategy`

## Internals

### FldPadExactElt

> **SetData** (x :: *FldPadExactElt*, data)
{:.intrinsic}

Sets the custom data field.


> **GetData** (x :: *FldPadExactElt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Retrieves the custom data field.


### ExtDataFldPadExact

> **\'/\'** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

The extension E/F.


> **\'/\'** (E :: *FldPadExact*, X :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension E/X.


> **\'/\'** (X :: *ExtDataFldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension X/F.


> **\'/\'** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension X1/X2.


> **Flatten** (x :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Returns a version of x with type COMPOUND and all elements of x`list have type not COMPOUND.


> **TopField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The top field of x.


> **BaseField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of x.


