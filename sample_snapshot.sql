{% snapshot my_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='my_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

select * from {{source('name of source','name of table')}}

{% endsnapshot %}