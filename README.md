# ExactpAdics

A package for exact p-adic computation for the [Magma computer algebra system](http://magma.maths.usyd.edu.au/magma).

The aim of this package is to provide the user with a higher-level interface to computing with p-adics, making it easier to perform everyday computations and coding more complex algorithms.

See the [user manual](https://cjdoris.github.io/ExactpAdics). The rationale for the design of the package and an overview of the internal structure can be found in [this article](http://arxiv.org/my-article).

The package is [hosted here on GitHub](https://github.com/cjdoris/ExactpAdics) and can be [downloaded from here](https://github.com/cjdoris/ExactpAdics/releases/latest). The [user manual is here](https://cjdoris.github.io/ExactpAdics).

Please direct any comments, queries or complaints to [the GitHub issue tracker](https://github.com/cjdoris/ExactpAdics/issues).

## Changelog

```
! Bug fix (no change to user interface, increment patch version)
~ Improvement (no change to user interface, increment patch version)
+ New feature (backwards-compatible change to user interface, increment minor version)
- Remove (backwards-incompatible change to user interface, increment major version)
```

### v1.2.1
```
! Fixes some bugs in `Factorization` code.
```

### v1.2.0
```
+ Adds `RelativeApproximation` and `BaselineApproximation` intrinsics, `_Lazy` versions and `Weak` versions (which are capped by the absolute precision)
+ Adds an implementation of the "OM" factoring algorithm, which is now the default algorithm used by `Factorization` and `Roots`. These are directly accessible as `ExactpAdics_Factorization` and `ExactpAdics_Roots`, with versions for `RngUPolElt[FldPad]` available too. The original behaviour, wrapping Magma's implementation, is available by passing `Alg:="Builtin"`, or calling `Builtin_Factorization` or `Builtin_Roots` directly.
! `ExactpAdicField(L :: FldPad)` not working when `L` has a finite precision
! Bug in `ShiftValuation`, caused by `R.1` not being to full precision where `R::RngUPol[FldPad]` (a Magma feature/bug)
```

### v1.1.0
```
+ Adds abstract types `StrPadExact`, `PadExactElt` and `Val_PadExactElt`, from which most other types are now derived, and inherit a common interface.
+ Adds types `SetCart_PadExact`, `Tup_PadExact` and `Val_Tup_PadExact` for representing tuples of p-adic objects.
+ Adds intrinsic NewtonPolygonFactorization.
+ Adds intrinsic IsHenselLiftable (for univariate polynomial factorizations).
+ Adds Support parameter to NewtonPolygon.
+ Adds parameter UseNP to Roots and Factorization.
+ Adds intrinsic AreAllWeaklyZero.
~ Improves IsHenselLiftable (for multivariate roots).
! Minor bug fixes.
```

### v1.0.2
```
! Internal function `assignResidueClassFieldNames` now works with fields of degree 1.
~ `Factorization` is easier to debug.
~ Removes a hacky `try`-`catch` block, which are slow to execute in Magma.
~ Warnings are now controlled by intrinsics, their behaviour can be altered via `ExactpAdics_SetWarningAction`.
```

### v1.0.1
```
! `ExactCompletion` precision errors
! Obsolete calls to `ExactpAdics_ExecutePrecisionStrategy`
! Minor bug in `IsHenselLiftable`
! Tweak to the update mechanism to catch under-precise updates in-place: The `Update` intrinsic now checks if the field `update_expecting_apr` is set, and if so asserts that the absolute precision is at least this; the dependency-checking framework sets this field whenever an element is about to be updated.
```

### v1.0.0
Initial release

## Developer notes

### Common code

This and the new `ExactpAdics2` share some common code from [the `ExactpAdicsCommon` repository](https://github.com/cjdoris/ExactpAdicsCommon). The code there should be periodically copied into the `common` directory (no fancy git merging currently).

### Documentation

Documentation is generated using [magdoc](https://cjdoris.github.io/magdoc) with the following command:

```
magdoc.py -o docs Generics.mag Getter.mag ExactpAdics.mag Factorization.mag Factorization_new.mag Val_FldPadElt.mag Val_RngUPolElt_FldPad.mag Val_RngMPolElt_FldPad.mag Val_Tup_PadExact.mag PrecisionStrategy.mag Tuples.mag DefaultAssociativeArray.mag State.mag Promotion.mag LowerBound.mag MultivariatePolynomials.mag
```

## License

Copyright (C) 2018 Christopher Doris

ExactpAdicsCommon is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

ExactpAdicsCommon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with ExactpAdicsCommon.  If not, see http://www.gnu.org/licenses/.
