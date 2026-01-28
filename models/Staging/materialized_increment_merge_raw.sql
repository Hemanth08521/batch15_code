{ config(
    materialized = 'incremental',
    unique_key = 'id',
    incremental_strategy = 'merge'
) }}

with deduped as (
    select *,
           row_number() over (
               partition by id
               order by id
           ) as rn
    from {{ source('datafeed_shared_schema', 'check_data') }}
)

select *
from deduped
where rn = 1;