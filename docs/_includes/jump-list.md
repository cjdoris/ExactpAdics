{% include prev-next.md %}

{% if page.headings %}
Jump to{% for h in page.headings %} \| [{{h}}](#{{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}