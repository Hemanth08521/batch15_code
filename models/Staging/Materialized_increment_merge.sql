{{config(materialized='incremental',
        unique_key='id',
        incremental_stratergy='merge')}}

select * from {{source('datafeed_shared_schema','check_data')}} 