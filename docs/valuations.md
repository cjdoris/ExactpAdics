# Valuations


**Contents**
* [Introduction](#introduction)
* [Generic intrinsics](#generic-intrinsics)
* [Val_FldPadElt](#val_fldpadelt)
* [Val_RngUPolElt_FldPad](#val_rngupolelt_fldpad)
* [Val_RngMPolElt_FldPad](#val_rngmpolelt_fldpad)


## Introduction


In this package, we define new types to represent valuations of p-adic numbers and polynomials. These are also used to represent precisions.

The valuation of a p-adic number is represented by the type `Val_FldPadElt`, whose value is either an integer, or positive or negative infinity. Mathematically its values are in $Z := \ZZ \cup \{\pm\infty\}$. Addition of valuations corresponds to multiplications of p-adics, so we define this. On the other hand, multiplication of two valuations has no natural interpretation, so we do not define this. Taking the minimum of two valuations is defined, since this bounds the valuation of the sum of the corresponding p-adics. Hence $Z$ is more like the *tropical ring of integers* than the usual ring of integers $\ZZ$. Multiplying by an ordinary integer (*scalar multiplication*) is defined because this corresponds to exponentiation of p-adic numbers. They are also totally ordered. For convenience, we extend $Z$ to include the rationals $\QQ$ too.

The valuation of a polynomial is (by definition in the package) a function taking an exponent vector to the valuation of the corresponding coefficient. That is, for polynomials of rank $n$, it is a function $\NN^n \to Z^n$, i.e. an element of $Z^{\NN^n}$. They are represented by the type `Val_RngUPolElt_FldPad` for univariate polynomials and `Val_RngMPolElt_FldPad` for multivariate polynomials over p-adic fields. Since polynomials by definition have only finitely many non-zero coefficients, the function is constant except for finitely many inputs. We can define a partial ordering on these valuations: $v_1 < v_2$ iff for all $n \in \NN$ then $v_1(n) < v_2(n)$. This partial ordering gives us suprema and infema (defined pointwise), and we can also define addition and scalar multiplication pointwise.

## Generic intrinsics


In this section we document intrinsics common to all valuations. Where there are multiple `Val` inputs, it suffices for only one to be a `Val` and for them all to be coercible to a common `Val` type.

> **\'-\'** (v :: *Val*)
> 
> **\'+\'** (v :: *Val*, w :: *Val*)
> 
> **\'-\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Negation, addition and subtraction.

This is as normal for `Val_FldPadElt`, and defined pointwise otherwise. For convenience, we define $\infty-\infty=0$.





> **\'\*\'** (v :: *Val*, n)
> 
> **\'\*\'** (n, v :: *Val*)
> 
> **\'/\'** (v :: *Val*, n)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Scalar multiplication and division. `n` must be an integer or rational.





> **\'eq\'** (v :: *Val*, w :: *Val*)
> 
> **\'ne\'** (v :: *Val*, w :: *Val*)
> 
> **\'le\'** (v :: *Val*, w :: *Val*)
> 
> **\'lt\'** (v :: *Val*, w :: *Val*)
> 
> **\'ge\'** (v :: *Val*, w :: *Val*)
> 
> **\'gt\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Ordering predicates.

This is as normal for `Val_FldPadElt` (i.e. a total ordering), and defined pointwise otherwise (i.e. a partial ordering).











> **\'join\'** (v :: *Val*, w :: *Val*)
> 
> **\'meet\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Supremum and infemum.

This is just maximum and minimum for `Val_FldPadElt`, and defined pointwise otherwise.



> **\'diff\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Diff. For `Val_FldPadElt`, `v diff w` is defined to be `v` if `v gt w` and otherwise is negative infinity. Otherwise, it is defined pointwise.

If you view the valuation of a compound structure like a multiset, except where the multiplicities on each element are tropical integers instead of normal integers, then `diff` is like set difference defined via a universal property.

> **Value** (v :: *Val*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Retrieves the value of the valuation. For `Val_FldPadElt` this is an integer, rational or infinite. For compound structures it is the underlying function, e.g. for polynomials it is an `AssocDflt` representing a function which is constant almost everywhere.

> **IsValidAbsolutePrecision** (x, v)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

True if `v` may be coerced to a valuation for `x`. If so, also returns the coerced valuation.

> **IsValidAbsolutePrecisionDiff** (x, v)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

True if `v` may be coerced to a valuation for `x`. If so also returns the coerced valuation. Differs from `IsValidAbsolutePrecision` in that, for example, for polynomials, if the constant value is not implied by `v`, then it is taken to be 0 instead of infinity.

## Val_FldPadElt

Represents the valuation of a p-adic number.

> **Val_FldPadElt_IsCoercible** (v)
> 
> **Val_FldPadElt_IsCoercible** (v :: *Val_FldPadElt*)
> 
> **Val_FldPadElt_IsCoercible** (v :: *RngIntElt*)
> 
> **Val_FldPadElt_IsCoercible** (v :: *Infty*)
> 
> **Val_FldPadElt_IsCoercible** (v :: *ExtReElt*)
> 
> **Val_FldPadElt_IsCoercible** (v :: *FldRatElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a Val_FldPadElt, and the coerced value.











> **IsPromotable** (v :: *Val_FldPadElt*, w)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v and w are promotable to a common type.

> **Val_FldPadElt_Make** (v)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

A Val_FldPadElt with value v.

> **Val_FldPadElt_Infinity** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation Infinity.

> **Val_FldPadElt_NegInfinity** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.

> **Val_FldPadElt_Zero** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation 0.

> **IsFinite** (v :: *Val_FldPadElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if v is finite, i.e. an integer or rational.

> **IsIntegral** (v :: *Val_FldPadElt*)
> 
> -> *BoolElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

True if v has an integer value, and the value if so.

> **IntegerValue** (v :: *Val_FldPadElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The value of v coerced to an integer.

> **Ceiling** (v :: *Val_FldPadElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The integer valuation larger than v, or just v if infinite.

## Val_RngUPolElt_FldPad

Represents the valuation of a univariate polynomial over a p-adic field.

> **Val_RngUPolElt_FldPad_IsCoercible** (v)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (v :: *Val_RngUPolElt_FldPad*)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (v :: *AssocDflt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a Val_RngUPolElt_FldPad.





> **IsPromotable** (v :: *Val_RngUPolElt_FldPad*, w)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v and w are promotable to a common type.

> **Val_RngUPolElt_FldPad_IsCoercible** (dflt, v)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (dflt :: *Val_FldPadElt*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a Val_RngUPolElt_FldPad with given default.



> **Val_RngUPolElt_FldPad_Make** (v)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

A Val_RngUPolElt_FldPad with value v.

> **Val_RngUPolElt_FldPad_Make** (x, y)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngUPolElt_FldPad_Make(DefaultAssociativeArray(x,y)).

> **Val_RngUPolElt_FldPad_Make** (x, y, z)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngUPolElt_FldPad_Make(DefaultAssociativeArray(x,y,z)).

> **Val_RngUPolElt_FldPad_Infinity** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation Infinity.

> **Val_RngUPolElt_FldPad_NegInfinity** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.

> **Val_RngUPolElt_FldPad_Zero** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation 0.

> **Value** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The underlying associative array of values.

> **Ceiling** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The integer valuation larger than v, or just v if infinite.

> **\'&join\'** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The join of the valuations at each coefficient. Equivalent to "&join Image(Value(v))".

> **\'&meet\'** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The meet of the valuations at each coefficient. Equivalent to "&meet Image(Value(v))".

> **\'@\'** (i :: *RngIntElt*, v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient i.

> **ShiftSlope** (v :: *Val_RngUPolElt_FldPad*, s)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Adds i*s onto v(i).

> **ExactpAdics_Val** (f :: *RngUPolElt*[*FldPad*])
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation of f.

> **ExactpAdics_APr** (f :: *RngUPolElt*[*FldPad*])
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation of f.

## Val_RngMPolElt_FldPad

Represents the valuation of a multivariate polynomial over a p-adic field.

> **Val_RngMPolElt_FldPad_IsCoercible** (v)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (v :: *Val_RngMPolElt_FldPad*)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (v :: *AssocDflt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a Val_RngMPolElt_FldPad.





> **IsPromotable** (v :: *Val_RngMPolElt_FldPad*, w)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v and w are promotable to a common type.

> **Val_RngMPolElt_FldPad_IsCoercible** (dflt, v)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (dflt :: *Val_FldPadElt*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a Val_RngMPolElt_FldPad with given default.



> **IsValidAbsolutePrecision** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to an absolute precision for x. Also returns the coerced value.

> **IsValidAbsolutePrecisionDiff** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to an absolute precision diff for x. Also returns the coerced value.

> **IsValidRelativePrecision** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if v is coercible to a relative precision for x. Also returns the coerced value.

> **Val_RngMPolElt_FldPad_Make** (v)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

A Val_RngMPolElt_FldPad with value v.

> **Val_RngMPolElt_FldPad_Make** (x, y)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngMPolElt_FldPad_Make(DefaultAssociativeArray(x,y)).

> **Val_RngMPolElt_FldPad_Make** (x, y, z)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngMPolElt_FldPad_Make(DefaultAssociativeArray(x,y,z)).

> **Val_RngMPolElt_FldPad_Infinity** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation Infinity.

> **Val_RngMPolElt_FldPad_NegInfinity** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.

> **Val_RngMPolElt_FldPad_Zero** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation 0.

> **Ceiling** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The integer valuation larger than v, or just v if infinite.

> **\'&join\'** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The join of the valuations at each coefficient. Equivalent to "&join Image(Value(v))".

> **\'&meet\'** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The meet of the valuations at each coefficient. Equivalent to "&meet Image(Value(v))".

> **\'@\'** (i :: [*RngIntElt*], v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient i.

> **\'@\'** (m :: *RngMPolElt*, v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient Exponents(m).

> **ShiftSlope** (v :: *Val_RngMPolElt_FldPad*, s :: [Any])
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Adds i.s onto v(i).

