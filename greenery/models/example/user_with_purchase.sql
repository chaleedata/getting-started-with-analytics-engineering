with user_with_purchase as(
select user_id  ,
      case when count(order_id) = 1   then 'Purchase_1'
             when count(order_id) = 2  then 'Purchase_2'
              when count(order_id) >= 3  then 'MorePurchase_3'
              end as  purchase
  from orders
  group by 1 
)

select purchase
    , count(1) as user_count
from user_with_purchase
group by 1