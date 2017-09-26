{% if page.headings %}
JUMP TO{% for h in page.headings %} :: [{{h}}]({{h | downcase | replace: " ", "-"}}){% endfor %}
{% endif %}