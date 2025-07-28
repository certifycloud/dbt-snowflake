select 
    o.order_id, 
    c.customer_id, 
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    {{get_date_parts('o.order_date')}}  as date_extract
from dev.orders o
join {{ref('stg_customers')}} c on o.customer_id = c.customer_id 
join dev.products p on o.product_id = p.product_id