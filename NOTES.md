# Developer notes

## Documentation

To create documentation:

```
magdoc.py -o docs Val_FldPadElt.mag Val_RngUPolElt_FldPad.mag Val_RngMPolElt_FldPad.mag
magdoc.py -o docs Getter.mag
magdoc.py -o docs PrecisionStrategy.mag
magdoc.py -o docs DefaultAssociativeArray.mag Promotion.mag LowerBound.mag
magdoc.py -o docs MultivariatePolynomials.mag
magdoc.py -o docs ExactpAdics.mag Factorization.mag
```

Or in one step:

```
magdoc.py -o docs Val_FldPadElt.mag Val_RngUPolElt_FldPad.mag Val_RngMPolElt_FldPad.mag Getter.mag PrecisionStrategy.mag DefaultAssociativeArray.mag Promotion.mag LowerBound.mag MultivariatePolynomials.mag ExactpAdics.mag Factorization.mag
```

(It would be nice to have magdoc.py take a configuration file as an arguent, so that we could just do, say, `magdoc.py -c magdoc.json all`.)