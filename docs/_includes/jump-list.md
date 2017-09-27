{%- assign p = site.pages | where: "chapter", page.chapter | sort: "section", "first" | first -%}
| Up: [{{p.title}}]({{site.baseurl}}{{p.url}}) |
{%- assign p = site.pages | where: "chapter", page.chapter | where_exp: "p", "p.section < page.section" | sort: "section", "first" | last -%}
{%- if p -%}
Prev: [{{p.title}}]({{site.baseurl}}{{p.url}}) |
{%- endif -%}
{%- assign p = site.pages | where: "chapter", page.chapter | where_exp: "p", "p.section > page.section" | sort: "section", "last" | first -%}
{%- if p -%}
Next: [{{p.title}}]({{site.baseurl}}{{p.url}}) |
{%- endif -%}

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}