{% snapshot snaps_TCS_SALES %}

{{config(target_schema='snapshot',
        strategy='timestamp',
         unique_key='CUSTOMER_ID',
         updated_at='LOAD_TS')
}}
select*
from {{source('datafeed_shared_schema','TCS_SALES')}}

{% endsnapshot %}  