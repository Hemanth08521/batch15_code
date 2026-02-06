{{ config(
    materialized = 'incremental',
    unique_key = 'id',
    incremental_strategy = 'merge'
) }}

with deduped as (
    select *,
           row_number() over (
               partition by id
               order by created_at desc
           ) as rn
    from {{ source('datafeed_shared_schema', 'check_data') }}

    {% if is_incremental() %}
        where created_at > (select max(created_at) from {{ this }})
    {% endif %}
)

select *
from deduped
where rn = 1;