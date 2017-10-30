# Exact p-adic fields

> **_ExactpAdics_Monomial** (R :: *RngMPol*, e :: [*RngIntElt*])
> 
> -> *RngMPolElt*
> {:.ret}
{:.intrinsic}

The monomial x^e in R.

> **_ExactpAdics_Sort** (xs)
> 
> **_ExactpAdics_Sort** (xs :: {})
> 
> -> Any
> {:.ret}
{:.intrinsic}

Sort.



> **_ExactpAdics_List** (xs)
> 
> **_ExactpAdics_List** (xs :: *List*)
> 
> **_ExactpAdics_List** (xs :: [])
> 
> **_ExactpAdics_List** (xs :: *Tup*)
> 
> -> *List*
> {:.ret}
{:.intrinsic}

Converts xs to a list.







> **_ExactpAdics_ChangeDefaultPrecision** (F :: *FldPad*, n :: *RngIntElt*)
> 
> **_ExactpAdics_ChangeDefaultPrecision** (F :: *FldPad*, n :: *Val_FldPadElt*)
{:.intrinsic}

Changes the default precision of F to n, and changes the default precisions of its subfields too.



> **_ExactpAdics_IsValidApproximation** (F :: *FldPadExact*, app :: *FldPadElt*)
> 
> -> *BoolElt*, *FldPadElt*
> {:.ret}
{:.intrinsic}

True if app is a valid approximation to an element of F, and the coerced version.

> **_ExactpAdics_IsValidApproximation** (R :: *RngUPol_FldPadExact*, app :: *RngUPolElt*[*FldPad*])
> 
> -> *BoolElt*, *RngUPolElt*
> {:.ret}
{:.intrinsic}

True if app is a valid approximation to an element of R, and the coerced version.

> **_ExactpAdics_IsWeaklyZero** (x)
> 
> **_ExactpAdics_IsWeaklyZero** (f :: *RngUPolElt*[*FldPad*])
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

IsWeaklyZero(x).



> **_ExactpAdics_IsWeaklyEqual** (x, y)
> 
> **_ExactpAdics_IsWeaklyEqual** (x :: *FldPadElt*, y :: *FldPadElt*)
> 
> **_ExactpAdics_IsWeaklyEqual** (x :: *RngUPolElt*[*FldPad*], y :: *RngUPolElt*[*FldPad*])
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

IsWeaklyEqual(x, y).





> **_ExactpAdics_ChangePrecision** (x :: *FldPadElt*, n :: *RngIntElt*)
> 
> **_ExactpAdics_ChangePrecision** (x :: *FldPadElt*, n :: *Infty*)
> 
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

Change the precision of x.



