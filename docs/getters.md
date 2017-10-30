# Getters

## Creation

> **ExactpAdics_Getter** (state, getDeps, getValue)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Creates a new getter with initial state `state`. `getDeps` must be a `procedure(~state, ~deps)` assigning to `deps` a list of `<x,apr>` pairs such that the computation depends on the absolute precision of `x` being at least `apr`. `getValue` must be a `procedure(~state, ~value)` which either assigns to `value`, giving the value of the getter, or does not assign to `value` meaning that the computation has more dependencies, and hence `getDeps` needs to be called again.

> **ExactpAdics_ConstGetter** (X)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter returning X.

> **ExactpAdics_NullGetter** ()
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter with no dependencies that does nothing.

> **ExactpAdics_GeneralGetter** (state, getGetter, getValue)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A new getter with more general dependencies. `getGetter` must be a `procedure(~state, ~getter)` assigning to `getter` a getter, which is a dependency. `getValue` must be a `procedure(gvalue, ~state, ~value)` which is like `getValue` for `ExactpAdics_Getter` except it now takes the extra input `gvalue` shich is the value of the getter assigned by `getGetter`.

## Evaluation

> **Evaluate** (g :: *ExactpAdics_Gettr*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Evaluates the getter and retuns its value.

## Composition

> **Apply** (f, g :: *ExactpAdics_Gettr*)
> 
> **Compose** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Applies f to the output of g.



> **ApplyProcedure** (f, g :: *ExactpAdics_Gettr*)
> 
> **ComposeProcedure** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Applies the procedure f to the output of g, and sets the output to the given value.



> **ApplyGetter** (f, g :: *ExactpAdics_Gettr*)
> 
> **\'mod\'** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter which returns the return value of f(return value of g).



> **ApplyGetter** (f, gs :: [*ExactpAdics_Gettr*])
> 
> **\'mod\'** (gs :: [*ExactpAdics_Gettr*], f)
> 
> **ComposeGetter** (g :: *ExactpAdics_Gettr*, f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter which returns the return value of f(return value of gs[1], ...).





## Reductions

> **Flatten** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The ExactpAdics_Gettr whose value is the list of values of the given gettrs.

> **\'&cat\'** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is the sequence of values of gs.

## Short-circuit reductions

> **ShortCircuitReduce** (gs :: [*ExactpAdics_Gettr*], f)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Given a function f taking any subsequence of S=[<i, Evaluate(gs[i])> : i in [1..#gs]] and returning either false,_ when the result is unknown or true,val when the result is known, where val is independent of the subsequence of S, returns the getter which evaluates to val. f(S) must return true.

> **Exists** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is true iff there exists g in gs so that f(Evaluate(g)) is true.

> **ForAll** (gs :: [*ExactpAdics_Gettr*])
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter whose value is true iff for all g in gs f(Evaluate(g)) is true.

