---
---

# Exact p-adic fields

## Contents

{% for p in site.pages %}
{% if p.url contains "/pad-" %}
{% unless p.url contains "/pad-00-" %}

* [{{p.title}}]({{site.baseurl}}{{p.url}})

{% for h in p.headings %}

  * [{{h}}]({{site.baseurl}}{{p.url}}#{{h | replace " ", "-" | downcase}})

{% endfor %}
{% endunless %}
{% endif %}
{% endfor %}