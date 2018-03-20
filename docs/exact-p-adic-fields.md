# Exact p-adic fields
{:#exact-p-adic-fields}


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
* [Extensions](#extensions-2)
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

## Creation of p-adic fields
{:#creation-of-p-adic-fields}

### Prime fields
{:#prime-fields}

<a id="ExactpAdicField"></a><a id="ExactpAdicField--RngIntElt"></a>
> **ExactpAdicField** (p :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The exact `p`-adic field.


### Extensions
{:#extensions}

<a id="ExtConstructor"></a><a id="ExtConstructor--FldPadExact--etc"></a><a id="ExtConstructor--FldPadExact--Tup"></a>
> **ext** \<E :: *FldPadExact* \| ...>
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

An extension of `E`, where the right hand side is either:
- an integer, giving the unramified extension of this degree
- coercible to a defining polynomial (Eisenstein or inertial)


<a id="Extension"></a><a id="Extension--RngUPolElt_FldPadExact"></a><a id="Extension--FldPadExact--etc"></a><a id="Extension--FldPadExact--any"></a>
> **Extension** (f :: *RngUPolElt_FldPadExact*)
> 
> **Extension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The extension defined by `f` over its base field or `F`.




<a id="UnramifiedExtension"></a><a id="UnramifiedExtension--RngUPolElt_FldPadExact"></a><a id="UnramifiedExtension--FldPadExact--etc"></a><a id="UnramifiedExtension--FldPadExact--any"></a>
> **UnramifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> **UnramifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension defined by `f` over its base field or `F`.




<a id="UnramifiedExtension-2"></a><a id="UnramifiedExtension--FldPadExact--etc-2"></a><a id="UnramifiedExtension--FldPadExact--RngIntElt"></a>
> **UnramifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension of `F` of degree `n`.


<a id="TotallyRamifiedExtension"></a><a id="TotallyRamifiedExtension--RngUPolElt_FldPadExact"></a><a id="TotallyRamifiedExtension--FldPadExact--etc"></a><a id="TotallyRamifiedExtension--FldPadExact--any"></a>
> **TotallyRamifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> **TotallyRamifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension defined by `f` over its base field or `F`.




<a id="TotallyRamifiedExtension-2"></a><a id="TotallyRamifiedExtension--FldPadExact--etc-2"></a><a id="TotallyRamifiedExtension--FldPadExact--RngIntElt--any"></a><a id="TotallyRamifiedExtension--FldPadExact--RngIntElt"></a>
> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*, pi)
> 
> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension of `F` of degree `n` got by adjoining the `n`th root of `pi` (or the default uniformizer of `F`).




### Completions
{:#completions}

<a id="ExactCompletion"></a><a id="ExactCompletion--FldRat--etc"></a><a id="ExactCompletion--FldRat--RngIntElt"></a><a id="ExactCompletion--FldRat--RngInt"></a><a id="ExactCompletion--FldNum--etc"></a><a id="ExactCompletion--FldNum--RngOrdIdl"></a><a id="ExactCompletion--FldNum--PlcNumElt"></a>
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

The completion C of `K` at `P` as an exact p-adic field. Also returns the embedding `K` to C, and the invertible map `K` to xC (the approximation field for C).








### From approximate fields
{:#from-approximate-fields}

<a id="ExactpAdicField-2"></a><a id="ExactpAdicField--FldPad"></a>
> **ExactpAdicField** (xxL :: *FldPad*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given a p-adic field `xxL`, returns L isomorphic to `xxL` and a map `xxL` -> xL.

**Parameters**
- `NoCheckUnique`

<a id="ExactpAdicField-3"></a><a id="ExactpAdicField--FldPad--etc"></a><a id="ExactpAdicField--FldPad--Map--FldPadExact"></a>
> **ExactpAdicField** (xxL :: *FldPad*, mK :: *Map*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given an extension `xxL`/xxK and `mK` : xxK -> xK where xK is the approximation field of `K`, returns L/`K` isomorphic to `xxL`/xxK and a map `xxL` -> xL.

**Parameters**
- `NoCheckUnique`

<a id="ExactpAdicField-4"></a><a id="ExactpAdicField--FldPad--etc-2"></a><a id="ExactpAdicField--FldPad--FldPad--FldPadExact"></a>
> **ExactpAdicField** (xxL :: *FldPad*, xxK :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given `xxL`/`xxK` where `xxK` is coercible to and from xK where xK is the approximation field of `K`, returns L/`K` isomorphic to `xxL`/`xxK`, and a map `xxL` -> xL.

**Parameters**
- `NoCheckUnique`

<a id="ExactpAdicField-5"></a><a id="ExactpAdicField--FldPad--etc-3"></a><a id="ExactpAdicField--FldPad--FldPadExact"></a>
> **ExactpAdicField** (xxL :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given `xxL`/xK where xK is the approximation field of `K`, returns L/`K` isomorphic to `xxL`/xK, and a map xL -> `xxL`.

**Parameters**
- `NoCheckUnique`

## Creation of p-adic numbers
{:#creation-of-p-adic-numbers}

### Distinguished elements
{:#distinguished-elements}

<a id="Zero"></a><a id="Zero--FldPadExact"></a>
> **Zero** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Zero.


<a id="One"></a><a id="One--FldPadExact"></a>
> **One** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

One.


<a id="UniformizingElement"></a><a id="UniformizingElement--FldPadExact"></a>
> **UniformizingElement** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The uniformizing element of `F`.


<a id="InertiaGenerator"></a><a id="InertiaGenerator--FldPadExact"></a>
> **InertiaGenerator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element of `F` generating the maximal unramified subextension of `F` over its prime subfield, and its minimal polynomial.


<a id="PrimitiveElement"></a><a id="PrimitiveElement--FldPadExact"></a><a id="PrimitiveElement--FldPadExact--etc"></a><a id="PrimitiveElement--FldPadExact--FldPadExact"></a>
> **PrimitiveElement** (E :: *FldPadExact*)
> 
> **PrimitiveElement** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A primitive element of `E` over its prime subfield or `F`.




### From coefficients
{:#from-coefficients}

<a id="EltConstructor"></a><a id="EltConstructor--FldPadExact--etc"></a><a id="EltConstructor--FldPadExact--any"></a>
> **elt** \<E :: *FldPadExact* \| ...>
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Constructs an element of `E`, where the right hand side is either:
- a single element, coercible to `E`
- multiple elements, coercible to the base field of `E`, interpreted as coefficients


### Coercion
{:#coercion}

<a id="IsCoercible"></a><a id="IsCoercible--FldPadExact--etc"></a><a id="IsCoercible--FldPadExact--any"></a>
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
{:#random}

<a id="RandomInteger"></a><a id="RandomInteger--FldPadExact"></a>
> **RandomInteger** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random integer of `F`.


<a id="Random"></a><a id="Random--FldPadExact--etc"></a><a id="Random--FldPadExact--RngIntElt"></a>
> **Random** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of `F` of value at least `v`.


<a id="RandomUnit"></a><a id="RandomUnit--FldPadExact"></a>
> **RandomUnit** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random unit of `F`.


<a id="RandomUnit-2"></a><a id="RandomUnit--FldPadExact--etc"></a><a id="RandomUnit--FldPadExact--RngIntElt"></a>
> **RandomUnit** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of `F` of value `v`.


## Basic operations on p-adic numbers
{:#basic-operations-on-p-adic-numbers}

<a id="Coefficient"></a><a id="Coefficient--FldPadExactElt--etc"></a><a id="Coefficient--FldPadExactElt--RngIntElt"></a>
> **Coefficient** (x :: *FldPadExactElt*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generator^`i` coefficient of `x` in K(generator)/K.


<a id="Coefficients"></a><a id="Coefficients--FldPadExactElt"></a><a id="Eltseq"></a><a id="Eltseq--FldPadExactElt"></a>
> **Coefficients** (x :: *FldPadExactElt*)
> 
> **Eltseq** (x :: *FldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of `x` in the basis generator^i in K(generator)/K.




## Arithmetic
{:#arithmetic}

<a id="-"></a><a id="---FldPadExactElt"></a><a id="+"></a><a id="+--FldPadExactElt--etc"></a><a id="+--FldPadExactElt--FldPadExactElt"></a><a id="---FldPadExactElt--etc"></a><a id="---FldPadExactElt--FldPadExactElt"></a><a id="&+"></a><a id="&+--seq-FldPadExactElt"></a><a id="*"></a><a id="*--FldPadExactElt--etc"></a><a id="*--FldPadExactElt--FldPadExactElt"></a><a id="&*"></a><a id="&*--seq-FldPadExactElt"></a>
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












<a id="/"></a><a id="/--FldPadExactElt--etc"></a><a id="/--FldPadExactElt--FldPadExactElt"></a>
> **\'/\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Division.

**Parameters**
- `Strategy`: Used to confirm that `y` is nonzero.

<a id="^"></a><a id="^--FldPadExactElt--etc"></a><a id="^--FldPadExactElt--RngIntElt"></a>
> **\'^\'** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Powering.

**Parameters**
- `Strategy`: Used when `n` is negative to confirm that `x` is nonzero.

<a id="ShiftValuation"></a><a id="ShiftValuation--FldPadExactElt--etc"></a><a id="ShiftValuation--FldPadExactElt--any"></a>
> **ShiftValuation** (x :: *FldPadExactElt*, n)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Multiplies `x` by the `n`th power of the uniformizing element.


<a id="IsSquare"></a><a id="IsSquare--FldPadExactElt"></a>
> **IsSquare** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff `x` is a square. (`Strategy` is used to determine if `x` is nonzero.)

**Parameters**
- `Strategy`

<a id="IsPower"></a><a id="IsPower--FldPadExactElt--etc"></a><a id="IsPower--FldPadExactElt--RngIntElt"></a>
> **IsPower** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff `x` is an `n`th power. (`Strategy` is used to determine if `x` is nonzero.)

**Parameters**
- `Strategy`

## Valuation
{:#valuation}

<a id="Valuation"></a><a id="Valuation--FldPadExactElt"></a>
> **Valuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of `x`.

**Parameters**
- `Strategy`

### Comparison to constant
{:#comparison-to-constant}

<a id="ValuationEq"></a><a id="ValuationEq--FldPadExactElt--etc"></a><a id="ValuationEq--FldPadExactElt--any"></a><a id="ValuationNe"></a><a id="ValuationNe--FldPadExactElt--etc"></a><a id="ValuationNe--FldPadExactElt--any"></a><a id="ValuationGe"></a><a id="ValuationGe--FldPadExactElt--etc"></a><a id="ValuationGe--FldPadExactElt--any"></a><a id="ValuationGt"></a><a id="ValuationGt--FldPadExactElt--etc"></a><a id="ValuationGt--FldPadExactElt--any"></a><a id="ValuationLe"></a><a id="ValuationLe--FldPadExactElt--etc"></a><a id="ValuationLe--FldPadExactElt--any"></a><a id="ValuationLt"></a><a id="ValuationLt--FldPadExactElt--etc"></a><a id="ValuationLt--FldPadExactElt--any"></a>
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












<a id="IsUniformizingElement"></a><a id="IsUniformizingElement--FldPadExactElt"></a>
> **IsUniformizingElement** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is a uniformizing element; that is, its valuation is 1.


<a id="IsUnit"></a><a id="IsUnit--FldPadExactElt"></a>
> **IsUnit** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is a unit; that is, its valuation is 0.


<a id="IsIntegral"></a><a id="IsIntegral--FldPadExactElt"></a>
> **IsIntegral** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is an integer; that is, its valuation is at least 0.


### Comparison between elements
{:#comparison-between-elements}

<a id="ValuationCmpValuation_Lazy"></a><a id="ValuationCmpValuation_Lazy--FldPadExactElt--etc"></a><a id="ValuationCmpValuation_Lazy--FldPadExactElt--FldPadExactElt"></a><a id="ValuationCmpValuation"></a><a id="ValuationCmpValuation--FldPadExactElt--etc"></a><a id="ValuationCmpValuation--FldPadExactElt--FldPadExactElt"></a>
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

Respectively <0, 0 or >0 if the valuation of `x` is less than, equal to or greater than the valuation of `y`.



**Parameters**
- `Strategy`

<a id="ValuationGtValuation_Lazy"></a><a id="ValuationGtValuation_Lazy--FldPadExactElt--etc"></a><a id="ValuationGtValuation_Lazy--FldPadExactElt--FldPadExactElt"></a><a id="ValuationGtValuation"></a><a id="ValuationGtValuation--FldPadExactElt--etc"></a><a id="ValuationGtValuation--FldPadExactElt--FldPadExactElt"></a>
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

True iff `x` has greater valuation than `y`.



**Parameters**
- `Strategy`

### Smallest and closest
{:#smallest-and-closest}

<a id="IndexOfSmallest"></a><a id="IndexOfSmallest--seq-FldPadExactElt"></a>
> **IndexOfSmallest** (xs :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(`xs`[i]). If `Unique`, raises an error if there is no unique smallest.

**Parameters**
- `Strategy`
- `Unique`

<a id="IndexOfClosest"></a><a id="IndexOfClosest--FldPadExactElt--etc"></a><a id="IndexOfClosest--FldPadExactElt--seq-FldPadExactElt"></a>
> **IndexOfClosest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(`x`-`ys`[i]). If `Unique`, raises an error if there is no unique closest.

**Parameters**
- `Strategy`
- `Unique`

<a id="Smallest"></a><a id="Smallest--seq-FldPadExactElt"></a>
> **Smallest** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest element of `xs`, and its index.

**Parameters**
- `Strategy`
- `Unique`

<a id="Closest"></a><a id="Closest--FldPadExactElt--etc"></a><a id="Closest--FldPadExactElt--seq-FldPadExactElt"></a>
> **Closest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The closest element y of `ys` to `x` and its index.

**Parameters**
- `Strategy`
- `Unique`

## Extensions
{:#extensions-2}

<a id="BaseField"></a><a id="BaseField--FldPadExact"></a>
> **BaseField** (F :: *FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of `F`.


<a id="IsPrimeField"></a><a id="IsPrimeField--FldPadExact"></a>
> **IsPrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `F` is a prime p-adic field.


<a id="PrimeField"></a><a id="PrimeField--FldPadExact"></a>
> **PrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The prime field of `F`.


<a id="IsExtensionOf"></a><a id="IsExtensionOf--FldPadExact--etc"></a><a id="IsExtensionOf--FldPadExact--FldPadExact"></a>
> **IsExtensionOf** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

True if `E` is an extension of `F`. If so, also returns an object representing the extension.


<a id="ExistsCoveringStructure"></a><a id="ExistsCoveringStructure--FldPadExact--etc"></a><a id="ExistsCoveringStructure--FldPadExact--FldPadExact"></a><a id="ExistsCoveringStructure--FldPadExact--RngInt"></a><a id="ExistsCoveringStructure--RngInt--etc"></a><a id="ExistsCoveringStructure--RngInt--FldPadExact"></a><a id="ExistsCoveringStructure--FldPadExact--FldRat"></a><a id="ExistsCoveringStructure--FldRat--etc"></a><a id="ExistsCoveringStructure--FldRat--FldPadExact"></a>
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

True if there is a structure containing `E` and `F`, and the common structure.










### Basic information
{:#basic-information}

<a id="DefiningPolynomial"></a><a id="DefiningPolynomial--FldPadExact"></a>
> **DefiningPolynomial** (K :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The defining polynomial of `K`.


<a id="AssignNames"></a><a id="AssignNames--FldPadExact--etc"></a><a id="AssignNames--FldPadExact--seq-MonStgElt"></a>
> **AssignNames** (~F :: *FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns a name to the generator of `F`.


<a id="Name"></a><a id="Name--FldPadExact--etc"></a><a id="Name--FldPadExact--RngIntElt"></a><a id="."></a><a id=".--FldPadExact--etc"></a><a id=".--FldPadExact--RngIntElt"></a>
> **Name** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The `i`th generator of `F`.




<a id="Generator"></a><a id="Generator--FldPadExact"></a>
> **Generator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generating element of `F`.


<a id="eq"></a><a id="eq--FldPadExact--etc"></a><a id="eq--FldPadExact--FldPadExact"></a>
> **\'eq\'** (F :: *FldPadExact*, E :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


### Invariants
{:#invariants}

<a id="Prime"></a><a id="Prime--FldPadExact"></a>
> **Prime** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The p in p-adic.


<a id="Degree"></a><a id="Degree--FldPadExact"></a><a id="Degree--FldPadExact--etc"></a><a id="Degree--FldPadExact--FldPadExact"></a>
> **Degree** (E :: *FldPadExact*)
> 
> **Degree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of `E` over its base field or `F`.




<a id="AbsoluteDegree"></a><a id="AbsoluteDegree--FldPadExact"></a>
> **AbsoluteDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of `F` over its prime field.


<a id="InertiaDegree"></a><a id="InertiaDegree--FldPadExact"></a><a id="InertiaDegree--FldPadExact--etc"></a><a id="InertiaDegree--FldPadExact--FldPadExact"></a>
> **InertiaDegree** (E :: *FldPadExact*)
> 
> **InertiaDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of `E` over its base field or `F`.




<a id="AbsoluteInertiaDegree"></a><a id="AbsoluteInertiaDegree--FldPadExact"></a>
> **AbsoluteInertiaDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of `F` over its prime field.


<a id="RamificationDegree"></a><a id="RamificationDegree--FldPadExact"></a><a id="RamificationDegree--FldPadExact--etc"></a><a id="RamificationDegree--FldPadExact--FldPadExact"></a>
> **RamificationDegree** (E :: *FldPadExact*)
> 
> **RamificationDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of `E` over its base field or `F`.




<a id="AbsoluteRamificationDegree"></a><a id="AbsoluteRamificationDegree--FldPadExact"></a>
> **AbsoluteRamificationDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of `F` over its prime field.


<a id="DiscriminantValuation"></a><a id="DiscriminantValuation--FldPadExact"></a><a id="DiscriminantValuation--FldPadExact--etc"></a><a id="DiscriminantValuation--FldPadExact--FldPadExact"></a>
> **DiscriminantValuation** (E :: *FldPadExact*)
> 
> **DiscriminantValuation** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of the discriminant of `E` over its base field or `F`.




### Ramification predicates
{:#ramification-predicates}

<a id="IsUnramified"></a><a id="IsUnramified--any"></a><a id="IsUnramified--any--etc"></a><a id="IsUnramified--any--any"></a>
> **IsUnramified** (E)
> 
> **IsUnramified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is unramified over its base field or `F`; that is, if the ramification degree is 1.




<a id="IsRamified"></a><a id="IsRamified--any"></a><a id="IsRamified--any--etc"></a><a id="IsRamified--any--any"></a>
> **IsRamified** (E)
> 
> **IsRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is ramified over its base field or `F`; that is, if the ramification degree is not 1.




<a id="IsTotallyRamified"></a><a id="IsTotallyRamified--any"></a><a id="IsTotallyRamified--any--etc"></a><a id="IsTotallyRamified--any--any"></a>
> **IsTotallyRamified** (E)
> 
> **IsTotallyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is totally ramified over its base field or `F`; that is, if the inertia degree is 1.




<a id="IsWildlyRamified"></a><a id="IsWildlyRamified--any"></a><a id="IsWildlyRamified--any--etc"></a><a id="IsWildlyRamified--any--any"></a>
> **IsWildlyRamified** (E)
> 
> **IsWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is wildly ramified over its base field or `F`; that is, if the ramification degree is divisible by the prime p.




<a id="IsTotallyWildlyRamified"></a><a id="IsTotallyWildlyRamified--any"></a><a id="IsTotallyWildlyRamified--any--etc"></a><a id="IsTotallyWildlyRamified--any--any"></a>
> **IsTotallyWildlyRamified** (E)
> 
> **IsTotallyWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E` is totally wildly ramified over its base field or `F`; that is, if it is totally ramified and the ramification degree is a power of the prime p.




### Printing
{:#printing}

<a id="DescribeExtension"></a><a id="DescribeExtension--FldPadExact--etc"></a><a id="DescribeExtension--FldPadExact--FldPadExact"></a>
> **DescribeExtension** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

A string describing the extension `E`/`F` with `F` described as FName.

**Parameters**
- `BaseName`

### Standard form
{:#standard-form}

<a id="IsInStandardForm"></a><a id="IsInStandardForm--FldPadExact--etc"></a><a id="IsInStandardForm--FldPadExact--FldPadExact"></a>
> **IsInStandardForm** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `E`/`F` is in standard form: `E` is a totally ramified extension of an unramified extension of `F`.


## Residue class field
{:#residue-class-field}

<a id="ResidueClassField"></a><a id="ResidueClassField--FldPadExact"></a>
> **ResidueClassField** (F :: *FldPadExact*)
> 
> -> *FldFin*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The residue class field R of `F`, the map `F` to R, and the map from the approximation of `F` to R.


<a id="ResidueClass"></a><a id="ResidueClass--FldPadExactElt"></a>
> **ResidueClass** (x :: *FldPadExactElt*)
> 
> -> *FldFinElt*
> {:.ret}
{:.intrinsic}

The residue class of `x`.


## Ramification polynomials and polygons
{:#ramification-polynomials-and-polygons}


In this package, if $f(x)$ is an Eisenstein polynomial with a root $\pi$, then we define the *ramification polynomial of $f$* to be $f(x+\pi)$ and the *ramification polygon of $f$* to be the Newton polygon of this. Observe that since $f(\pi)=0$ then the ramification polygon has end vertices at 1 and $\deg f$.

If $L/K$ is totally ramified, then the *ramification polygon of $L/K$* is the ramification polygon of any Eisenstein polynomial defining the extension. If $L/U$ is totally ramified and $U/K$ is unramified then the *ramification polygon of $L/K$* is that of $L/U$ with an additional horizontal face from $((L:U),0)$ to $((L:K),0)$.

The Newton polygon is an invariant of an extension and describes the ramification breaks of the *Galois set* $\Gamma(L/K)$ of embeddings $L \hookrightarrow \bar{K}$. This generalizes ramification theory of Galois extensions, where the Galois set is equal to the Galois group.

<a id="RamificationResidualPolynomials"></a><a id="RamificationResidualPolynomials--RngUPolElt_FldPadExact"></a>
> **RamificationResidualPolynomials** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The residual polynomials of the ramification polygon of `f`.


<a id="RamificationResidualPolynomial"></a><a id="RamificationResidualPolynomial--RngUPolElt_FldPadExact--etc"></a><a id="RamificationResidualPolynomial--RngUPolElt_FldPadExact--NwtnPgonFace"></a>
> **RamificationResidualPolynomial** (f :: *RngUPolElt_FldPadExact*, face :: *NwtnPgonFace*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

The residual polynomial of the given `face` of the ramification polygon of `f`.


<a id="RamificationPolynomial"></a><a id="RamificationPolynomial--FldPadExact"></a>
> **RamificationPolynomial** (L :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The ramification polynomial of `L` with respect to its defining polynomial.


<a id="RamificationPolygon"></a><a id="RamificationPolygon--RngUPolElt_FldPadExact"></a>
> **RamificationPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of the extension defined by `f`.


<a id="RamificationPolygon-2"></a><a id="RamificationPolygon--FldPadExact"></a><a id="RamificationPolygon--FldPadExact--etc"></a><a id="RamificationPolygon--FldPadExact--FldPadExact"></a>
> **RamificationPolygon** (E :: *FldPadExact*)
> 
> **RamificationPolygon** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of `E` over its base field or `F`.




## Hasse-Herbrand transition function
{:#hasse-herbrand-transition-function}

### Creation
{:#creation}

<a id="TransitionFunction"></a><a id="TransitionFunction--FldPadExact"></a><a id="TransitionFunction--FldPadExact--etc"></a><a id="TransitionFunction--FldPadExact--FldPadExact"></a><a id="TransitionFunction--FldPad"></a><a id="TransitionFunction--FldPad--etc"></a><a id="TransitionFunction--FldPad--FldPad"></a>
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
{:#operations}

<a id="Degree-2"></a><a id="Degree--HassHerbTransFunc"></a>
> **Degree** (h :: *HassHerbTransFunc*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of the extension this is the transition function of.


<a id="Vertices"></a><a id="Vertices--HassHerbTransFunc"></a>
> **Vertices** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The vertices of the function.


<a id="LowerBreaks"></a><a id="LowerBreaks--HassHerbTransFunc"></a>
> **LowerBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The lower breaks of `h`.


<a id="UpperBreaks"></a><a id="UpperBreaks--HassHerbTransFunc"></a>
> **UpperBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The upper breaks of `h`.


<a id="eq-2"></a><a id="eq--HassHerbTransFunc--etc"></a><a id="eq--HassHerbTransFunc--HassHerbTransFunc"></a>
> **\'eq\'** (h1 :: *HassHerbTransFunc*, h2 :: *HassHerbTransFunc*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `h1` and `h2` are equal as field invariants, i.e. they define the same function.


<a id="@"></a><a id="@--any--etc"></a><a id="@--any--HassHerbTransFunc"></a>
> **\'@\'** (v, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Evaluates `h` at `v`.


<a id="@@"></a><a id="@@--any--etc"></a><a id="@@--any--HassHerbTransFunc"></a>
> **\'@@\'** (u, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The inverse of `h` at `u`.


<a id="RamificationPolygon-3"></a><a id="RamificationPolygon--HassHerbTransFunc"></a>
> **RamificationPolygon** (h :: *HassHerbTransFunc*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of a totally ramified extension with the given transition function.


## Primitivity and minimal polynomials
{:#primitivity-and-minimal-polynomials}

<a id="IsDefinitelyPrimitive"></a><a id="IsDefinitelyPrimitive--any--etc"></a><a id="IsDefinitelyPrimitive--any--FldPadExact--FldPadExact"></a><a id="IsDefinitelyPrimitive--FldPadExactElt--etc"></a><a id="IsDefinitelyPrimitive--FldPadExactElt--FldPadExact"></a>
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

<a id="MinimalPolynomial"></a><a id="MinimalPolynomial--FldPadExactElt--etc"></a><a id="MinimalPolynomial--FldPadExactElt--FldPadExact"></a>
> **MinimalPolynomial** (x :: *FldPadExactElt*, F :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The minimal polynomial of `x` over `F`. Requires that `x` is a primitive element for E/`F` where E is the field containing `x`.

**Parameters**
- `Strategy`

## Quotient ring
{:#quotient-ring}

<a id="Quotient"></a><a id="Quotient--FldPadExact--etc"></a><a id="Quotient--FldPadExact--RngIntElt"></a>
> **Quotient** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

The integers Q of `F` mod pi^`n`, and the map `F` to Q.


<a id="QuoConstructor"></a><a id="QuoConstructor--FldPadExact--etc"></a><a id="QuoConstructor--FldPadExact--any"></a>
> **quo** \<F :: *FldPadExact* \| ...>
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

Quotient of the ring of integers of `F` by the elements on the right hand side.


## Homomorphisms (incomplete feature)
{:#homomorphisms-incomplete-feature}

<a id="BaseField-2"></a><a id="BaseField--HomFldPadExact"></a>
> **BaseField** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of `h`, which is fixed.


<a id="Domain"></a><a id="Domain--HomFldPadExact"></a>
> **Domain** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The domain of `h`.


<a id="Codomain"></a><a id="Codomain--HomFldPadExact"></a>
> **Codomain** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The codomain of `h`.


<a id="@-2"></a><a id="@--any--etc-2"></a><a id="@--any--HomFldPadExact"></a>
> **\'@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the map.


<a id="IsInvertible"></a><a id="IsInvertible--HomFldPadExact"></a>
> **IsInvertible** (h :: *HomFldPadExact*)
> 
> -> *BoolElt*, *HomFldPadExact*
> {:.ret}
{:.intrinsic}

True if `h` has an inverse, and the inverse.


<a id="Inverse"></a><a id="Inverse--HomFldPadExact"></a>
> **Inverse** (h :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The inverse of `h`.


<a id="@@-2"></a><a id="@@--any--etc-2"></a><a id="@@--any--HomFldPadExact"></a>
> **\'@@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the inverse map.


<a id="TrivialEmbedding"></a><a id="TrivialEmbedding--ExtDataFldPadExact"></a>
> **TrivialEmbedding** (X :: *ExtDataFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of BaseField(`X`) into TopField(`X`).


<a id="TrivialEmbedding-2"></a><a id="TrivialEmbedding--FldPadExactElt--etc"></a><a id="TrivialEmbedding--FldPadExactElt--FldPadExactElt"></a>
> **TrivialEmbedding** (F :: *FldPadExactElt*, E :: *FldPadExactElt*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of `F` into `E`.


<a id="*-2"></a><a id="*--HomFldPadExact--etc"></a><a id="*--HomFldPadExact--HomFldPadExact"></a>
> **\'\*\'** (h1 :: *HomFldPadExact*, h2 :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The composition x @ (`h1` * `h2`) = x @ `h1` @ `h2`.


<a id="Embeddings"></a><a id="Embeddings--ExtDataFldPadExact--etc"></a><a id="Embeddings--ExtDataFldPadExact--HomFldPadExact"></a>
> **Embeddings** (X :: *ExtDataFldPadExact*, h :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(`X`) into Codomain(`h`) extending `h`:BaseField(`X`)->Codomain(`h`).


<a id="Embeddings-2"></a><a id="Embeddings--ExtDataFldPadExact--etc-2"></a><a id="Embeddings--ExtDataFldPadExact--ExtDataFldPadExact--HomFldPadExact"></a>
> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*, h0 :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(`X1`) into TopField(`X2`) extending `h0`:BaseField(`X1`)->BaseField(`X2`).


<a id="Embeddings-3"></a><a id="Embeddings--ExtDataFldPadExact--etc-3"></a><a id="Embeddings--ExtDataFldPadExact--ExtDataFldPadExact"></a>
> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(`X1`) into TopField(`X2`) fixing BaseField(`X1`)=BaseField(`X2`).


## Temporary field (incomplete feature)
{:#temporary-field-incomplete-feature}

<a id="Temporary"></a><a id="Temporary--FldPadExact"></a>
> **Temporary** (F :: *FldPadExact*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The temporary elements of `F`.


<a id="Temporary-2"></a><a id="Temporary--FldPadExactElt"></a>
> **Temporary** (x :: *FldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

A temporary representation of `x`.


<a id="Parent"></a><a id="Parent--TmpFldPadExactElt"></a>
> **Parent** (t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The parent of `t`.


<a id="Print"></a><a id="Print--TmpFldPadExact--etc"></a><a id="Print--TmpFldPadExact--MonStgElt"></a>
> **Print** (T :: *TmpFldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Print `T`.


<a id="Print-2"></a><a id="Print--TmpFldPadExactElt--etc"></a><a id="Print--TmpFldPadExactElt--MonStgElt"></a>
> **Print** (t :: *TmpFldPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print `t`.


<a id="Evaluate"></a><a id="Evaluate--TmpFldPadExactElt"></a>
> **Evaluate** (t :: *TmpFldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Returns a permanent version of `t`.


<a id="WeakValuation"></a><a id="WeakValuation--TmpFldPadExactElt"></a>
> **WeakValuation** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

A lower bound on the valuation of `t`.


<a id="AbsolutePrecision"></a><a id="AbsolutePrecision--TmpFldPadExactElt"></a>
> **AbsolutePrecision** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The absolute precision to which a permanent version of `t` will be made.


<a id="&+-2"></a><a id="&+--seq-TmpFldPadExactElt"></a><a id="+-2"></a><a id="+--TmpFldPadExactElt--etc"></a><a id="+--TmpFldPadExactElt--TmpFldPadExactElt"></a>
> **\'&+\'** (ts :: [*TmpFldPadExactElt*])
> 
> **\'+\'** (s :: *TmpFldPadExactElt*, t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Addition.




<a id="BaseField-3"></a><a id="BaseField--TmpFldPadExactElt"></a>
> **BaseField** (T :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

The base field of `T`.


<a id="ExistsCoveringStructure-2"></a><a id="ExistsCoveringStructure--TmpFldPadExact--etc"></a><a id="ExistsCoveringStructure--TmpFldPadExact--TmpFldPadExact"></a><a id="ExistsCoveringStructure--TmpFldPadExact--Str"></a><a id="ExistsCoveringStructure--Str--etc"></a><a id="ExistsCoveringStructure--Str--TmpFldPadExact"></a>
> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *Str*)
> 
> **ExistsCoveringStructure** (S :: *Str*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a structure containing both `S` and `T`.






<a id="eq-3"></a><a id="eq--TmpFldPadExact--etc"></a><a id="eq--TmpFldPadExact--TmpFldPadExact"></a>
> **\'eq\'** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


<a id="IsCoercible-2"></a><a id="IsCoercible--TmpFldPadExact--etc"></a><a id="IsCoercible--TmpFldPadExact--any"></a><a id="IsCoercible--TmpFldPadExact--TmpFldPadExactElt"></a><a id="IsCoercible--TmpFldPadExact--RngIntElt"></a><a id="IsCoercible--TmpFldPadExact--FldRatElt"></a>
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

True if `X` is coercible to `T`, and the coerced element.








<a id="Eltseq-2"></a><a id="Eltseq--TmpFldPadExactElt"></a>
> **Eltseq** (x :: *TmpFldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Eltseq.


<a id="Coefficient-2"></a><a id="Coefficient--TmpFldPadExactElt--etc"></a><a id="Coefficient--TmpFldPadExactElt--RngIntElt"></a>
> **Coefficient** (x :: *TmpFldPadExactElt*, i :: *RngIntElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Eltseq[`i`].


## Integer ring (incomplete feature)
{:#integer-ring-incomplete-feature}

<a id="Integers"></a><a id="Integers--FldPadExact--etc"></a><a id="Integers--FldPadExact--RngIntElt"></a>
> **Integers** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of elements of `F` of valuation at least `v`.


<a id="Integers-2"></a><a id="Integers--FldPadExact"></a>
> **Integers** (F :: *FldPadExact*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of integers of `F`.


<a id="FieldOfFractions"></a><a id="FieldOfFractions--FldPadExact"></a><a id="FieldOfFractions--RngPadExact"></a>
> **FieldOfFractions** (F :: *FldPadExact*)
> 
> **FieldOfFractions** (R :: *RngPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field of fractions.




<a id="eq-4"></a><a id="eq--RngPadExact--etc"></a><a id="eq--RngPadExact--RngPadExact"></a>
> **\'eq\'** (R :: *RngPadExact*, S :: *RngPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.


<a id="IsCoercible-3"></a><a id="IsCoercible--RngPadExact--etc"></a><a id="IsCoercible--RngPadExact--any"></a><a id="IsCoercible--RngPadExact--FldPadExactElt"></a><a id="IsCoercible--RngPadExact--RngPadExactElt"></a>
> **IsCoercible** (R :: *RngPadExact*, X)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *FldPadExactElt*)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *RngPadExactElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `X` is coercible into `R` and the coerced element.






<a id="Parent-2"></a><a id="Parent--RngPadExactElt"></a>
> **Parent** (x :: *RngPadExactElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

Parent of `x`.


<a id="Print-3"></a><a id="Print--RngPadExactElt--etc"></a><a id="Print--RngPadExactElt--MonStgElt"></a>
> **Print** (x :: *RngPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.


<a id="Random-2"></a><a id="Random--RngPadExact"></a>
> **Random** (R :: *RngPadExact*)
> 
> -> *RngPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of `R`.


<a id="Format"></a><a id="Format--FldPadExactElt"></a>
> **Format** (x :: *FldPadExactElt*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of `x`.

**Parameters**
- `APr`

<a id="Format-2"></a><a id="Format--RngUPolElt_FldPadExact"></a>
> **Format** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of `f`.

**Parameters**
- `APr`

<a id="Random-3"></a><a id="Random--RngUPol_FldPadExact--etc"></a><a id="Random--RngUPol_FldPadExact--RngIntElt"></a>
> **Random** (R :: *RngUPol_FldPadExact*, d :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

A random element of `R` of the given degree.

**Parameters**
- `Eisenstein`
- `Inertial`
- `Monic`
- `Irreducible`

## Approximation
{:#approximation}

Intrinsics to do with the current approximation of a p-adic number.

<a id="SetBaselineValuation"></a><a id="SetBaselineValuation--FldPadExactElt--etc"></a><a id="SetBaselineValuation--FldPadExactElt--any"></a>
> **SetBaselineValuation** (x :: *FldPadExactElt*, n)
{:.intrinsic}

Sets the baseline valuation.


<a id="IncreaseBaselinePrecision"></a><a id="IncreaseBaselinePrecision--FldPadExactElt--etc"></a><a id="IncreaseBaselinePrecision--FldPadExactElt--any"></a>
> **IncreaseBaselinePrecision** (x :: *FldPadExactElt*, n)
{:.intrinsic}

Increases the baseline precision.


<a id="WeakApproximation"></a><a id="WeakApproximation--FldPadExactElt"></a>
> **WeakApproximation** (x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element weakly equal to `x`.


<a id="_ExactpAdics_PrecisionRequired"></a><a id="_ExactpAdics_PrecisionRequired--FldPadExact--etc"></a><a id="_ExactpAdics_PrecisionRequired--FldPadExact--FldPadElt--any"></a>
> **_ExactpAdics_PrecisionRequired** (F :: *FldPadExact*, xx :: *FldPadElt*, apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

(A bound on) the precision required in the parent field of x to approximate x to the given absolute precision.


<a id="_ExactpAdics_PrecisionRequired-2"></a><a id="_ExactpAdics_PrecisionRequired--RngUPol_FldPadExact--etc"></a><a id="_ExactpAdics_PrecisionRequired--RngUPol_FldPadExact--RngUPolElt-FldPad--any"></a>
> **_ExactpAdics_PrecisionRequired** (R :: *RngUPol_FldPadExact*, xf :: *RngUPolElt*[*FldPad*], apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The precision required to approximate f with the given parameters.


<a id="IncreaseAbsolutePrecision_Lazy"></a><a id="IncreaseAbsolutePrecision_Lazy--FldPadExact--etc"></a><a id="IncreaseAbsolutePrecision_Lazy--FldPadExact--RngIntElt"></a>
> **IncreaseAbsolutePrecision_Lazy** (F :: *FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Getter which, when evaluated, the approximation field of `F` has at least precision `pr`.


<a id="Approximation_Lazy"></a><a id="Approximation_Lazy--FldPadExact--etc"></a><a id="Approximation_Lazy--FldPadExact--any"></a>
> **Approximation_Lazy** (F :: *FldPadExact*, pr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The approximating field of `F` with default precision `pr`.


<a id="UpdateZero"></a><a id="UpdateZero--FldPadExactElt--etc"></a><a id="UpdateZero--FldPadExactElt--RngIntElt"></a>
> **UpdateZero** (x :: *FldPadExactElt*, apr :: *RngIntElt*)
{:.intrinsic}

Updates `x` to O(pi^`apr`).


<a id="IsDefinitelyZero"></a><a id="IsDefinitelyZero--FldPadExactElt"></a>
> **IsDefinitelyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is precisely zero.


<a id="IsWeaklyZero"></a><a id="IsWeaklyZero--FldPadExactElt"></a>
> **IsWeaklyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` is zero up to precision.


**Parameters**
- `Strategy := false`: When not `false`, this is a strategy used to increase the precision of `x` until it is non-zero.

<a id="AreAllWeaklyZero"></a><a id="AreAllWeaklyZero--seq-FldPadExactElt"></a>
> **AreAllWeaklyZero** (xs :: [*FldPadExactElt*])
> 
> -> *BoolElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

True if each `x` in `xs` is weakly zero. If not, returns the index of a nonzero element.

**Parameters**
- `Strategy`

<a id="IsWeaklyEqual"></a><a id="IsWeaklyEqual--FldPadExactElt--etc"></a><a id="IsWeaklyEqual--FldPadExactElt--FldPadExactElt"></a>
> **IsWeaklyEqual** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `x` and `y` are weakly equal up to precision.

**Parameters**
- `Strategy`

