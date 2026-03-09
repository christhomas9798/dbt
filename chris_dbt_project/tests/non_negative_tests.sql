{# select * from {{ source('source', 'fact_sales') }} #}
{{config(severity='warn')}}
select * from {{ ref('bronze_sales') }}
where gross_amount<3 or net_amount<1