with payments as (
    select * from {{ ref('stg_payments') }}
),

final as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by 1
)

select * from final