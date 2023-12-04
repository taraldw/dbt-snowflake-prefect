with

cities as (

    select * from {{ source('tech_store', 'city') }}

),

final as (

    select
        id as city_id,
        name as city_name,
        stateid as state_id,
        zipid as zip_code_id

    from cities


)

select * from final