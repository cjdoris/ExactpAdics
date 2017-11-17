# Developer notes

## Documentation

To create documentation:

```
magdoc.py -o docs Generics.mag Getter.mag
magdoc.py -o docs ExactpAdics.mag Factorization.mag
magdoc.py -o docs Val_FldPadElt.mag Val_RngUPolElt_FldPad.mag Val_RngMPolElt_FldPad.mag Val_Tup_PadExact.mag
magdoc.py -o docs PrecisionStrategy.mag
magdoc.py -o docs Tuples.mag
magdoc.py -o docs DefaultAssociativeArray.mag State.mag Promotion.mag LowerBound.mag
magdoc.py -o docs MultivariatePolynomials.mag
```

Or in one step:

```
magdoc.py -o docs Generics.mag Getter.mag ExactpAdics.mag Factorization.mag Val_FldPadElt.mag Val_RngUPolElt_FldPad.mag Val_RngMPolElt_FldPad.mag Val_Tup_PadExact.mag PrecisionStrategy.mag Tuples.mag DefaultAssociativeArray.mag State.mag Promotion.mag LowerBound.mag MultivariatePolynomials.mag
```

(It would be nice to have magdoc.py take a configuration file as an arguent, so that we could just do, say, `magdoc.py -c magdoc.json all`.)
