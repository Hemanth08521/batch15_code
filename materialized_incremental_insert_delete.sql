{{config(materialized='incremental',
        unique_key='id',
        incremental_stratergy='insert_overwrite')}}

select * from {{source('datafeed_shared_schema','check_data')}}