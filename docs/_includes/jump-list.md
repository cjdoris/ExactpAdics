<!-- \[Up: {% assign p = site.pages | where "chapter", page.chapter | sort: "section", "first" | first %}[{{p.title}}]({{site.baseurl}}{{p.url}})\]
\[Next:\]
\[Prev:\] -->

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}