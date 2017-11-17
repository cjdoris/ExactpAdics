# ExactpAdics

A package for exact p-adic computation for the [Magma computer algebra system](http://magma.maths.usyd.edu.au/magma).

The aim of this package is to provide the user with a higher-level interface to computing with p-adics, making it easier to perform everyday computations and coding more complex algorithms.

The rationale for the design of the package and an overview of the internal structure can be found in [this article](http://arxiv.org/my-article).

The package is [hosted here on GitHub](https://github.com/cjdoris/ExactpAdics) and can be [downloaded from here](https://github.com/cjdoris/ExactpAdics/releases/latest). The [user manual is here](https://cjdoris.github.io/ExactpAdics).

Please direct any comments, queries or complaints to [the GitHub issue tracker](https://github.com/cjdoris/ExactpAdics/issues).

## Changelog

### v1.1.0
- Adds abstract types `StrPadExact`, `PadExactElt` and `Val_PadExactElt`, from which most other types are now derived, and inherit a common interface.
- Adds types `SetCart_PadExact`, `Tup_PadExact` and `Val_Tup_PadExact` for representing tuples of p-adic objects.
- Adds intrinsic NewtonPolygonFactorization.
- Adds intrinsic IsHenselLiftable (for univariate polynomial factorizations).
- Adds Support parameter to NewtonPolygon.
- Adds parameter UseNP to Roots and Factorization.
- Adds intrinsic AreAllWeaklyZero.
- Improves IsHenselLiftable (for multivariate roots).
- Minor bug fixes.

### v1.0.2
- Internal function `assignResidueClassFieldNames` now works with fields of degree 1.
- `Factorization` is easier to debug.
- Removes a hacky `try`-`catch` block, which are slow to execute in Magma.
- Warnings are now controlled by intrinsics, their behaviour can be altered via `ExactpAdics_SetWarningAction`.

### v1.0.1
- `ExactCompletion` precision errors
- Obsolete calls to `ExactpAdics_ExecutePrecisionStrategy`
- Minor bug in `IsHenselLiftable`
- Tweak to the update mechanism to catch under-precise updates in-place: The `Update` intrinsic now checks if the field `update_expecting_apr` is set, and if so asserts that the absolute precision is at least this; the dependency-checking framework sets this field whenever an element is about to be updated.

### v1.0.0
- Initial release