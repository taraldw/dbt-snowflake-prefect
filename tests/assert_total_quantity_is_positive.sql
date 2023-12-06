select
    customer_id,
    total_quantity

from {{ ref('customers') }}

where total_quantity < 0