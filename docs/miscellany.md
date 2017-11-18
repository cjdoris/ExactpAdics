# Miscellany
{:#miscellany}

Bits and bobs not belonging to the main features of the package, but needed by the package and useful nonetheless.

**Contents**
* [Profiling](#profiling)
* [Default associative arrays](#default-associative-arrays)
* [Warnings](#warnings)
* [Promotion](#promotion)
* [Lower bounds](#lower-bounds)

## Profiling
{:#profiling}


To help isolate the slow parts of code, we provide some profiling tools.

<a id="ExactpAdics_SetProfile--BoolElt"></a><a id="ExactpAdics_SetProfile"></a>
> **ExactpAdics_SetProfile** (doProfile :: *BoolElt*)
{:.intrinsic}

Turn profiling on or off.


**Parameters**
- `Reset := false`: When true, also resets the profile.

<a id="ExactpAdics_GetProfile--noargs"></a><a id="ExactpAdics_GetProfile"></a>
> **ExactpAdics_GetProfile** ()
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if profiling is enabled.


<a id="ExactpAdics_ResetProfile"></a><a id="ExactpAdics_ResetProfile--noargs"></a>
> **ExactpAdics_ResetProfile** ()
{:.intrinsic}

Resets the profile.


<a id="ExactpAdics_GetProfileUpdates"></a><a id="ExactpAdics_GetProfileUpdates--noargs"></a>
> **ExactpAdics_GetProfileUpdates** ()
> 
> -> []
> {:.ret}
{:.intrinsic}

Returns the profile, a sequence of records for each update with the following fields:
- `x`: the element being updated.
- `initial_apr`: the initial absolute precision of the element.
- `target_apr`: the absolute precision being updated to.
- `initial_time`: the `Cputime()` when the update was made.
- `time_elapsed`: the time taken to perform the update.


## Default associative arrays
{:#default-associative-arrays}

The new type `AssocDflt` is an associative array with a default value. Hence it may be used to describe a function which is constant save for finitely many exceptions.

<a id="IsCoercible_DefaultAssociativeArray"></a><a id="IsCoercible_DefaultAssociativeArray--any"></a>
> **IsCoercible_DefaultAssociativeArray** (x)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default `x`.


<a id="IsCoercible_DefaultAssociativeArray--any--any--any"></a><a id="IsCoercible_DefaultAssociativeArray-2"></a><a id="IsCoercible_DefaultAssociativeArray--any--etc"></a>
> **IsCoercible_DefaultAssociativeArray** (x, keys, values)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default `x` and given `keys` and `values`.


<a id="IsCoercible_DefaultAssociativeArray--any--any"></a><a id="IsCoercible_DefaultAssociativeArray-3"></a><a id="IsCoercible_DefaultAssociativeArray--any--etc-2"></a><a id="IsCoercible_DefaultAssociativeArray--any--Assoc"></a><a id="IsCoercible_DefaultAssociativeArray--any--seq-Tup"></a>
> **IsCoercible_DefaultAssociativeArray** (x, y)
> 
> **IsCoercible_DefaultAssociativeArray** (x, y :: *Assoc*)
> 
> **IsCoercible_DefaultAssociativeArray** (x, y :: [*Tup*])
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default `x` and values `y`.






<a id="DefaultAssociativeArray--any"></a><a id="DefaultAssociativeArray"></a>
> **DefaultAssociativeArray** (x)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x`.


<a id="DefaultAssociativeArray-2"></a><a id="DefaultAssociativeArray--any--etc"></a><a id="DefaultAssociativeArray--any--any"></a>
> **DefaultAssociativeArray** (x, ys)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x` and keys and values specified by `ys` (an associative array or sequence of <key,value> pairs).


<a id="DefaultAssociativeArray--any--any--any"></a><a id="DefaultAssociativeArray-3"></a><a id="DefaultAssociativeArray--any--etc-2"></a>
> **DefaultAssociativeArray** (x, keys, values)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x`, and given `keys` and `values`.


<a id="Print"></a><a id="Print--AssocDflt--MonStgElt"></a><a id="Print--AssocDflt--etc"></a>
> **Print** (x :: *AssocDflt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.


<a id="@--any--AssocDflt"></a><a id="@--any--etc"></a><a id="@"></a>
> **\'@\'** (i, x :: *AssocDflt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The value at index `i` of `x`.


<a id="ApplyPointwise"></a><a id="ApplyPointwise--any--AssocDflt--AssocDflt"></a><a id="ApplyPointwise--any--etc"></a>
> **ApplyPointwise** (f, x :: *AssocDflt*, y :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function `f` pointwise to values of `x` and `y`.


<a id="ApplyPointwise-2"></a><a id="ApplyPointwise--any--etc-2"></a><a id="ApplyPointwise--any--AssocDflt"></a>
> **ApplyPointwise** (f, x :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function `f` pointwise to values of `x`.


<a id="Image"></a><a id="Image--AssocDflt"></a>
> **Image** (x :: *AssocDflt*)
> 
> -> {}
> {:.ret}
{:.intrinsic}

The set of possible output values.


<a id="DefaultValue--AssocDflt"></a><a id="DefaultValue"></a>
> **DefaultValue** (x :: *AssocDflt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The default value of `x`.


<a id="SpecialAssociativeArray"></a><a id="SpecialAssociativeArray--AssocDflt"></a>
> **SpecialAssociativeArray** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The associative array of the special values of `x`.


<a id="SpecialKeys"></a><a id="SpecialKeys--AssocDflt"></a>
> **SpecialKeys** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The keys of special values of `x`.


<a id="Zip--seq-AssocDflt"></a><a id="Zip"></a>
> **Zip** (xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> [x(i) : x in `xs`]. The inputs must have compatible indices.


<a id="ZipApplyPointwise--any--etc"></a><a id="ZipApplyPointwise"></a><a id="ZipApplyPointwise--any--seq-AssocDflt"></a>
> **ZipApplyPointwise** (f, xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> `f`([x(i) : x in `xs`]). Equivalent to ApplyPointwise(`f`,Zip(`xs`)).


<a id="ForAll--AssocDflt--any"></a><a id="ForAll--AssocDflt--etc"></a><a id="ForAll"></a>
> **ForAll** (x :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f`(`x`(i)) is true for all i.


<a id="ForAll--AssocDflt--etc-2"></a><a id="ForAll--AssocDflt--AssocDflt--any"></a><a id="ForAll-2"></a>
> **ForAll** (x :: *AssocDflt*, y :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f`(`x`(i),`y`(i)) is true for all i.


## Warnings
{:#warnings}

For controlling the extent to which errors and warnings occur in the ExactpAdics package.

<a id="ExactpAdics_SetWarningAction"></a><a id="ExactpAdics_SetWarningAction--MonStgElt--MonStgElt"></a><a id="ExactpAdics_SetWarningAction--MonStgElt--etc"></a>
> **ExactpAdics_SetWarningAction** (name :: *MonStgElt*, action :: *MonStgElt*)
{:.intrinsic}

Sets how the warning `name` is displayed. `action` is one of:
- `"Ignore"`: ignores the warning and does nothing
- `"Warn"`: prints the warning to the screen
- `"WarnOnce"`: prints the warning to the screen the first time it occurs
- `"Error"`: raises an error


<a id="ExactpAdics_WarningActionIsDefined"></a><a id="ExactpAdics_WarningActionIsDefined--MonStgElt"></a>
> **ExactpAdics_WarningActionIsDefined** (name :: *MonStgElt*)
> 
> -> *BoolElt*, *MonStgElt*
> {:.ret}
{:.intrinsic}

True if there is a warning action defined for warning `name`. If so, also returns the action.


<a id="ExactpAdics_GetWarningAction--MonStgElt--etc"></a><a id="ExactpAdics_GetWarningAction--MonStgElt--MonStgElt"></a><a id="ExactpAdics_GetWarningAction"></a>
> **ExactpAdics_GetWarningAction** (name :: *MonStgElt*, dflt :: *MonStgElt*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

The warning action set for warning `name`, if set, or else `dflt`.


<a id="ExactpAdics_Warn--MonStgElt--etc"></a><a id="ExactpAdics_Warn"></a><a id="ExactpAdics_Warn--MonStgElt--any"></a>
> **ExactpAdics_Warn** (name :: *MonStgElt*, msg)
{:.intrinsic}

Raises the warning `name` with message `msg`.

**Parameters**
- `DefaultAction`
- `Action`

## Promotion
{:#promotion}

A basic scheme for promoting values in different structures to a common strucure.

<a id="IsPromotable--any--etc"></a><a id="IsPromotable"></a><a id="IsPromotable--any--any"></a>
> **IsPromotable** (x, y)
> 
> -> *BoolElt*, Any, Any
> {:.ret}
{:.intrinsic}

True if `x` and `y` are promotable to the same parent.


<a id="Promote"></a><a id="Promote--any--etc"></a><a id="Promote--any--any"></a>
> **Promote** (x, y)
> 
> -> Any, Any
> {:.ret}
{:.intrinsic}

Promotes `x` and `y` to a common type.


## Lower bounds
{:#lower-bounds}

A `ExactpAdics_BndLow` is a lower bound on a possibly unknown value.

<a id="ExactpAdics_LowerBound--any"></a><a id="ExactpAdics_LowerBound"></a>
> **ExactpAdics_LowerBound** (v)
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

The lower bound `v`.

**Parameters**
- `IsSharp`

<a id="IsSharp"></a><a id="IsSharp--ExactpAdics_BndLow"></a>
> **IsSharp** (b :: *ExactpAdics_BndLow*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `b` is a sharp bound.


<a id="BoundValue"></a><a id="BoundValue--ExactpAdics_BndLow"></a>
> **BoundValue** (b :: *ExactpAdics_BndLow*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The lower bound.


<a id="Value"></a><a id="Value--ExactpAdics_BndLow"></a>
> **Value** (b :: *ExactpAdics_BndLow*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The value of `b`, assuming it is sharp.


<a id="Print-2"></a><a id="Print--ExactpAdics_BndLow--MonStgElt"></a><a id="Print--ExactpAdics_BndLow--etc"></a>
> **Print** (b :: *ExactpAdics_BndLow*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.


<a id="&+--seq-ExactpAdics_BndLow"></a><a id="&+"></a>
> **\'&+\'** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the sum of the values being bounded.


<a id="Max--seq-ExactpAdics_BndLow"></a><a id="Max"></a>
> **Max** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the maximum of the values being bounded.


<a id="Min--seq-ExactpAdics_BndLow"></a><a id="Min"></a>
> **Min** (bs :: [*ExactpAdics_BndLow*])
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

Lower bound on the minimum of the values being bounded.


