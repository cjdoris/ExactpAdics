## Contents

{% for h in page.headings %}

* [{{h}}]({{h | downcase | replace: " ", "-"}})

{% endfor %}