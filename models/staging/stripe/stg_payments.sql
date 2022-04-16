select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount / 100 as amount, -- amount is in cents
    created as created_at

from {{ source('stripe', 'payment') }}
