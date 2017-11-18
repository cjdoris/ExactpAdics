# Internals
{:#internals}



**Contents**
* [Generic interface](#generic-interface)
* [Getters](#getters)
  * [Overview](#overview)
  * [Creation](#creation)
  * [Evaluation](#evaluation)
* [Composition](#composition)
  * [Reductions](#reductions)
  * [Short-circuit reductions](#short-circuit-reductions)
* [ExtDataFldPadExact](#extdatafldpadexact)


## Generic interface
{:#generic-interface}


The type `StrPadExact` is for structures whose elements are in terms of Exact p-adic numbers. Examples of subtypes include `FldPadExact` for p-adic fields, `RngUPol_FldPadExact` for polynomials over p-adic fields, `SetCart_PadExact` for cartesian products of such structures. Elements of such structures have type deriving from `PadExactElt`.

All subtypes of `StrPadExact` adhere to a generic interface. That interface is documented here.

Elements (deriving from `PadExactElt`) have valuations which are a subtype of `Val_PadExactElt`. The generic interface for valuations is described [here]({{site.baseurl}}/valuations).

<a id="Update"></a><a id="Update--PadExactElt--any"></a><a id="Update--PadExactElt--etc"></a>
> **Update** (x :: *PadExactElt*, app)
{:.intrinsic}

Updates `x` from `app`.


<a id="Parent--PadExactElt"></a><a id="Parent"></a>
> **Parent** (x :: *PadExactElt*)
> 
> -> *StrPadExact*
> {:.ret}
{:.intrinsic}

The parent structure of `x`.


<a id="BaselineValuation"></a><a id="BaselineValuation--PadExactElt"></a>
> **BaselineValuation** (x :: *PadExactElt*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The baseline valuation of `x`.


<a id="_ExactpAdics_PrecisionRequired--PadExactElt--etc"></a><a id="_ExactpAdics_PrecisionRequired--PadExactElt--any"></a><a id="_ExactpAdics_PrecisionRequired"></a>
> **_ExactpAdics_PrecisionRequired** (x :: *PadExactElt*, apr)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The precision required to represent `x` to absolute precision `apr`.


<a id="WeakValuation"></a><a id="WeakValuation--PadExactElt"></a>
> **WeakValuation** (x :: *PadExactElt*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The valuation of `x` up to current precision.


<a id="AbsolutePrecision"></a><a id="AbsolutePrecision--PadExactElt"></a>
> **AbsolutePrecision** (x :: *PadExactElt*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The current absolute precision of `x`.


<a id="BaselinePrecision"></a><a id="BaselinePrecision--PadExactElt"></a>
> **BaselinePrecision** (x :: *PadExactElt*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The baseline precision of `x`.


<a id="Precision"></a><a id="Precision--PadExactElt"></a>
> **Precision** (x :: *PadExactElt*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The relative precision of `x`.


<a id="Approximation_Lazy--StrPadExact--etc"></a><a id="Approximation"></a><a id="Approximation--StrPadExact--etc"></a><a id="Approximation_Lazy--StrPadExact--any"></a><a id="Approximation_Lazy"></a><a id="Approximation--StrPadExact--any"></a>
> **Approximation_Lazy** (X :: *StrPadExact*, pr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (X :: *StrPadExact*, pr)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The approximation structure of `X` to precision `pr`.




<a id="Approximation-2"></a><a id="Approximation--StrPadExact"></a>
> **Approximation** (X :: *StrPadExact*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The approximating structure of `X`.


<a id="Approximation-3"></a><a id="Approximation--PadExactElt--any"></a><a id="Approximation_Lazy-2"></a><a id="Approximation_Lazy--PadExactElt--etc"></a><a id="Approximation_Lazy--PadExactElt--any"></a><a id="Approximation--PadExactElt--etc"></a>
> **Approximation_Lazy** (x :: *PadExactElt*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (x :: *PadExactElt*, apr)
> 
> -> Any
> {:.ret}
{:.intrinsic}

An approximation of `x` to absolute precision `apr`.



**Parameters**
- `Quick`
- `FixPr`

<a id="Approximation-4"></a><a id="Approximation--PadExactElt"></a>
> **Approximation** (x :: *PadExactElt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The current approximation to `x`.


<a id="IncreaseAbsolutePrecision_Lazy"></a><a id="IncreaseAbsolutePrecision--PadExactElt--any"></a><a id="IncreaseAbsolutePrecision--PadExactElt--etc"></a><a id="IncreaseAbsolutePrecision"></a><a id="IncreaseAbsolutePrecision_Lazy--PadExactElt--etc"></a><a id="IncreaseAbsolutePrecision_Lazy--PadExactElt--any"></a>
> **IncreaseAbsolutePrecision** (x :: *PadExactElt*, apr)
> 
> **IncreaseAbsolutePrecision_Lazy** (x :: *PadExactElt*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the absolute precision of `x` to `apr`.




## Getters
{:#getters}


*Advanced users only.* You only need to know about getters if you wish to implement a new exact p-adic algorithm at a low-level (i.e. not built entirely out of intrinsics already supplied by this package) or implement a new compound p-adic type.


**Contents**
* [Overview](#overview)
* [Creation](#creation)
* [Evaluation](#evaluation)


### Overview
{:#overview}


In this package, a *getter* is a computation which has p-adic dependencies in the sense that it requires certain p-adic values to be known to certain precisions before it can be evaluated. Getters underpin the whole package: a `FldPadExactElt` has a field `update` which is a function taking as input an absolute precision and returning a getter; evaluating this getter has the side-effect of increasing the absolute precision of the element to at least the given precision.

We encapsulate getters into the new type `ExactpAdics_Gettr`, and intrinsics which directly deal with getters are documented here.

A getter is essentially represented by a function `getDeps` returning a list of dependencies, and a function `getValue` which computes the value assuming the dependencies are met. There is also a state which is passed around by these functions so they can be stateful. A dependency is simply a pair `<x,apr>` of a p-adic value `x` (a `FldPadExactElt` or `RngUPolElt_FldPadExact`, etc.) and an absolute precision `apr` (a `Val_FldPadExact`, etc.), meaning that `x` is required to be known to absolute precision `apr`. Note that these dependencies may themselves have dependencies, and so we have a tree of dependencies. Evaluating the getter therefore involves traversing this tree from the leaves upward, satisfying dependencies as we go and computing values.

As an optimization, if two dependencies `<x,apr1>`, `<x,apr2>` in the tree are for the same p-adic value `x`, then the nodes are fused into the node `<x, apr1 join apr2>`. Also if `<x,apr>` is a dependency and the absolute precision of `x` is already `apr` then we may immediately trim the whole subtree.

### Creation
{:#creation}

<a id="ExactpAdics_Getter"></a><a id="ExactpAdics_Getter--any--etc"></a><a id="ExactpAdics_Getter--any--any--any"></a>
> **ExactpAdics_Getter** (state, getDeps, getValue)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Creates a new getter with initial `state` `state`. `getDeps` must be a `procedure(~state, ~deps)` assigning to `deps` a list of `<x,apr>` pairs such that the computation depends on the absolute precision of `x` being at least `apr`. `getValue` must be a `procedure(~state, ~value)` which either assigns to `value`, giving the value of the getter, or does not assign to `value` meaning that the computation has more dependencies, and hence `getDeps` needs to be called again.


<a id="ExactpAdics_ConstGetter--any"></a><a id="ExactpAdics_ConstGetter"></a>
> **ExactpAdics_ConstGetter** (X)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter returning `X`.


<a id="ExactpAdics_NullGetter"></a><a id="ExactpAdics_NullGetter--noargs"></a>
> **ExactpAdics_NullGetter** ()
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter with no dependencies that does nothing.


<a id="ExactpAdics_GeneralGetter--any--etc"></a><a id="ExactpAdics_GeneralGetter--any--any--any"></a><a id="ExactpAdics_GeneralGetter"></a>
> **ExactpAdics_GeneralGetter** (state, getGetter, getValue)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A new getter with more general dependencies. `getGetter` must be a `procedure(~state, ~getter)` assigning to `getter` a getter, which is a dependency. `getValue` must be a `procedure(gvalue, ~state, ~value)` which is like `getValue` for `ExactpAdics_Getter` except it now takes the extra input `gvalue` shich is the value of the getter assigned by `getGetter`.


### Evaluation
{:#evaluation}

<a id="Evaluate"></a><a id="Evaluate--ExactpAdics_Gettr"></a>
> **Evaluate** (g :: *ExactpAdics_Gettr*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Evaluates the getter and retuns its value.


## Composition
{:#composition}

<a id="Apply"></a><a id="Compose--ExactpAdics_Gettr--etc"></a><a id="Compose"></a><a id="Apply--any--ExactpAdics_Gettr"></a><a id="Compose--ExactpAdics_Gettr--any"></a><a id="Apply--any--etc"></a>
> **Apply** (f, g :: *ExactpAdics_Gettr*)
> 
> **Compose** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Applies `f` to the output of `g`.




<a id="ApplyProcedure--any--ExactpAdics_Gettr"></a><a id="ApplyProcedure--any--etc"></a><a id="ComposeProcedure--ExactpAdics_Gettr--any"></a><a id="ComposeProcedure"></a><a id="ApplyProcedure"></a><a id="ComposeProcedure--ExactpAdics_Gettr--etc"></a>
> **ApplyProcedure** (f, g :: *ExactpAdics_Gettr*)
> 
> **ComposeProcedure** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Applies the procedure `f` to the output of `g`, and sets the output `Value`.



**Parameters**
- `Value`

<a id="ApplyGetter"></a><a id="mod--ExactpAdics_Gettr--any"></a><a id="ApplyGetter--any--ExactpAdics_Gettr"></a><a id="mod"></a><a id="ApplyGetter--any--etc"></a><a id="mod--ExactpAdics_Gettr--etc"></a>
> **ApplyGetter** (f, g :: *ExactpAdics_Gettr*)
> 
> **\'mod\'** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter which returns the return value of `f`(return value of `g`). If `AllowConst` is false then `f` must return a getter; if true then `f` may return a non-getter, in which case this is the value of the returned getter.



**Parameters**
- `AllowConst`

<a id="ComposeGetter--ExactpAdics_Gettr--any"></a><a id="ApplyGetter-2"></a><a id="ApplyGetter--any--seq-ExactpAdics_Gettr"></a><a id="mod--seq-ExactpAdics_Gettr--any"></a><a id="ComposeGetter"></a><a id="mod-2"></a><a id="ApplyGetter--any--etc-2"></a><a id="mod--seq-ExactpAdics_Gettr--etc"></a><a id="ComposeGetter--ExactpAdics_Gettr--etc"></a>
> **ApplyGetter** (f, gs :: [*ExactpAdics_Gettr*])
> 
> **\'mod\'** (gs :: [*ExactpAdics_Gettr*], f)
> 
> **ComposeGetter** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter which returns the return value of `f`(return value of `gs`[1], ...).





**Parameters**
- `AllowConst`

### Reductions
{:#reductions}

<a id="Flatten--seq-ExactpAdics_Gettr"></a><a id="Flatten"></a>
> **Flatten** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is the list of values of the given gettrs. If `Sequence` is true, the value is coerced to a sequence. If `Universe` is given, the value is coerced to a sequence with this universe.

**Parameters**
- `Sequence`
- `Universe`

<a id="&cat--seq-ExactpAdics_Gettr"></a><a id="&cat"></a>
> **\'&cat\'** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is the sequence of values of `gs`.


### Short-circuit reductions
{:#short-circuit-reductions}

<a id="ShortCircuitReduce"></a><a id="ShortCircuitReduce--seq-ExactpAdics_Gettr--etc"></a><a id="ShortCircuitReduce--seq-ExactpAdics_Gettr--any"></a>
> **ShortCircuitReduce** (gs :: [*ExactpAdics_Gettr*], f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Given a function `f` taking any subsequence of S=[<i, Evaluate(`gs`[i])> : i in [1..#`gs`]] and returning either false,_ when the result is unknown or true,val when the result is known, where val is independent of the subsequence of S, returns the getter which evaluates to val. `f`(S) must return true.


<a id="Exists--seq-ExactpAdics_Gettr"></a><a id="Exists"></a>
> **Exists** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is true iff there exists g in `gs` so that f(Evaluate(g)) is true.


<a id="ForAll"></a><a id="ForAll--seq-ExactpAdics_Gettr"></a>
> **ForAll** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is true iff for all g in `gs` f(Evaluate(g)) is true.


## ExtDataFldPadExact
{:#extdatafldpadexact}

<a id="/--FldPadExact--FldPadExact"></a><a id="/"></a><a id="/--FldPadExact--etc"></a>
> **\'/\'** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

The extension `E`/`F`.


<a id="/--FldPadExact--ExtDataFldPadExact"></a><a id="/-2"></a><a id="/--FldPadExact--etc-2"></a>
> **\'/\'** (E :: *FldPadExact*, X :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension `E`/`X`.


<a id="/--ExtDataFldPadExact--FldPadExact"></a><a id="/-3"></a><a id="/--ExtDataFldPadExact--etc"></a>
> **\'/\'** (X :: *ExtDataFldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension `X`/`F`.


<a id="/--ExtDataFldPadExact--ExtDataFldPadExact"></a><a id="/-4"></a><a id="/--ExtDataFldPadExact--etc-2"></a>
> **\'/\'** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension `X1`/`X2`.


<a id="Flatten--ExtDataFldPadExact"></a><a id="Flatten-2"></a>
> **Flatten** (x :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Returns a version of `x` with type COMPOUND and all elements of `x``list have type not COMPOUND.


<a id="TopField--ExtDataFldPadExact"></a><a id="TopField"></a>
> **TopField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The top field of `x`.


<a id="BaseField--ExtDataFldPadExact"></a><a id="BaseField"></a>
> **BaseField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of `x`.


