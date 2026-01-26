{{config(materialized='view')}}

with tb1 as(
    select * from {{source('datafeed_shared_schema','TCS_SALES')}}
)

select * from tb1