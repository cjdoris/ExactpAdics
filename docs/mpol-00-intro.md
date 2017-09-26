---
---

# Multivariate polynomials

## Contents

{% for p in site.pages %}
{% if p.url contains "/mpol-" %}
{% unless p.url contains "/mpol-00-" %}

* [{{p.title}}]({{site.baseurl}}{{p.url}})

{% for h in p.headings %}

  * [{{h}}]({{site.baseurl}}{{p.url}}#{{h | replace " ", "-" | downcase}})

{% endfor %}
{% endunless %}
{% endif %}
{% endfor %}