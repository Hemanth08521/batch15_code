{% snapshot employee_events_snapshot_timestamp %}

{{config(target_schema='SNAPSHOT',
        strategy='timestamp',
        unique_key='event_id',
        updated_at='created_at')}}

select * from {{source('datafeed_shared_schema','employee_events')}}

{% endsnapshot %}