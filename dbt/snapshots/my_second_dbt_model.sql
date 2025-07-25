{% snapshot my_second_dbt_model_snapshot %}
{{
  config(
    target_schema='snapshots',
    unique_key='id',
    strategy='timestamp',
    updated_at='updated_at'
  )
}}
select * from {{ ref('my_second_dbt_model') }}
{% endsnapshot %}
