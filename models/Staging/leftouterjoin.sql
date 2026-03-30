{{config(materialized='table')}}

select a.id as pr_id,
a.product,b.* 
from {{source('datafeed_shared_schema','samp1')}} a 
left join {{source('datafeed_shared_schema','samp2')}} b on a.id=b.id