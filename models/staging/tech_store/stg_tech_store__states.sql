with

states as (

    select * from {{ source('tech_store', 'state') }}

),

final as (

    select
        id as state_id,
        name as state_name,
        code as state_code

    from states

)

select * from final