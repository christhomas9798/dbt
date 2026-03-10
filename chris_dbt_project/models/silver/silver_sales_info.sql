{{config(
    materialized='view'
)}}

with sales as (
    select
        sales_id,
        date_sk,
        store_sk,
        product_sk,
        customer_sk,{{multiply('unit_price','quantity')}} as calculated_gross_amount,
        gross_amount,
        net_amount,
        discount_amount
    from {{ref('bronze_sales')}}
),
bronze_product as (
    select
        product_sk,
        product_name,
        category
    from {{ref('bronze_product')}}
),
customer as (
    select
     
        customer_sk,gender,first_name,last_name from {{ref('bronze_customer')}}
)
select s.sales_id,
s.date_sk,
s.store_sk,
s.product_sk,
s.customer_sk,s.calculated_gross_amount,
s.gross_amount,
s.net_amount,
s.discount_amount,
bp.product_name,
bp.category,
c.first_name|| ' ' || c.last_name as customer_name
from sales s
left join bronze_product bp on s.product_sk=bp.product_sk
left join customer c on s.customer_sk=c.customer_sk
