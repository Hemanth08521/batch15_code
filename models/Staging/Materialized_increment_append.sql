{{config(materialized='incremental',
        incremental_stratergy='append')}}

select * from {{source('datafeed_shared_schema','check_data')}}