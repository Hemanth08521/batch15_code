{{config(materialized='incremental',
        unique_key='agent_code',
        incremental_strategy='merge')}}

select * from {{source('datafeed_shared_schema','AGENTS')}}