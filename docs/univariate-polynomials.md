# Univariate polynomials

## Root-finding and factorization

> **Factorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadElt*, []
> {:.ret}
{:.intrinsic}

The factorization of f as a sequence of `<factor, multiplicity>` pairs.

It is only possible to factorize squarefree polynomials, so `multiplicity` is always 1. The factors are monic; also returns the leading coefficient of `f`.

**Parameters.**
- `Strategy`: the precision strategy.
- `Certificates`: when `true`, also returns a corresponding sequence of certificates including fields `F`, `E`, `Rho` and `Pi`.
- `Extensions`: when `true` implies `Certificates` and also includes `Extension` in each certificate.
- `Ideals`: when `true` implies `Certificates` and also includes `IdealGen1` and `IdealGen2` in each certificate.

> **Roots** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The roots of `f` as a sequence of `<root, multiplicity>` pairs.

`f` must not have repeated roots, and hence `multiplicity` will always be 1.

**Parameters.**
- `Strategy`: The strategy to use.