> **_ExactpAdics_ChangeAbsolutePrecision** (x :: *FldPadElt*, n :: *RngIntElt*)
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (x :: *FldPadElt*, n :: *Infty*)
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (x :: *FldPadElt*, n :: *Val_FldPadElt*)
> 
> -> *FldPadElt*
> {:.ret}
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (f :: *RngUPolElt*[*FldPad*], n :: *RngIntElt*)
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (f :: *RngUPolElt*[*FldPad*], n :: *Infty*)
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (f :: *RngUPolElt*[*FldPad*], n :: [])
> 
> **_ExactpAdics_ChangeAbsolutePrecision** (f :: *RngUPolElt*[*FldPad*], n :: *Val_RngUPolElt_FldPad*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

Change the absolute precision of x.













> **_ExactpAdics_Zero** (K :: *FldPad*, n :: *RngIntElt*)
> 
> **_ExactpAdics_Zero** (K :: *FldPad*, n :: *Infty*)
> 
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

Zero to absolute precision n.



> **_ExactpAdics_CapPrecision** (x :: *FldPadElt*, pr)
> 
> -> *FldPadElt*
> {:.ret}
> 
> **_ExactpAdics_CapPrecision** (f :: *RngUPolElt*[*FldPad*], pr)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

Caps the precision of x.



> **_ExactpAdics_CapAbsolutePrecision** (x :: *FldPadElt*, apr)
> 
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

Caps the absolute precision of x.

> **_ExactpAdics_IsPrecisionError** (e :: *Err*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if e looks like a precision error.

> **_ExactpAdics_Tower** (L :: *FldPad*, K :: *FldPad*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The tower of extensions from K up to L.

> **ExactpAdicField** (p :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The exact p-adic field.

> **Prime** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The p in p-adic.

> **IsPrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is a prime p-adic field.

> **PrimeField** (F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The prime field of F.

> **Print** (F :: *FldPadExact*, lvl :: *MonStgElt*)
> 
> **Print** (x :: *FldPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.



> **Parent** (x :: *FldPadExactElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field containing x.

> **PrecisionRequired** (x :: *FldPadExactElt*, apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

(A bound on) the precision required in the parent field of x to approximate x to the given absolute precision.

> **PrecisionRequired** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The precision required to approximate f with the given parameters.

> **Approximation_Lazy** (x :: *FldPadExactElt*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to x.

> **Approximation** (x :: *FldPadExactElt*, apr)
> 
> -> *FldPadElt*
> {:.ret}
{:.intrinsic}

An approximation to x.

> **IncreaseAbsolutePrecision_Lazy** (F :: *FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Getter which, when evaluated, the approximation field of F has at least precision pr.

> **Approximation_Lazy** (F :: *FldPadExact*, pr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (F :: *FldPadExact*, pr :: *RngIntElt*)
> 
> -> *FldPad*
> {:.ret}
{:.intrinsic}

The approximating field of F with default precision pr.



> **Approximation** (F :: *FldPadExact*)
> 
> -> *FldPad*
> {:.ret}
{:.intrinsic}

The approximating field.

> **IncreaseAbsolutePrecision** (x :: *FldPadExactElt*, n)
> 
> **IncreaseAbsolutePrecision_Lazy** (x :: *FldPadExactElt*, n)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the absolute precision of x to n.



> **AbsolutePrecision** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The absolute precision of x.

> **Precision** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The precision of x.

> **WeakValuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak valuation of x.

> **IsCoercible** (F :: *FldPadExact*, X)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *Tup*)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *RngIntElt*)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *FldRatElt*)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *FldPadExactElt*)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: [])
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *RngPadExactElt*)
> 
> **IsCoercible** (F :: *FldPadExact*, X :: *FldPadElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible to an element of F, and the coerced element.















> **\'eq\'** (F :: *FldPadExact*, E :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.

> **Update** (x :: *FldPadExactElt*, app :: *FldPadElt*)
{:.intrinsic}

Updates x to app.

> **UpdateZero** (x :: *FldPadExactElt*, apr :: *RngIntElt*)
{:.intrinsic}

Updates x to O(pi^apr).

> **IsExtensionOf** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

True if E is an extension of F. If so, also returns an object representing the extension.

> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *RngInt*)
> 
> **ExistsCoveringStructure** (E :: *RngInt*, F :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (E :: *FldPadExact*, F :: *FldRat*)
> 
> **ExistsCoveringStructure** (E :: *FldRat*, F :: *FldPadExact*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a structure containing E and F, and the common structure.









> **ExtConstructor** (E :: *FldPadExact*, t :: *Tup*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The extension of E defined by t.

> **\'+\'** (x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'+\'** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Unary addition.



> **IsDefinitelyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x is precisely zero.

> **IsDefinitelyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is precisely zero.

> **\'&+\'** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'&+\'** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Addition reduction.



> **\'+\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'+\'** (x :: *FldPadExactElt*, y)
> 
> **\'+\'** (x, y :: *FldPadExactElt*)
> 
> **\'+\'** (f :: *RngUPolElt_FldPadExact*, g)
> 
> **\'+\'** (f, g :: *RngUPolElt_FldPadExact*)
> 
> -> Any
> {:.ret}
> 
> **\'+\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Addition.











> **\'-\'** (x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'-\'** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Negation.



> **\'-\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'-\'** (x :: *FldPadExactElt*, y)
> 
> **\'-\'** (x, y :: *FldPadExactElt*)
> 
> **\'-\'** (x :: *RngUPolElt_FldPadExact*, y)
> 
> **\'-\'** (x, y :: *RngUPolElt_FldPadExact*)
> 
> -> Any
> {:.ret}
> 
> **\'-\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Subtraction.











> **\'/\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'/\'** (x :: *FldPadExactElt*, y)
> 
> **\'/\'** (x, y :: *FldPadExactElt*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Division.





> **\'^\'** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'^\'** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Powering.



> **IsWeaklyZero** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x is zero up to precision.

> **IsWeaklyEqual** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x and y are weakly equal up to precision.

> **\'&\*\'** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'&\*\'** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Multiplication reduction.



> **\'\*\'** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **\'\*\'** (x, y :: *FldPadExactElt*)
> 
> **\'\*\'** (x :: *FldPadExactElt*, y)
> 
> **\'\*\'** (x, y :: *RngUPolElt_FldPadExact*)
> 
> **\'\*\'** (x :: *RngUPolElt_FldPadExact*, y)
> 
> -> Any
> {:.ret}
> 
> **\'\*\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Multiplication.











> **Zero** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Zero.

> **One** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

One.

> **UniformizingElement** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The uniformizing element of F.

> **BaseField** (F :: *FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of F.

> **Degree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of F over its base field.

> **AbsoluteDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of F over its prime field.

> **InertiaDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of F over its base field.

> **AbsoluteInertiaDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of F over its prime field.

> **RamificationDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramificationd degree of F over its base field.

> **AbsoluteRamificationDegree** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of F over its prime field.

> **Degree** (x :: *ExtDataFldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of the extension.

> **Degree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of E over F.

> **RamificationDegree** (x :: *ExtDataFldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of the extension.

> **RamificationDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The ramification degree of E over F.

> **InertiaDegree** (x :: *ExtDataFldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree.

> **InertiaDegree** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The inertia degree of E over F.

> **PolynomialRing** (F :: *FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The univariate polynomial ring over F.

> **Print** (R :: *RngUPol_FldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.

> **BaseRing** (R :: *RngUPol_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of R.

> **Approximation_Lazy** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> **Approximation** (f :: *RngUPolElt_FldPadExact*, apr)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

An approximation to f.



> **IncreaseAbsolutePrecision_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

Increases the precision of the approximation to R to at least pr.

> **Approximation_Lazy** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **Approximation** (R :: *RngUPol_FldPadExact*, pr :: *RngIntElt*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

An approximation to R whose base field has default precision pr.



> **Approximation** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPol*
> {:.ret}
{:.intrinsic}

The approximation to R.

> **Print** (f :: *RngUPolElt_FldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints f.

> **AssignNames** (~R :: *RngUPol_FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns the name of the variable of R.

> **Names** (R :: *RngUPol_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The names of R.

> **Name** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (R :: *RngUPol_FldPadExact*, i :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Gets the ith generator of R.



> **Generator** (R :: *RngUPol_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The generator of R.

> **IsCoercible** (R :: *RngUPol_FldPadExact*, X)
> 
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X :: *RngUPolElt_FldPadExact*)
> 
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X :: *RngUPolElt*)
> 
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X :: *RngUPolElt*[*FldPad*])
> 
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X :: *Tup*)
> 
> **IsCoercible** (R :: *RngUPol_FldPadExact*, X :: [])
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible to an element of R, and the coerced element.











> **WeakDegree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The weak degree of f, the degree of its approximation.

> **WeakValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The valuations of the coefficients of the approximation of f.

> **WeakMinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The minimum valuation of the coefficients of the approximation of f.

> **AbsolutePrecision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The absolute precisions of the coefficients of the approximation of f.

> **Precision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The precisions of the coefficients of the approximation of f.

> **WeakCoefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of f, possibly including some leading zeros.

> **Coefficient** (f :: *RngUPolElt_FldPadExact*, i :: *RngIntElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The ith coefficient of f.

> **\'eq\'** (R :: *RngUPol_FldPadExact*, S :: *RngUPol_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.

> **IncreaseAbsolutePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the absolute precision of f to n.

> **IncreaseAbsolutePrecision_Lazy** (f :: *RngUPolElt_FldPadExact*, n)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
{:.intrinsic}

A getter which when evaluated increases the absolute precision of f.

> **IncreaseAbsolutePrecisions** (xs)
{:.intrinsic}

Increases the absolute precision of xs[i][1] to xs[i][2].

> **Update** (f :: *RngUPolElt_FldPadExact*, app :: *RngUPolElt*[*FldPad*])
{:.intrinsic}

Updates f to app.

> **UpdateZero** (f :: *RngUPolElt_FldPadExact*, aprs :: [*RngIntElt*])
{:.intrinsic}

Updates f to sum_i(O(pi^aprs[i+1])*x^i).

> **Parent** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial ring containing f.

> **IsWeaklyZero** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is weakly zero.

> **IsWeaklyEqual** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f and g are weakly equal.

> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *RngUPol*)
> 
> **ExistsCoveringStructure** (S :: *RngUPol*, R :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol_FldPadExact*, S :: *Str*)
> 
> **ExistsCoveringStructure** (S :: *Str*, R :: *RngUPol_FldPadExact*)
> 
> **ExistsCoveringStructure** (R :: *RngUPol*, S :: *FldPadExact*)
> 
> **ExistsCoveringStructure** (S :: *FldPadExact*, R :: *RngUPol*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a polynomial ring containing both R and S.













> **Degree** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The degree of f.

> **IsEisenstein** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is Eisenstein.

> **WeakLeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading weak coefficient of f.

> **LeadingCoefficient** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The leading coefficient of f.

> **ResidueClassField** (F :: *FldPadExact*)
> 
> -> *FldFin*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The residue class field R of F, the map F to R, and the map from the approximation of F to R.

> **ResidueClass** (x :: *FldPadExactElt*)
> 
> -> *FldFinElt*
> {:.ret}
{:.intrinsic}

The residue class of x.

> **Valuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of x.

> **IsInertial** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if f is inertial (i.e. it is irreducible as a polynomial over the residue class field).

> **Coefficients** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

The coefficients of f.

> **TotallyRamifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension defined by the Eisenstein polynomial f.

> **TotallyRamifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension of F defined by the Eisenstein polynomial f.

> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*, pi)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension of F got by adjoining the nth root of pi, which must be a uniformizing element.

> **TotallyRamifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The totally ramified extension of F got by adjoining the nth root of the uniformizing element of F.

> **IsUniformizingElement** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True iff x is a uniformizing element, i.e. has valuation 1.

> **Extension** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The extension defined by the inertial or Eisenstein polynomial f.

> **Extension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The extension of F defined by the inertial or Eisenstein polynomial f.

> **UnramifiedExtension** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension defined by the inertial polynomial f.

> **UnramifiedExtension** (F :: *FldPadExact*, f)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The unramified extension of F defined by the inertial polynomial f.

> **UnramifiedExtension** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

An unramified extension of F of degree n.

> **BaseRing** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
> 
> **DefiningPolynomial** (K :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The base ring of f.



> **AssignNames** (~F :: *FldPadExact*, names :: [*MonStgElt*])
{:.intrinsic}

Assigns a name to the generator of F.

> **Name** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> **\'.\'** (F :: *FldPadExact*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The ith generator of F.



> **Generator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generating element of F.

> **WeakApproximation** (x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.

> **WeakApproximation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

An element weakly equal to x.

> **Random** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of F of value at least v.

> **RandomInteger** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random integer of F.

> **RandomUnit** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of F of value v.

> **RandomUnit** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
> 
> **ValuationEq** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

A random unit of F.



> **ValuationNe** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x does not have valuation v.

> **ValuationGe** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of x is at least v.

> **ValuationGt** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of x is greater than v.

> **ValuationLe** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of x is at most v.

> **ValuationLt** (x :: *FldPadExactElt*, v)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of x is less than v.

> **Discriminant** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The discriminant of f.

> **\'div\'** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
> 
> **\'div\'** (f :: *RngUPolElt_FldPadExact*, g)
> 
> **\'div\'** (f, g :: *RngUPolElt_FldPadExact*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

f div g.





> **MinValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest valuation of the coefficients of f.

> **IsUnit** (x :: *FldPadExactElt*)
> 
> **IsIntegral** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if x has valuation 0.



> **ShiftValuation** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> **ShiftValuation** (x :: *FldPadExactElt*, n)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Returns x*pi^n.



> **WeakPartialNewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

A fragment of the Newton polygon of f, based on its non weakly zero coefficients.

> **NewtonPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The Newton polygon of f.

> **ShiftArgument** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial f(x+X).

> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **IsHenselLiftable** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **IsHenselLiftable** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True if x is sufficiently close to a root of f to be Hensel-liftable. If so, also returns the root.





> **HenselLift** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **HenselLift** (f :: *RngUPolElt*, x)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Returns the root of f Hensel lifted from x.



> **CanChangeRing** (f :: *RngUPolElt_FldPadExact*, K :: *FldPadExact*)
> 
> **CanChangeRing** (f :: *RngUPolElt*, K :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if f can be coerced to a polynomial over K. If so, also returns the coerced polynomial.



> **ChangeRing** (f, K)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Change the ring of f to K.

> **ShiftValuation** (f :: *RngUPolElt_FldPadExact*, ns)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

f with coefficients shifted by corresponding elements of ns.

> **ShiftSlope** (f :: *RngUPolElt_FldPadExact*, n)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Returns f(x*pi^n)/pi^(n*Pivot) (which increases the slopes of the Newton polygon of f by n, and leaves the Pivot'th coefficient the same).

> **SetData** (x :: *FldPadExactElt*, data)
> 
> **SetData** (f :: *RngUPolElt_FldPadExact*, data)
{:.intrinsic}

Sets the custom data field.



> **GetData** (x :: *FldPadExactElt*)
> 
> **GetData** (f :: *RngUPolElt_FldPadExact*)
> 
> -> Any
> {:.ret}
> 
> **IsIntegral** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

Retrieves the custom data field.





> **Derivative** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The nth derivative of f.

> **Derivative** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The derivative of f.

> **Evaluate** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

f(g).

> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **Evaluate** (f :: *RngUPolElt_FldPadExact*, x)
> 
> **Evaluate** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

f(x).





> **Integers** (F :: *FldPadExact*, v :: *RngIntElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of elements of F of valuation at least v.

> **Integers** (F :: *FldPadExact*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

The ring of integers of F.

> **FieldOfFractions** (F :: *FldPadExact*)
> 
> **FieldOfFractions** (R :: *RngPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The field of fractions.



> **Print** (R :: *RngPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints R.

> **\'eq\'** (R :: *RngPadExact*, S :: *RngPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.

> **IsCoercible** (R :: *RngPadExact*, X)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *FldPadExactElt*)
> 
> **IsCoercible** (R :: *RngPadExact*, X :: *RngPadExactElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible into R and the coerced element.





> **Parent** (x :: *RngPadExactElt*)
> 
> -> *RngPadExact*
> {:.ret}
{:.intrinsic}

Parent of x.

> **Print** (x :: *RngPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print.

> **Random** (R :: *RngPadExact*)
> 
> -> *RngPadExactElt*
> {:.ret}
{:.intrinsic}

A random element of R.

> **Format** (x :: *FldPadExactElt*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of x.

> **Format** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

Returns a string representation of f.

> **Random** (R :: *RngUPol_FldPadExact*, d :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

A random element of R of the given degree.

> **\'/\'** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **\'/\'** (f :: *RngUPolElt*, x :: *FldPadExactElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
> 
> **\'/\'** (f :: *RngUPolElt_FldPadExact*, x)
> 
> -> *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

Division.





> **\'\*\'** (f :: *RngUPolElt_FldPadExact*, x :: *FldPadExactElt*)
> 
> **\'\*\'** (x :: *FldPadExactElt*, f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

Multiplication.



> **Resultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The resultant of f and g.

> **WeakResultant** (f :: *RngUPolElt_FldPadExact*, g :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of f and g.

> **Resultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generalized resultant of fs.

> **WeakResultant** (fs :: [*RngUPolElt_FldPadExact*])
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The weak resultant of fs, i.e. the resultant assuming the weak degree of each f in fs is correct.

> **ValuationEq** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is n.

> **ValuationNe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is not n.

> **ValuationLe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is at most n.

> **ValuationLt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is less than n.

> **ValuationGe** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is at least n.

> **ValuationGt** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if the valuation of f is greater than n.

> **NewtonPolygonFactorization** (f :: *RngUPolElt_FldPadExact*)
> 
> -> [], *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A list of factors of f corresponding to the slopes of the Newton polygon of f.

> **Slice** (f :: *RngUPolElt_FldPadExact*, idxs :: [*RngIntElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients of f.

> **Reverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed coefficients of f: f(1/x)*x^deg(f).

> **WeakReverse** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the reversed weak coefficient of f: f(1/x)*x^weakdeg(f).

> **Decimate** (f :: *RngUPolElt_FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial of the ith coefficients of f where i=Phase mod n.

> **Polynomial** (coeffs :: [*FldPadExactElt*])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial with the given coefficients.

> **Polynomial** (K :: *FldPadExact*, coeffs :: [])
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The polynomial over K with the given coefficients.

> **Coefficient** (x :: *FldPadExactElt*, i :: *RngIntElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

The generator^i coefficient of x in K(generator)/K.

> **Coefficients** (x :: *FldPadExactElt*)
> 
> **Eltseq** (x :: *FldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The coefficients of x in the basis generator^i in K(generator)/K.



> **ExactpAdicField** (xxL :: *FldPad*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given a p-adic field xxL, returns L isomorphic to xxL and a map xxL -> xL.

> **ExactpAdicField** (xxL :: *FldPad*, mK :: *Map*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given an extension xxL/xxK and mK : xxK -> xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xxK and a map xxL -> xL.

> **ExactpAdicField** (xxL :: *FldPad*, xxK :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given xxL/xxK where xxK is coercible to and from xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xxK, and a map xxL -> xL.

> **ExactpAdicField** (xxL :: *FldPad*, K :: *FldPadExact*)
> 
> -> *FldPadExact*, *Map*
> {:.ret}
{:.intrinsic}

Given xxL/xK where xK is the approximation field of K, returns L/K isomorphic to xxL/xK, and a map xL -> xxL.

> **Quotient** (F :: *FldPadExact*, n :: *RngIntElt*)
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

The integers Q of F mod pi^n, and the map F to Q.

> **QuoConstructor** (F :: *FldPadExact*, t)
> 
> -> *RngPadRes*, *Map*
> {:.ret}
{:.intrinsic}

The quotient of F by t.

> **RamificationPolygon** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of the extension defined by f.

> **RamificationPolygon** (F :: *FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of F over its base field.

> **Print** (h :: *HassHerbTransFunc*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints h.

> **Degree** (h :: *HassHerbTransFunc*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The degree of the extension this is the transition function of.

> **Vertices** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The vertices of the function.

> **\'@\'** (v, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

Evaluates h at v.

> **\'@@\'** (u, h :: *HassHerbTransFunc*)
> 
> -> Any
> {:.ret}
{:.intrinsic}

The inverse of h at u.

> **TransitionFunction** (F :: *FldPadExact*)
> 
> **TransitionFunction** (F :: *FldPad*)
> 
> -> *HassHerbTransFunc*
> {:.ret}
{:.intrinsic}

The Hasse-Herbrand transition function of F over its base field.



> **TransitionFunction** (x :: *ExtDataFldPadExact*)
> 
> -> *HassHerbTransFunc*
> {:.ret}
{:.intrinsic}

The Hasse-Herbrand transition function.

> **TransitionFunction** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> **TransitionFunction** (E :: *FldPad*, F :: *FldPad*)
> 
> -> *HassHerbTransFunc*
> {:.ret}
{:.intrinsic}

The Hasse-Herbrand transition function of E/F.



> **\'eq\'** (h1 :: *HassHerbTransFunc*, h2 :: *HassHerbTransFunc*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if h1 and h2 are equal as field invariants, i.e. they define the same function.

> **LowerBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The lower breaks of h.

> **UpperBreaks** (h :: *HassHerbTransFunc*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The upper breaks of h.

> **RamificationPolygon** (h :: *HassHerbTransFunc*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of a totally ramified extension with the given transition function.

> **RamificationPolygon** (x :: *ExtDataFldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon.

> **RamificationPolygon** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *NwtnPgon*
> {:.ret}
{:.intrinsic}

The ramification polygon of E/F.

> **IsDefinitelyPrimitive** (x, X :: *ExtDataFldPadExact*)
> 
> -> *BoolElt*, *RngUPol_FldPadExact*
> {:.ret}
{:.intrinsic}

True if x is a primitive element of X. If so, also returns the minimal polynomial.

> **IsDefinitelyPrimitive** (x, E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if x is primitive for E/F, i.e. E=F(x). If so, also returns the minimal polynomial of x over F.

> **IsDefinitelyPrimitive** (x :: *FldPadExactElt*, F :: *FldPadExact*)
> 
> -> *BoolElt*, *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

True if x in E is primitive for E/F, i.e. E=F(x). If so, also returns the minimal polynomial of x over F.

> **MinimalPolynomial** (x, X :: *ExtDataFldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The minimal polynomial of x in X. Requires that x be primitive for X.

> **MinimalPolynomial** (x :: *FldPadExactElt*, F :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The minimal polynomial of x over F. Requires that x is a primitive element for E/F where E is the field containing x.

> **IsIrreducible** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

True iff f is irreducible. If Proof is true, then also returns an irreducibility certificate, otherwise the result is unproven.

> **ResidualPolynomial** (f :: *RngUPolElt_FldPadExact*, face :: *NwtnPgonFace*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

The residual polynomial of the given face of the Newton polygon of f.

> **ResidualPolynomials** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

The residual polynomials of f.

> **InertiaGenerator** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

An element of F generating the maximal unramified subextension of F over its prime subfield, and its minimal polynomial.

> **PrimitiveElement** (F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A primitive element of F over Qp.

> **PrimitiveElement** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A primitive element for the extension.

> **PrimitiveElement** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

A primitive element of E/F.

> **IndexOfSmallest** (xs :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(xs[i]). If Unique, raises an error if there is no unique smallest.

> **IndexOfClosest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The index i maximizing Valuation(x-ys[i]). If Unique, raises an error if there is no unique closest.

> **Smallest** (xs :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The smallest element of xs, and its index.

> **Closest** (x :: *FldPadExactElt*, ys :: [*FldPadExactElt*])
> 
> -> *FldPadExactElt*, *RngIntElt*
> {:.ret}
{:.intrinsic}

The closest element y of ys to x and its index.

> **Flatten** (x :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Returns a version of x with type COMPOUND and all elements of x`list have type not COMPOUND.

> **IsInStandardForm** (x :: *ExtDataFldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is in standard form.

> **IsInStandardForm** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is in standard form: E is a totally ramified extension of an unramified extension of F.

> **StandardForm** (x :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Returns a standard form of x.

> **StandardForm** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

Returns a standard form version of E/F (that is, a totally ramified extension of an unramified extension of F).

> **DiscriminantValuation** (F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of the discriminant of F over its base field.

> **DiscriminantValuation** (x :: *ExtDataFldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of the discriminant.

> **DiscriminantValuation** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The valuation of the discriminant of E/F.

> **ExactCompletion** (K :: *FldRat*, P :: *RngIntElt*)
> 
> **ExactCompletion** (K :: *FldRat*, P :: *RngInt*)
> 
> **ExactCompletion** (K :: *FldNum*, P :: *RngOrdIdl*)
> 
> **ExactCompletion** (K :: *FldNum*, P :: *PlcNumElt*)
> 
> -> *FldPadExact*, *Map*, *Map*
> {:.ret}
{:.intrinsic}

The completion C of K at P as an exact p-adic field. Also returns the embedding K to C, and the invertible map K to xC (the approximation field for C).







> **DescribeExtension** (X :: *ExtDataFldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

A string describing the extension E/F with F described as FName.

> **DescribeExtension** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *MonStgElt*
> {:.ret}
{:.intrinsic}

A string describing the extension E/F with F described as FName.

> **Print** (x :: *ExtDataFldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints x.

> **TopField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The top field of x.

> **BaseField** (x :: *ExtDataFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of x.

> **IsSquare** (x :: *FldPadExactElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff x is a square. (Strategy is used to determine if x is nonzero.)

> **IsPower** (x :: *FldPadExactElt*, n :: *RngIntElt*)
> 
> -> *BoolElt*, *FldPadExactElt*
> {:.ret}
{:.intrinsic}

True iff x is an nth power. (Strategy is used to determine if x is nonzero.)

> **EltConstructor** (E :: *FldPadExact*, t)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Makes an element of E.

> **Temporary** (F :: *FldPadExact*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The temporary elements of F.

> **Temporary** (x :: *FldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

A temporary representation of x.

> **Parent** (t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExact*
> {:.ret}
{:.intrinsic}

The parent of t.

> **Print** (T :: *TmpFldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Print T.

> **Print** (t :: *TmpFldPadExactElt*, lvl :: *MonStgElt*)
{:.intrinsic}

Print t.

> **Evaluate** (t :: *TmpFldPadExactElt*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Returns a permanent version of t.

> **WeakValuation** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

A lower bound on the valuation of t.

> **AbsolutePrecision** (t :: *TmpFldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

The absolute precision to which a permanent version of t will be made.

> **\'&+\'** (ts :: [*TmpFldPadExactElt*])
> 
> **\'+\'** (s :: *TmpFldPadExactElt*, t :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Addition.



> **BaseField** (T :: *TmpFldPadExactElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

The base field of T.

> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> **ExistsCoveringStructure** (S :: *TmpFldPadExact*, T :: *Str*)
> 
> **ExistsCoveringStructure** (S :: *Str*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if there is a structure containing both S and T.





> **\'eq\'** (S :: *TmpFldPadExact*, T :: *TmpFldPadExact*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

Equality.

> **IsCoercible** (T :: *TmpFldPadExact*, X)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *TmpFldPadExactElt*)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *RngIntElt*)
> 
> **IsCoercible** (T :: *TmpFldPadExact*, X :: *FldRatElt*)
> 
> -> *BoolElt*, Any
> {:.ret}
{:.intrinsic}

True if X is coercible to T, and the coerced element.







> **Eltseq** (x :: *TmpFldPadExactElt*)
> 
> -> []
> {:.ret}
{:.intrinsic}

Eltseq.

> **Coefficient** (x :: *TmpFldPadExactElt*, i :: *RngIntElt*)
> 
> -> *TmpFldPadExactElt*
> {:.ret}
{:.intrinsic}

Eltseq[i].

> **RamificationResidualPolynomials** (f :: *RngUPolElt_FldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The residual polynomials of the ramification polygon of f.

> **RamificationResidualPolynomial** (f :: *RngUPolElt_FldPadExact*, face :: *NwtnPgonFace*)
> 
> -> *RngUPolElt*
> {:.ret}
{:.intrinsic}

The residual polynomial of the given face of the ramification polygon of f.

> **RamificationPolynomial** (L :: *FldPadExact*)
> 
> -> *RngUPolElt_FldPadExact*
> {:.ret}
{:.intrinsic}

The ramification polynomial of L with respect to its defining polynomial.

> **GreveField** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The Greve field of the Eisenstein polynomial f.

> **IsUnramified** (F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is unramified.

> **IsUnramified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is unramified.

> **IsRamified** (F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is ramified.

> **IsRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is ramified.

> **IsTotallyRamified** (F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is totally ramified.

> **IsTotallyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is totally ramified.

> **IsWildlyRamified** (F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is wildly ramified.

> **IsWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is wildly ramified.

> **IsTotallyWildlyRamified** (F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if F is totally wildly ramified.

> **IsTotallyWildlyRamified** (E, F)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True if E/F is totally wildly ramified.

> **\'/\'** (E :: *FldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

The extension E/F.

> **\'/\'** (E :: *FldPadExact*, X :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension E/X.

> **\'/\'** (X :: *ExtDataFldPadExact*, F :: *FldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension X/F.

> **\'/\'** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> *ExtDataFldPadExact*
> {:.ret}
{:.intrinsic}

Extension X1/X2.

> **Print** (h :: *HomFldPadExact*, lvl :: *MonStgElt*)
{:.intrinsic}

Prints h.

> **BaseField** (h :: *HomFldPadExact*)
> 
> **Domain** (h :: *HomFldPadExact*)
> 
> **Codomain** (h :: *HomFldPadExact*)
> 
> -> *FldPadExact*
> {:.ret}
{:.intrinsic}

The base field of h, which is fixed.





> **\'@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the map.

> **IsInvertible** (h :: *HomFldPadExact*)
> 
> -> *BoolElt*, *HomFldPadExact*
> {:.ret}
{:.intrinsic}

True if h has an inverse, and the inverse.

> **Inverse** (h :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The inverse of h.

> **\'@@\'** (x, h :: *HomFldPadExact*)
> 
> -> *FldPadExactElt*
> {:.ret}
{:.intrinsic}

Applies the inverse map.

> **TrivialEmbedding** (X :: *ExtDataFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of BaseField(X) into TopField(X).

> **TrivialEmbedding** (F :: *FldPadExactElt*, E :: *FldPadExactElt*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The trivial embedding of F into E.

> **\'\*\'** (h1 :: *HomFldPadExact*, h2 :: *HomFldPadExact*)
> 
> -> *HomFldPadExact*
> {:.ret}
{:.intrinsic}

The composition x @ (h1 * h2) = x @ h1 @ h2.

> **Embeddings** (X :: *ExtDataFldPadExact*, h :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X) into Codomain(h) extending h:BaseField(X)->Codomain(h).

> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*, h0 :: *HomFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X1) into TopField(X2) extending h0:BaseField(X1)->BaseField(X2).

> **Embeddings** (X1 :: *ExtDataFldPadExact*, X2 :: *ExtDataFldPadExact*)
> 
> -> []
> {:.ret}
{:.intrinsic}

The embeddings of TopField(X1) into TopField(X2) fixing BaseField(X1)=BaseField(X2).

> **SetBaselineValuation** (x :: *FldPadExactElt*, n)
> 
> **SetBaselineValuation** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Sets the baseline valuation.



> **BaselineValuation** (x :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
> 
> **BaselineValuation** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The baseline valuation.



> **BaselinePrecision** (x :: *FldPadExactElt*)
> 
> -> *Val_FldPadElt*
> {:.ret}
{:.intrinsic}

The baseline precision of x: AbsolutePrecision(x) - BaselineValuation(x).

> **BaselinePrecision** (f :: *RngUPolElt_FldPadExact*)
> 
> -> *Val_RngUPolElt_FldPad*
> {:.ret}
{:.intrinsic}

The baseline precision of f: AbsolutePrecision(f) - BaselineValuation(f).

> **IncreaseBaselinePrecision** (x :: *FldPadExactElt*, n)
> 
> **IncreaseBaselinePrecision** (f :: *RngUPolElt_FldPadExact*, n)
{:.intrinsic}

Increases the baseline precision.



> **ValuationCmpValuation_Lazy** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **ValuationCmpValuation** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *RngIntElt*
> {:.ret}
{:.intrinsic}

Respectively <0, 0 or >0 if the valuation of x is less than, equal to or greater than the valuation of y.



> **ValuationGtValuation_Lazy** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *ExactpAdics_Gettr*
> {:.ret}
> 
> **ValuationGtValuation** (x :: *FldPadExactElt*, y :: *FldPadExactElt*)
> 
> -> *BoolElt*
> {:.ret}
{:.intrinsic}

True iff x has greater valuation than y.



