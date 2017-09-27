{%- assign p = site.pages | where: "chapter", page.chapter | sort: "section", "first" | first %}
* Up: [{{p.title}}]({{site.baseurl}}{{p.url}})
{%- assign p = site.pages | where_exp: "p", "p.chapter == page.chapter and p.section < page.section or p.chapter < page.chapter" | sort: "section" | sort: "chapter" | last %}
* Prev:{% if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}
{%- assign p = site.pages | where_exp: "p", "p.chapter == page.chapter and p.section > page.section or p.chapter > page.chapter" | sort: "section" | sort: "chapter" | first %}
* Next:{% if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}