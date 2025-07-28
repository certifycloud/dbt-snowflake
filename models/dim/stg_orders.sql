select 
    o.order_id, 
    c.customer_id, 
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
from dev.orders o
join {{ref('stg_customers')}} c on o.customer_id = c.customer_id 
join dev.products p on o.product_id = p.product_id