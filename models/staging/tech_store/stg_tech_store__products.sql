with

products as (

    select * from {{ source('tech_store', 'product') }}

),

final as (

    select
        id as product_id,
        name as product_name,
        category,
        price,
        currency

    from products

)

select * from final