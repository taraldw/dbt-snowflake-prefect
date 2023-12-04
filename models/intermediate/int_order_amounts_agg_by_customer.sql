with

customers as (

    select * from {{ ref('stg_tech_store__customers') }}

),

orders as (

    select * from {{ ref('orders') }}

),

total_revenue_and_units_by_customer as (

    select 
        customers.customer_id,
        sum(orders.amount_in_usd) as total_revenue_in_usd,
        sum(orders.quantity) as total_quantity
    
    from orders

    left join customers
        on orders.customer_id = customers.customer_id

    group by 1

)

select * from total_revenue_and_units_by_customer