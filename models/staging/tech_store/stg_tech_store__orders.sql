with

orders as (

    select * from {{ source('tech_store', 'orders') }}

),

final as (

    select
        id as order_id,
        productid as product_id,
        quantity,
        userid as employee_id,
        customerid as customer_id,
        datetime as created_at

    from orders

)

select * from final