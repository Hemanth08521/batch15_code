{{config(materilaized='view')}}

select  * from {{source('datafeed_shared_schema','check_data')}}