select 
    user_value

from {{ ref('User_count') }}
where user_value <= 0 