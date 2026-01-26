{{ config(
    materialized='incremental',
    incremental_strategy='append'
) }}

with tb1 as (
    select *
    from {{ source('datafeed_shared_schema', 'TCS_SALES') }}
)

select * from tb1
