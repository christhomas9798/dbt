{%-set names=['Christopher Thomas', 'randy Jane Doe','Randy','Randy Orton']-%}

hi
{{- names[0] }}

{% for i in names%}
    {% if not i.lower().startswith('Randy'.lower()) %}
    {{- i -}}
    {% endif%}
{% endfor %}