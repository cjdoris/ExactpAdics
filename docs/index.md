---
---

# Exact p-Adics

This is the User Manual for the Exact p-Adics package for the [Magma computer algebra system](http://magma.maths.usyd.edu.au/magma). The aim of this package is to provide the user with a higher-level interface to computing with p-adics, making it easier to perform everyday computations and coding more complex algorithms.

The rationale for the design of the package and an overview of the internal structure can be found in [this article](http://arxiv.org/my-article).

The package is [hosted here on GitHub](https://github.com/cjdoris/ExactpAdics) and can be [downloaded from here](https://github.com/cjdoris/ExactpAdics/releases).

Please direct any comments, queries or complaints to [the GitHub issue tracker](https://github.com/cjdoris/ExactpAdics/issues).

## Contents

{% assign ps = site.pages | sort:"page" | sort:"chapter" %}

{% for p in ps %}
{% unless p.page > 0 %}

* [{{p.title}}]({{site.baseurl}}{{p.url}})

{% endunless %}
{% endfor %}