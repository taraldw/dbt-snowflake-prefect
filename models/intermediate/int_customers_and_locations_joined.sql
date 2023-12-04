with

customers as (

    select * from {{ ref('stg_tech_store__customers') }}

),

cities as (

    select * from {{ ref('stg_tech_store__cities') }}

),

states as (

    select * from {{ ref('stg_tech_store__states') }}

),

zip_codes as (

    select * from {{ ref('stg_tech_store__zip_codes') }}

),

customers_and_locations_joined as (

    select
        customers.customer_id,
        cities.city_name,
        states.state_name,
        zip_codes.zip_code

    from customers

    left join cities
        on customers.city_id = cities.city_id

    left join states
        on cities.state_id = states.state_id

    left join zip_codes
        on cities.zip_code_id = zip_codes.zip_code_id

)

select * from customers_and_locations_joined