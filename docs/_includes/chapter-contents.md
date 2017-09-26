
{% assign ps = site.pages | where: "chapter", page.chapter | sort: "section" %}
{% for p in ps %}
{% if p.section > 0 %}

* **[{{p.title}}]({{site.baseurl}}{{p.url}})**

{% for h in p.headings %}

  * [{{h}}]({{site.baseurl}}{{p.url}}#{{h | downcase | replace: " ", "-"}})

{% endfor %}
{% endif %}
{% endfor %}