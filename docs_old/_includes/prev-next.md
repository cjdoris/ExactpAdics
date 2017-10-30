* Up:
{%- if page.chapter > 0 and page.section > 0 %}
{%- assign p = site.pages | where: "chapter", page.chapter | sort: "section", "first" | first %}
{%- if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}
{%- else %} [Home]({{site.baseurl}})
{%- endif %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter == page.chapter" | where_exp: "p", "p.section < page.section" %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter < page.chapter" | concat: ps %}
{%- assign p = ps | sort: "section" | sort: "chapter" | last %}
* Prev:
{%- if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter == page.chapter" | where_exp: "p", "p.section > page.section" %}
{%- assign ps = site.pages | where_exp: "p", "p.chapter > page.chapter" | concat: ps %}
{%- assign p = ps | sort: "section" | sort: "chapter" | first %}
* Next:
{%- if p %} [{{p.title}}]({{site.baseurl}}{{p.url}}){% endif %}