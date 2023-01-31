with order_by_counts_in_each_hours  as (
  select date_trunc('hour' , created_at)
   , count(order_id) as order_count
  from {{ ref('stg_greenery_orders') }}
  group by 1
)

select 
  avg(order_count)
from order_by_counts_in_each_hours