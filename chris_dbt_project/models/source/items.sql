{{ config(materialized='table',schema='source') }}

{# with raw_data as (
    select 1 as id, 'Logitech MX Master 3S' as name, 'Electronics' as category, current_timestamp() as updateDate
    union all
    select 2, 'Herman Miller Aeron', 'Furniture', current_timestamp()
    union all
    select 3, 'Apple MacBook Pro M3', 'Electronics', current_timestamp()
    union all
    select 4, 'Steelcase Gesture', 'Furniture', current_timestamp()
)

select * from raw_data #}

with raw_data as (
    select 1 as id, 'Logitech MX Master 3S' as name, 'Electronics' as category, current_timestamp() as updateDate
    union all
    select 2, 'Herman Miller Aeron', 'Furniture', current_timestamp()
    union all
    select 3, 'Apple MacBook Pro M4', 'Electronics', current_timestamp()
    union all
    select 4, 'Steelcase Gesture', 'Furniture', current_timestamp()
)

select * from raw_data