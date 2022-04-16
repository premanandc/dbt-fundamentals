with customers as (
    select * from {{ ref('dim_customers')}}
)

select customer_id
from customers
where number_of_orders < 0