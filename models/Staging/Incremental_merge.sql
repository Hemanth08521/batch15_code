{{config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='append'
)}}

select * from {{source('datafeed_shared_schema','TCS_SALES')}}