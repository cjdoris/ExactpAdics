# Valuations
{:#valuations}



**Contents**
* [Introduction](#introduction)
* [Generic intrinsics](#generic-intrinsics)
* [Val_FldPadElt](#val_fldpadelt)
  * [Creation](#creation)
  * [Special values](#special-values)
  * [Other operations](#other-operations)
* [Val_RngUPolElt_FldPad](#val_rngupolelt_fldpad)
  * [Creation](#creation-2)
  * [Special values](#special-values-2)
  * [Other operations](#other-operations-2)
* [Val_RngMPolElt_FldPad](#val_rngmpolelt_fldpad)
  * [Creation](#creation-3)
  * [Special values](#special-values-3)
  * [Other operations](#other-operations-3)
* [Val_Tup_PadExact](#val_tup_padexact)
  * [Creation](#creation-4)
  * [Other operations](#other-operations-4)


## Introduction
{:#introduction}


In this package, we define new types to represent valuations of p-adic numbers and polynomials. These are also used to represent precisions.

The valuation of a p-adic number is represented by the type `Val_FldPadElt`, whose value is either an integer, or positive or negative infinity. Mathematically its values are in $Z := \ZZ \cup \{\pm\infty\}$. Addition of valuations corresponds to multiplications of p-adics, so we define this. On the other hand, multiplication of two valuations has no natural interpretation, so we do not define this. Taking the minimum of two valuations is defined, since this bounds the valuation of the sum of the corresponding p-adics. Hence $Z$ is more like the *tropical ring of integers* than the usual ring of integers $\ZZ$. Multiplying by an ordinary integer (*scalar multiplication*) is defined because this corresponds to exponentiation of p-adic numbers. They are also totally ordered. For convenience, we extend $Z$ to include the rationals $\QQ$ too.

The valuation of a polynomial is (by definition in the package) a function taking an exponent vector to the valuation of the corresponding coefficient. That is, for polynomials of rank $n$, it is a function $\NN^n \to Z^n$, i.e. an element of $Z^{\NN^n}$. They are represented by the type `Val_RngUPolElt_FldPad` for univariate polynomials and `Val_RngMPolElt_FldPad` for multivariate polynomials over p-adic fields. Since polynomials by definition have only finitely many non-zero coefficients, the function is constant except for finitely many inputs. We can define a partial ordering on these valuations: $v_1 < v_2$ iff for all $n \in \NN$ then $v_1(n) < v_2(n)$. This partial ordering gives us suprema and infema (defined pointwise), and we can also define addition and scalar multiplication pointwise.

## Generic intrinsics
{:#generic-intrinsics}


In this section we document intrinsics common to all valuations. Where there are multiple `Val` inputs, it suffices for only one to be a `Val` and for them all to be coercible to a common `Val` type.

<a id="-"></a><a id="---Val"></a><a id="+"></a><a id="+--Val--etc"></a><a id="+--Val--Val"></a><a id="---Val--etc"></a><a id="---Val--Val"></a>
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






<a id="*"></a><a id="*--Val--etc"></a><a id="*--Val--any"></a><a id="*--any--etc"></a><a id="*--any--Val"></a><a id="/"></a><a id="/--Val--etc"></a><a id="/--Val--any"></a>
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






<a id="eq"></a><a id="eq--Val--etc"></a><a id="eq--Val--Val"></a><a id="ne"></a><a id="ne--Val--etc"></a><a id="ne--Val--Val"></a><a id="le"></a><a id="le--Val--etc"></a><a id="le--Val--Val"></a><a id="lt"></a><a id="lt--Val--etc"></a><a id="lt--Val--Val"></a><a id="ge"></a><a id="ge--Val--etc"></a><a id="ge--Val--Val"></a><a id="gt"></a><a id="gt--Val--etc"></a><a id="gt--Val--Val"></a>
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












<a id="join"></a><a id="join--Val--etc"></a><a id="join--Val--Val"></a><a id="meet"></a><a id="meet--Val--etc"></a><a id="meet--Val--Val"></a>
> **\'join\'** (v :: *Val*, w :: *Val*)
> 
> **\'meet\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Supremum and infemum.

This is just maximum and minimum for `Val_FldPadElt`, and defined pointwise otherwise.




<a id="diff"></a><a id="diff--Val--etc"></a><a id="diff--Val--Val"></a>
> **\'diff\'** (v :: *Val*, w :: *Val*)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

Diff. For `Val_FldPadElt`, `v diff w` is defined to be `v` if `v gt w` and otherwise is negative infinity. Otherwise, it is defined pointwise.

If you view the valuation of a compound structure like a multiset, except where the multiplicities on each element are tropical integers instead of normal integers, then `diff` is like set difference defined via a universal property.


<a id="Value"></a><a id="Value--Val"></a>
> **Value** (v :: *Val*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Retrieves the value of the valuation. For `Val_FldPadElt` this is an integer, rational or infinite. For compound structures it is the underlying function, e.g. for polynomials it is an `AssocDflt` representing a function which is constant almost everywhere.


<a id="IsValidAbsolutePrecision"></a><a id="IsValidAbsolutePrecision--any--etc"></a><a id="IsValidAbsolutePrecision--any--any"></a>
> **IsValidAbsolutePrecision** (x, v)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

True if `v` may be coerced to a valuation for `x`. If so, also returns the coerced valuation.


<a id="IsValidAbsolutePrecisionDiff"></a><a id="IsValidAbsolutePrecisionDiff--any--etc"></a><a id="IsValidAbsolutePrecisionDiff--any--any"></a>
> **IsValidAbsolutePrecisionDiff** (x, v)
> 
> -> *Val*
> {:.ret}
{:.intrinsic}

True if `v` may be coerced to a valuation for `x`. If so also returns the coerced valuation. Differs from `IsValidAbsolutePrecision` in that, for example, for polynomials, if the constant value is not implied by `v`, then it is taken to be -infinity instead of infinity.


## Val_FldPadElt
{:#val_fldpadelt}

Represents the valuation of a p-adic number.

### Creation
{:#creation}

<a id="Val_FldPadElt_IsCoercible"></a><a id="Val_FldPadElt_IsCoercible--any"></a><a id="Val_FldPadElt_IsCoercible--Val_FldPadElt"></a><a id="Val_FldPadElt_IsCoercible--RngIntElt"></a><a id="Val_FldPadElt_IsCoercible--Infty"></a><a id="Val_FldPadElt_IsCoercible--ExtReElt"></a><a id="Val_FldPadElt_IsCoercible--FldRatElt"></a>
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

True if `v` is coercible to a Val_FldPadElt, and the coerced value.












<a id="IsPromotable"></a><a id="IsPromotable--Val_FldPadElt--etc"></a><a id="IsPromotable--Val_FldPadElt--any"></a>
> **IsPromotable** (v :: *Val_FldPadElt*, w)
> 
> -> *BoolElt*, Any, Any
> {:.ret}
{:.intrinsic}

True if `v` and `w` are promotable to a common type.


<a id="Val_FldPadElt_Make"></a><a id="Val_FldPadElt_Make--any"></a>
> **Val_FldPadElt_Make** (v)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

A Val_FldPadElt with value `v`.


### Special values
{:#special-values}

<a id="Val_FldPadElt_Infinity"></a><a id="Val_FldPadElt_Infinity--noargs"></a>
> **Val_FldPadElt_Infinity** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation Infinity.


<a id="Val_FldPadElt_NegInfinity"></a><a id="Val_FldPadElt_NegInfinity--noargs"></a>
> **Val_FldPadElt_NegInfinity** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.


<a id="Val_FldPadElt_Zero"></a><a id="Val_FldPadElt_Zero--noargs"></a>
> **Val_FldPadElt_Zero** ()
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation 0.


### Other operations
{:#other-operations}

<a id="IsFinite"></a><a id="IsFinite--Val_FldPadElt"></a>
> **IsFinite** (v :: *Val_FldPadElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if `v` is finite, i.e. an integer or rational.


<a id="IsIntegral"></a><a id="IsIntegral--Val_FldPadElt"></a>
> **IsIntegral** (v :: *Val_FldPadElt*)
> 
> -> *BoolElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

True if `v` has an integer value, and the value if so.


<a id="IntegerValue"></a><a id="IntegerValue--Val_FldPadElt"></a>
> **IntegerValue** (v :: *Val_FldPadElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The value of `v` coerced to an integer.


<a id="Ceiling"></a><a id="Ceiling--Val_FldPadElt"></a>
> **Ceiling** (v :: *Val_FldPadElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The integer valuation larger than `v`, or just `v` if infinite.


<a id="ExactpAdics_Val"></a><a id="ExactpAdics_Val--FldPadElt"></a>
> **ExactpAdics_Val** (x :: *FldPadElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of `x`.


<a id="ExactpAdics_APr"></a><a id="ExactpAdics_APr--FldPadElt"></a>
> **ExactpAdics_APr** (x :: *FldPadElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The absolute precision of `x`.


## Val_RngUPolElt_FldPad
{:#val_rngupolelt_fldpad}

Represents the valuation of a univariate polynomial over a p-adic field.

### Creation
{:#creation-2}

<a id="Val_RngUPolElt_FldPad_IsCoercible"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--any"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--Val_RngUPolElt_FldPad"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--AssocDflt"></a>
> **Val_RngUPolElt_FldPad_IsCoercible** (v)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (v :: *Val_RngUPolElt_FldPad*)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (v :: *AssocDflt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a Val_RngUPolElt_FldPad.






<a id="IsPromotable-2"></a><a id="IsPromotable--Val_RngUPolElt_FldPad--etc"></a><a id="IsPromotable--Val_RngUPolElt_FldPad--any"></a>
> **IsPromotable** (v :: *Val_RngUPolElt_FldPad*, w)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` and `w` are promotable to a common type.


<a id="Val_RngUPolElt_FldPad_IsCoercible-2"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--any--etc"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--any--any"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--Val_FldPadElt--etc"></a><a id="Val_RngUPolElt_FldPad_IsCoercible--Val_FldPadElt--any"></a>
> **Val_RngUPolElt_FldPad_IsCoercible** (dflt, v)
> 
> **Val_RngUPolElt_FldPad_IsCoercible** (dflt :: *Val_FldPadElt*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a Val_RngUPolElt_FldPad with given default.




<a id="Val_RngUPolElt_FldPad_Make"></a><a id="Val_RngUPolElt_FldPad_Make--any"></a>
> **Val_RngUPolElt_FldPad_Make** (v)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

A Val_RngUPolElt_FldPad with value `v`.


<a id="Val_RngUPolElt_FldPad_Make-2"></a><a id="Val_RngUPolElt_FldPad_Make--any--etc"></a><a id="Val_RngUPolElt_FldPad_Make--any--any"></a>
> **Val_RngUPolElt_FldPad_Make** (x, y)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngUPolElt_FldPad_Make(DefaultAssociativeArray(`x`,`y`)).


<a id="Val_RngUPolElt_FldPad_Make-3"></a><a id="Val_RngUPolElt_FldPad_Make--any--etc-2"></a><a id="Val_RngUPolElt_FldPad_Make--any--any--any"></a>
> **Val_RngUPolElt_FldPad_Make** (x, y, z)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngUPolElt_FldPad_Make(DefaultAssociativeArray(`x`,`y`,`z`)).


### Special values
{:#special-values-2}

<a id="Val_RngUPolElt_FldPad_Infinity"></a><a id="Val_RngUPolElt_FldPad_Infinity--noargs"></a>
> **Val_RngUPolElt_FldPad_Infinity** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation Infinity.


<a id="Val_RngUPolElt_FldPad_NegInfinity"></a><a id="Val_RngUPolElt_FldPad_NegInfinity--noargs"></a>
> **Val_RngUPolElt_FldPad_NegInfinity** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.


<a id="Val_RngUPolElt_FldPad_Zero"></a><a id="Val_RngUPolElt_FldPad_Zero--noargs"></a>
> **Val_RngUPolElt_FldPad_Zero** ()
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation 0.


### Other operations
{:#other-operations-2}

<a id="Value-2"></a><a id="Value--Val_RngUPolElt_FldPad"></a>
> **Value** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *AssocDflt*
> {:.ret}
{:.intrinsic}

The underlying associative array of values.


<a id="Ceiling-2"></a><a id="Ceiling--Val_RngUPolElt_FldPad"></a>
> **Ceiling** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The integer valuation larger than `v`, or just `v` if infinite.


<a id="&join"></a><a id="&join--Val_RngUPolElt_FldPad"></a>
> **\'&join\'** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The join of the valuations at each coefficient. Equivalent to "&join Image(Value(`v`))".


<a id="&meet"></a><a id="&meet--Val_RngUPolElt_FldPad"></a>
> **\'&meet\'** (v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The meet of the valuations at each coefficient. Equivalent to "&meet Image(Value(`v`))".


<a id="@"></a><a id="@--RngIntElt--etc"></a><a id="@--RngIntElt--Val_RngUPolElt_FldPad"></a>
> **\'@\'** (i :: *RngIntElt*, v :: *Val_RngUPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient `i`.


<a id="ShiftSlope"></a><a id="ShiftSlope--Val_RngUPolElt_FldPad--etc"></a><a id="ShiftSlope--Val_RngUPolElt_FldPad--any"></a>
> **ShiftSlope** (v :: *Val_RngUPolElt_FldPad*, s)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Adds i*`s` onto `v`(i).


<a id="ExactpAdics_Val-2"></a><a id="ExactpAdics_Val--RngUPolElt-FldPad"></a>
> **ExactpAdics_Val** (f :: *RngUPolElt*[*FldPad*])
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation of `f`.


<a id="ExactpAdics_APr-2"></a><a id="ExactpAdics_APr--RngUPolElt-FldPad"></a>
> **ExactpAdics_APr** (f :: *RngUPolElt*[*FldPad*])
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The absolute precision of `f`.


## Val_RngMPolElt_FldPad
{:#val_rngmpolelt_fldpad}

Represents the valuation of a multivariate polynomial over a p-adic field.

### Creation
{:#creation-3}

<a id="Val_RngMPolElt_FldPad_IsCoercible"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--any"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--Val_RngMPolElt_FldPad"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--AssocDflt"></a>
> **Val_RngMPolElt_FldPad_IsCoercible** (v)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (v :: *Val_RngMPolElt_FldPad*)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (v :: *AssocDflt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a Val_RngMPolElt_FldPad.






<a id="IsPromotable-3"></a><a id="IsPromotable--Val_RngMPolElt_FldPad--etc"></a><a id="IsPromotable--Val_RngMPolElt_FldPad--any"></a>
> **IsPromotable** (v :: *Val_RngMPolElt_FldPad*, w)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` and `w` are promotable to a common type.


<a id="Val_RngMPolElt_FldPad_IsCoercible-2"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--any--etc"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--any--any"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--Val_FldPadElt--etc"></a><a id="Val_RngMPolElt_FldPad_IsCoercible--Val_FldPadElt--any"></a>
> **Val_RngMPolElt_FldPad_IsCoercible** (dflt, v)
> 
> **Val_RngMPolElt_FldPad_IsCoercible** (dflt :: *Val_FldPadElt*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a Val_RngMPolElt_FldPad with given default.




<a id="IsValidAbsolutePrecision-2"></a><a id="IsValidAbsolutePrecision--RngMPolElt_FldPadExact--etc"></a><a id="IsValidAbsolutePrecision--RngMPolElt_FldPadExact--any"></a>
> **IsValidAbsolutePrecision** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to an absolute precision for `x`. Also returns the coerced value.


<a id="IsValidAbsolutePrecisionDiff-2"></a><a id="IsValidAbsolutePrecisionDiff--RngMPolElt_FldPadExact--etc"></a><a id="IsValidAbsolutePrecisionDiff--RngMPolElt_FldPadExact--any"></a>
> **IsValidAbsolutePrecisionDiff** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to an absolute precision diff for `x`. Also returns the coerced value.


<a id="IsValidRelativePrecision"></a><a id="IsValidRelativePrecision--RngMPolElt_FldPadExact--etc"></a><a id="IsValidRelativePrecision--RngMPolElt_FldPadExact--any"></a>
> **IsValidRelativePrecision** (x :: *RngMPolElt_FldPadExact*, v)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a relative precision for `x`. Also returns the coerced value.


<a id="Val_RngMPolElt_FldPad_Make"></a><a id="Val_RngMPolElt_FldPad_Make--any"></a>
> **Val_RngMPolElt_FldPad_Make** (v)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

A Val_RngMPolElt_FldPad with value `v`.


<a id="Val_RngMPolElt_FldPad_Make-2"></a><a id="Val_RngMPolElt_FldPad_Make--any--etc"></a><a id="Val_RngMPolElt_FldPad_Make--any--any"></a>
> **Val_RngMPolElt_FldPad_Make** (x, y)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngMPolElt_FldPad_Make(DefaultAssociativeArray(`x`,`y`)).


<a id="Val_RngMPolElt_FldPad_Make-3"></a><a id="Val_RngMPolElt_FldPad_Make--any--etc-2"></a><a id="Val_RngMPolElt_FldPad_Make--any--any--any"></a>
> **Val_RngMPolElt_FldPad_Make** (x, y, z)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Same as Val_RngMPolElt_FldPad_Make(DefaultAssociativeArray(`x`,`y`,`z`)).


### Special values
{:#special-values-3}

<a id="Val_RngMPolElt_FldPad_Infinity"></a><a id="Val_RngMPolElt_FldPad_Infinity--noargs"></a>
> **Val_RngMPolElt_FldPad_Infinity** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation Infinity.


<a id="Val_RngMPolElt_FldPad_NegInfinity"></a><a id="Val_RngMPolElt_FldPad_NegInfinity--noargs"></a>
> **Val_RngMPolElt_FldPad_NegInfinity** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation -Infinity.


<a id="Val_RngMPolElt_FldPad_Zero"></a><a id="Val_RngMPolElt_FldPad_Zero--noargs"></a>
> **Val_RngMPolElt_FldPad_Zero** ()
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation 0.


### Other operations
{:#other-operations-3}

<a id="Ceiling-3"></a><a id="Ceiling--Val_RngMPolElt_FldPad"></a>
> **Ceiling** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The integer valuation larger than `v`, or just `v` if infinite.


<a id="&join-2"></a><a id="&join--Val_RngMPolElt_FldPad"></a>
> **\'&join\'** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The join of the valuations at each coefficient. Equivalent to "&join Image(Value(`v`))".


<a id="&meet-2"></a><a id="&meet--Val_RngMPolElt_FldPad"></a>
> **\'&meet\'** (v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The meet of the valuations at each coefficient. Equivalent to "&meet Image(Value(`v`))".


<a id="@-2"></a><a id="@--seq-RngIntElt--etc"></a><a id="@--seq-RngIntElt--Val_RngMPolElt_FldPad"></a>
> **\'@\'** (i :: [*RngIntElt*], v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient `i`.


<a id="@-3"></a><a id="@--RngMPolElt--etc"></a><a id="@--RngMPolElt--Val_RngMPolElt_FldPad"></a>
> **\'@\'** (m :: *RngMPolElt*, v :: *Val_RngMPolElt_FldPad*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The valuation of coefficient Exponents(`m`).


<a id="ShiftSlope-2"></a><a id="ShiftSlope--Val_RngMPolElt_FldPad--etc"></a><a id="ShiftSlope--Val_RngMPolElt_FldPad--seq"></a>
> **ShiftSlope** (v :: *Val_RngMPolElt_FldPad*, s :: [])
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

Adds i.`s` onto `v`(i).


<a id="ExactpAdics_Val-3"></a><a id="ExactpAdics_Val--RngMPolElt"></a>
> **ExactpAdics_Val** (f :: *RngMPolElt*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuation of `f`.


<a id="ExactpAdics_APr-3"></a><a id="ExactpAdics_APr--RngMPolElt"></a>
> **ExactpAdics_APr** (f :: *RngMPolElt*)
> 
> -> *Val_RngMPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The absolute precision of `f`.


## Val_Tup_PadExact
{:#val_tup_padexact}

Represents the valuation of a tuple of p-adic objects.

### Creation
{:#creation-4}

<a id="Val_Tup_PadExact_IsCoercible"></a><a id="Val_Tup_PadExact_IsCoercible--any"></a><a id="Val_Tup_PadExact_IsCoercible--Val_Tup_PadExact"></a><a id="Val_Tup_PadExact_IsCoercible--Tup"></a>
> **Val_Tup_PadExact_IsCoercible** (v)
> 
> **Val_Tup_PadExact_IsCoercible** (v :: *Val_Tup_PadExact*)
> 
> **Val_Tup_PadExact_IsCoercible** (v :: *Tup*)
> 
> -> *BoolElt*, *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

True if `v` is coercible to a Val_Tup_PadExact, and the coerced value.






<a id="IsPromotable-4"></a><a id="IsPromotable--Val_Tup_PadExact--etc"></a><a id="IsPromotable--Val_Tup_PadExact--any"></a>
> **IsPromotable** (v :: *Val_Tup_PadExact*, w)
> 
> -> *BoolElt*, Any, Any
> {:.ret}
{:.intrinsic}

True if `v` and `w` are coercible to a common type.


<a id="Val_Tup_PadExact_Make"></a><a id="Val_Tup_PadExact_Make--any"></a>
> **Val_Tup_PadExact_Make** (v)
> 
> -> *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

Coerces `v` to a Val_Tup_PadExact.


### Other operations
{:#other-operations-4}

<a id="@-4"></a><a id="@--RngIntElt--etc-2"></a><a id="@--RngIntElt--Val_Tup_PadExact"></a>
> **\'@\'** (i :: *RngIntElt*, v :: *Val_Tup_PadExact*)
> 
> -> *Val_PadExactElt*
> {:.ret}
{:.intrinsic}

The valuation in the `i`th component of `v`.


<a id="#"></a><a id="#--Val_Tup_PadExact"></a>
> **\'#\'** (v :: *Val_Tup_PadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The number of components in `v`.


<a id="ExactpAdics_Val-4"></a><a id="ExactpAdics_Val--Tup"></a>
> **ExactpAdics_Val** (t :: *Tup*)
> 
> -> *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

The valuation of `t`.


<a id="ExactpAdics_APr-4"></a><a id="ExactpAdics_APr--Tup"></a>
> **ExactpAdics_APr** (t :: *Tup*)
> 
> -> *Val_Tup_PadExact*
> {:.ret}
{:.intrinsic}

The absolute precision of `t`.


