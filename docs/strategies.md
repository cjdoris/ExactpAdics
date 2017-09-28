---
chapter: 15
headings:
  - Motivation
  - Conventions
  - Format of a strategy
  - Global strategies
  - Execution
---

# Precision Strategies

{% include prev-next.md %}

A design feature of `ExactpAdics` is that all functions either return the correct value or raise an error if this is not possible. In particular, some p-adic computations are not possible unless the inputs are known to sufficient precision, and if this occurs then we raise a *precision error*. Precision strategies are how we tell Magma how much we are willing to increase certain precisions before giving up.

## Motivation

Consider we have a value `x` which is known to be 0 modulo 2:

```
> K := ExactpAdicField(2);
> x := K!(2^19+1) - K!1;
> print x;
O(2)
```

Suppose we want its valuation. All we know at the moment is that it is at least 1. We could try increasing the precision of `x` to 10 and find:

```
> IncreaseAbsolutePrecision(x, 10);
> print x;
O(2^10)
```

So its valuation is at least 10. Now try increasing its precision to 20:

```
> IncreaseAbsolutePrecision(x, 20);
> print x;
2^19 + O(2^20)
```

And now we know the valuation is 19. But it was possible that the valuation was 100 or 1000 or Inifinity, so how often should we try increasing the precision, and by how much, before giving up? This decision is left to the user, and this information is encapsulated in a *precision strategy* which is essentially an ascending sequence of numbers. Most functions which use such strategies do so by increasing their inputs to each number in the sequence in turn until the computation can succeed.

```
> K := ExactpAdicField(2);
> x := K!(2^19+1) - K!1;
> print x;
O(2)
> Valuation(x : Strategy := [1,5,10]);
Runtime error: weakly zero
> print x;
O(2^10)
> Valuation(x : Strategy := [1,5,10,20]);
19
> print x;
2^19 + O(2^20)
> Valuation(x : Stragegy := [1,5,10]);
19
> print x;
2^19 + O(2^10)
```

This example shows that asking for the valuation of something with a strategy which doesn't go high enough will result in a precision error. And once the valuation is known, it remains known, even if we ask for it with a strategy which appears too small later.

## Conventions

In this package we obey the convention that any intrinsic which accepts precision strategies will:
- Accept the strategies via named parameters including the word `Strategy`; e.g. `Strategy`, `MainStrategy`, `fStrategy`.
- Have a `Strategy` parameter which acts as a default value for any other parameters taking strategies.
- Use the named global strategy `"default"` as the default strategy.

For example, this is a valid intrinsic:

```
intrinsic Foo(x : Strategy:="default", OtherStrategy:=Strategy) -> .
```

Functions which accept strategies should be careful to propagate these out to any function calls which accept strategies.

## Format of a strategy

A strategy is a strictly increasing sequence of integers, and is represented by one of the following:
- An integer `RngIntElt`, which is interpreted as a strategy of length 1.
- A sequence `SeqEnum` or list `List` of strategies, which is interpreted as the concatenation of those strategies.
- A string `MonStgElt`, which references a [globaly defined strategy](#global-strategies).
- A function `UserProgram`, which is called repeatedly on the last value. It either returns false, signifying the end of the strategy, or returns true and a new strategy. For example the strategy `func<n | n lt 100, 2*n>` keeps doubling the precision up to a maximum value of 100.
- An error `Err`, which causes that error to be raised.
- A tuple `Tup` which is a special instruction of one of the following forms:
  - `<"limit", n>` which applies a limit to the rest of the strategy; that is, the first value in the strategy greater or equal to `n` is replaced by `n`, and then the strategy terminates.
  - `<"randomize">` which randomizes the strategy as follows: if `m` was the last value in the strategy and `n` is the next value, then replace `n` by `Random(m+1,n)`.
  - `<"exp", m>` which is shorthand for the strategy `func<n | true, Max(1, Ceiling(n*m))>` which multiplies the previous value by `m` and rounds up. `m` need not be an integer.
  - `<"double">` which is shorthand for `<"exp", 2>`.

## Global strategies

For user convenience, there is a table of globally defined strategies which may be referred to by name. There are 3 strategies provided by default, which may all be overridden:
- `"defaultLimit"`: Initially set to `<"limit", 100>`, this strategy doesn't have any values, but may be mixed in to other strategies to limit them.
- `"unlimitedDefault"`: Initially set to `[* 1, <"randomize">, <"double"> *]`, that is it starts at 1, and for each value `n`, the next value is `Random(n+1,2*n)`.
- `"default"`: Initially set to `[* "defaultLimit", "unlimitedDefault" *]`, that is it is the `unlimitedDefault` strategy with the limit imposed by `defaultLimit`, hence with the other defaults it starts at 1, increments `n` to `Random(n+1,2*n)` and stops after this gets greater than 100.

The string `"default"` is used as the default `Strategy` parameter by most instrinsics in this package, so for most users it suffices to simply set this global strategy to their preferred one and then use the intrinsics without any explicit `Strategy` parameters.

> **ExactpAdics_IsGlobalPrecisionStrategyDefined** (name :: *MonStgElt*)
> 
> -> *BoolElt*, *Any*
> {:.ret}
{:.intrinsic}

True if there is a global precision strategy with the given `name`. If so, also returns the strategy itself.

> **ExactpAdics_SetGlobalPrecisionStrategy** (name :: *MonStgElt*, strategy)
{:.intrinsic}

Defines the global strategy with the given `name` to be `strategy`.

> **ExactpAdics_GetGlobalPrecisionStrategy** (name :: *MonStgElt*)
>
> -> *Any*
> {:.ret}
{:.intrinsic}

The global precision strategy with the given `name`.

## Execution

> **ExactpAdics_ExecutePrecisionStrategy(cb :: *UserProgram*, strategy, [initial :: *RngIntElt*])
>
> -> *BoolElt*, *RngIntElt*, *Any*
> {:.ret}
{:.intrinsic}

Runs though the values `n` of the `strategy` and for each one, calls the callback function `cb`. The callback returns `success, value`, where `success` is `true` to signify stopping and `false` to signify continuing. The initial value for `n` is `initial` if given, or else 0.

The first return value is `false` if the end of the strategy was reached before a successful callback and otherwise `true`. The second return value is the `n` at which the strategy stopped executing. The third return value is the `value` returned from a callback in the case of success.

> **ExactpAdics_PrecisionStrategyHasNext** (strategy, n :: *RngIntElt*)
>
> -> *BoolElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

True if the strategy has a value after `n`. If so, also returns the next value.