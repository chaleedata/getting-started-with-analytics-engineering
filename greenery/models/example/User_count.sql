--select count(distinct user_id) from public.users
select count(distinct user_id) as user_value
 from {{ source('greenery' , 'users') }}