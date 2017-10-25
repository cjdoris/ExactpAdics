---
---

# Exact p-Adics

This is the user manual for the `ExactpAdics` package for the [Magma computer algebra system](http://magma.maths.usyd.edu.au/magma). The aim of this package is to provide the user with a higher-level interface to computing with p-adics, making it easier to perform everyday computations and coding more complex algorithms.

The rationale for the design of the package and an overview of the internal structure can be found in [this article]().

**If you find this software useful, please cite the above paper in any publications.**

The package is [hosted here on GitHub](https://github.com/cjdoris/ExactpAdics) and can be [downloaded from here](https://github.com/cjdoris/ExactpAdics/releases/latest).

Please direct any bugs, comments or queries to [the GitHub issue tracker](https://github.com/cjdoris/ExactpAdics/issues).

## Contents

{% assign ps = site.pages | sort:"section" | sort:"chapter" %}

{% for p in ps %}
{% if p.chapter > 0 %}
{% if p.section > 0 %}
{% else %}

* [{{p.title}}]({{site.baseurl}}{{p.url}})

{% endif %}
{% endif %}
{% endfor %}
