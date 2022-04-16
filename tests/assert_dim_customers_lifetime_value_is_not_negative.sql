with customers as (
    select * from {{ ref('dim_customers')}}
)

select customer_id
from customers
where lifetime_value < 0