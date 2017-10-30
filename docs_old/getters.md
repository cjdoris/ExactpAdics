---
chapter: 20
headings:
  - Creation
  - Evaluation
  - Composition
---

# Getters: recursive computations

{% include jump-list.md %}

The new type `ExactpAdics_Gettr` encapsulates a computation which, when evaluated, yields a value. The computation may depend on other computations which in turn recursively depend on the value of some p-adic objects being known to some precision. Evaluating a Getter entails finding all of these dependencies recursively, merging them so that there is only one dependency per object, and then satisfying the tree of dependencies in order, before findally evaluating the root.

Getters underlie the whole ExactpAdics package: every p-adic number or polynomial carries with it an *update function* taking an absolute precision and returning a Getter which, when evaluated, has the side-effect of updating the approximation to the given precision.

Knowledge of Getters is not required by the casual user. However, the programmer who wants to create new p-adic values directly without using the higher functionality elsewhere in the package will need to be familiar with them.

## Creation

> **ExactpAdics_Getter** (state, getDeps, getValue)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A Getter where:
- `state` is the initial value of a state variable.
- `getDeps` is a `procedure(~state, ~deps)` which assigns to `deps` a list of dependencies, which are pairs `<x,apr>` of p-adic values `x` (of type `FldPadExactElt`, `RngUPolElt_FldPadExact` or `RngMPolElt_FldPadExact`) and corresponding absolute precisions that the computation depends on.
- `getValue` is a `procedure(~state, ~val)` which assigns to `val` the value of the Getter if possible.
- Both procedures are free to modify the `state` parameter.
- If `getValue` does not assign to `val`, then this means the computation has more dependencies, and the depdendency resolving framework will go on to call `getDeps` again.

> **ExactpAdics_ConstGetter** (x)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A Getter with no dependencies and which evaluates to `x`.

> **ExactpAdics_GeneralGetter** (state, getGetter, getValue)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Similar to `ExactpAdics_Getter` except the dependency is a getter:
- `getGetter` replaces `getDeps` and is a `procedure(~state, ~g)` which assigns a getter to `g`.
- `getValue` is now a `procedure(gval, ~state, ~val)` where `gval` is the value of the getter assigned to `g` in `getGetter`.

## Evaluation

> **Evaluate** (g :: *ExactpAdics_Gettr*)
>
> -> *Any*
> {:.ret}
{:.intrinsic}

Evaluates the Getter `g` and returns its value.

## Composition

> **Apply** (f, g :: *ExactpAdics_Gettr*)
>
> **Compose** (g :: *ExactpAdics_Gettr*, f)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter `g` with the function `f` applied to its output.

> **ApplyProcedure** (f, g :: *ExactpAdics_Gettr*)
>
> **ComposeProcedure** (g :: *ExactpAdics_Gettr*, f)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter `g` which calls the procedure `f` on its return value.

**Parameters.**
- `Value := true`: The value returned by the new getter.

> **ApplyGetter** (f, g :: *ExactpAdics_Gettr*)
>
> **ComposeGetter** (g :: ExactpAdics_Gettr*, f)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter with value `Evaluate(f(Evaluate(g)))`. `f` must be a function returning a getter.

**Parameters.**
- `AllowConst := false`: When true, if `f` does not return a getter, then behave as if `f` returned a ConstGetter with this value. That is, the new getter returns the return value of `f`.

> **ApplyGetter** (f, gs :: [*ExactpAdics_Gettr*])
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter with value `Evaluate(f(Evaluate(gs[1]), Evaluate(gs[2]), ...))`. `f` must be a function with `#gs` inputs returning a getter.

**Parameters.** As for previous intrinsic.

> **\'mod\'** (g :: *ExactpAdics_Gettr*, f)
>
> **\'mod\'** (g :: [*ExactpAdics_Gettr*], f)
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Same as `ApplyGetter(f, g : AllowConst)`.

> **Flatten** (gs :: [*ExactpAdics_Gettr*])
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

The getter with value `[* Evaluate(gs[1]), Evaluate(gs[2]), ... *]`.

**Parameters.**
- `Sequence := false`: When true, the value is a sequence not a list.
- `Universe`: When given, the value is a sequence with the given universe (implies `Sequence := true`).

> **\'&cat\'** (gs :: [*ExactpAdics_Gettr*])
>
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Same as `Flatten(gs : Sequence)`.

