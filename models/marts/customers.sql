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

employees as (

    select * from {{ ref('stg_tech_store__employees') }}

),

final as (

    select
        customers.customer_id,
        customers.customer_name,
        cities.city_name,
        states.state_name,
        zip_codes.zip_code,
        employees.full_name as main_employee,
        customers.created_at,
        customers.updated_at,
        customers.is_active

    from customers

    left join cities
        on customers.city_id = cities.city_id

    left join states
        on cities.state_id = states.state_id

    left join zip_codes
        on cities.zip_code_id = zip_codes.zip_code_id

    left join employees
        on customers.main_employee_id = employees.employee_id
)

select * from final