{%- assign p = site.pages | where: "chapter", page.chapter | sort: "section", "first" | first %}
* Up: [{{p.title}}]({{site.baseurl}}{{p.url}})
{%- assign ps = site.pages | where_exp: "p", "p.chapter == page.chapter" | where_exp: "p", "p.section < page.section" %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter < page.chapter" | concat: ps %}
{%- assign p = ps | sort: "section" | sort: "chapter" | last %}
* Prev:{% if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter == page.chapter" | where_exp: "p", "p.section > page.section" %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter > page.chapter" | concat: ps %}
{%- assign p = ps | sort: "section" | sort: "chapter" | first %}
* Next:{% if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}