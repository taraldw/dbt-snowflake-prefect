with

transactions as (

    select * from {{ source('payment_app', 'transactions') }}

),

final as (

    select
        id as transaction_id,
        payload,
        payload:amount::numeric(18,2) as amount_in_usd,
        payload:cost_per::numeric(18,2) as cost_per_unit_in_usd,
        payload:order_id::integer as order_id,
        payload:product_id::integer as product_id,
        payload:quantity::integer as quantity, 
        payload:tax::numeric(18,2) as tax_in_usd,
        payload:total_charged::numeric(18,2) as total_charged_in_usd,
        date as created_at

    from transactions

)

select * from final