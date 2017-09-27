{% assign p = site.pages | where: "chapter", page.chapter | sort: "section", "first" | first %}
\[Up: [{{p.title}}]({{site.baseurl}}{{p.url}})\]

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}