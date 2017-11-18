# Miscellany

Bits and bobs not belonging to the main features of the package, but needed by the package and useful nonetheless.

**Contents**
* [Profiling](#profiling)
* [Default associative arrays](#default-associative-arrays)
* [Warnings](#warnings)
* [Promotion](#promotion)
* [Lower bounds](#lower-bounds)

## Profiling


To help isolate the slow parts of code, we provide some profiling tools.

> **ExactpAdics_SetProfile** (doProfile :: *BoolElt*)
{:.intrinsic}

Turn profiling on or off.


**Parameters**
- `Reset := false`: When true, also resets the profile.

> **ExactpAdics_GetProfile** ()
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if profiling is enabled.


> **ExactpAdics_ResetProfile** ()
{:.intrinsic}

Resets the profile.


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

The new type `AssocDflt` is an associative array with a default value. Hence it may be used to describe a function which is constant save for finitely many exceptions.

> **IsCoercible_DefaultAssociativeArray** (x)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default `x`.


> **IsCoercible_DefaultAssociativeArray** (x, keys, values)
> 
> -> *BoolElt*, *AssocDflt*
> {:.ret}
{:.intrinsic}

True if we can create a default associative array with default `x` and given `keys` and `values`.


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






> **DefaultAssociativeArray** (x)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x`.


> **DefaultAssociativeArray** (x, ys)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x` and keys and values specified by `ys` (an associative array or sequence of <key,value> pairs).


> **DefaultAssociativeArray** (x, keys, values)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The default associative array with default value `x`, and given `keys` and `values`.


> **Print** (x :: *AssocDflt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.


> **\'@\'** (i, x :: *AssocDflt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The value at index `i` of `x`.


> **ApplyPointwise** (f, x :: *AssocDflt*, y :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function `f` pointwise to values of `x` and `y`.


> **ApplyPointwise** (f, x :: *AssocDflt*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

Applies the function `f` pointwise to values of `x`.


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

The default value of `x`.


> **SpecialAssociativeArray** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The associative array of the special values of `x`.


> **SpecialKeys** (x :: *AssocDflt*)
> 
> -> *Assoc*
> {:.ret}
{:.intrinsic}

The keys of special values of `x`.


> **Zip** (xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> [x(i) : x in `xs`]. The inputs must have compatible indices.


> **ZipApplyPointwise** (f, xs :: [*AssocDflt*])
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The array [i] -> `f`([x(i) : x in `xs`]). Equivalent to ApplyPointwise(`f`,Zip(`xs`)).


> **ForAll** (x :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f`(`x`(i)) is true for all i.


> **ForAll** (x :: *AssocDflt*, y :: *AssocDflt*, f)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `f`(`x`(i),`y`(i)) is true for all i.


## Warnings

For controlling the extent to which errors and warnings occur in the ExactpAdics package.

> **ExactpAdics_SetWarningAction** (name :: *MonStgElt*, action :: *MonStgElt*)
{:.intrinsic}

Sets how the warning `name` is displayed. `action` is one of:
- `"Ignore"`: ignores the warning and does nothing
- `"Warn"`: prints the warning to the screen
- `"WarnOnce"`: prints the warning to the screen the first time it occurs
- `"Error"`: raises an error


> **ExactpAdics_WarningActionIsDefined** (name :: *MonStgElt*)
> 
> -> *BoolElt*, *MonStgElt*
> {:.ret}
{:.intrinsic}

True if there is a warning action defined for warning `name`. If so, also returns the action.


> **ExactpAdics_GetWarningAction** (name :: *MonStgElt*, dflt :: *MonStgElt*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

The warning action set for warning `name`, if set, or else `dflt`.


> **ExactpAdics_Warn** (name :: *MonStgElt*, msg)
{:.intrinsic}

Raises the warning `name` with message `msg`.

**Parameters**
- `DefaultAction`
- `Action`

## Promotion

A basic scheme for promoting values in different structures to a common strucure.

> **IsPromotable** (x, y)
> 
> -> *BoolElt*, Any, Any
> {:.ret}
{:.intrinsic}

True if `x` and `y` are promotable to the same parent.


> **Promote** (x, y)
> 
> -> Any, Any
> {:.ret}
{:.intrinsic}

Promotes `x` and `y` to a common type.


## Lower bounds

A `ExactpAdics_BndLow` is a lower bound on a possibly unknown value.

> **ExactpAdics_LowerBound** (v)
> 
> -> *ExactpAdics_BndLow*
> {:.ret}
{:.intrinsic}

The lower bound `v`.

**Parameters**
- `IsSharp`

> **IsSharp** (b :: *ExactpAdics_BndLow*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `b` is a sharp bound.


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

The value of `b`, assuming it is sharp.


> **Print** (b :: *ExactpAdics_BndLow*, lvl :: *MonStgElt*)
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


