{# select * from dbt_tutorial_dev.source.fact_sales #}

{{config(materialized='table')}}

select * from {{ source('source', 'fact_sales') }}