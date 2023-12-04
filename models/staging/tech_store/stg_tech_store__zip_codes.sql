with

zip_codes as (

    select * from {{ source('tech_store', 'zip') }}

),

final as (

    select
        id as zip_code_id,
        code as zip_code

    from zip_codes

)

select * from final