{% snapshot snapshot_sales_event %}

{{config( target_schema='SNAPSHOT',
        strategy='timestamp',
        unique_key='customer_id',
        updated_at='event_timestamp')}}

select * from {{source('datafeed_shared_schema','sales_events')}}

{% endsnapshot %}