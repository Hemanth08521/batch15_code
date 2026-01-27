{{config(materialized="table")}}

with tb1 as(
    select * from {{source('datafeed_shared_schema','contacts')}} where contact_id<50)


select * from tb1