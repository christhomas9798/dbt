{% set is_incremental=True%}
{% set lets=3%}

{% set cols= ['sales_id','date_sk','store_sk','product_sk','customer_sk','gross_amount','net_amount','discount_amount']%}

select
{% for col in cols%}
    {{col}}{% if not loop.last %},{% endif %}
{% endfor%}
from {{ref('bronze_sales')}}
{% if is_incremental %}
    where date_sk > {{lets}}
{% endif %}