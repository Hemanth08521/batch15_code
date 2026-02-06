{% snapshot snap_sales_event %}

{{config(stratergy='timestamp',
        target_schema='SNAPSHOT',
        unique_key='customer_id',
        updated_at='event_timestamp')}}

select * from {{source('datafeed_shared_schema','sales_event'}}

{% endsnapshot %}