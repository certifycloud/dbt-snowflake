with stg_customers as (
    select 
        customer_id,
        CONCAT(first_name , ' ',last_name) as customer_name,
        email as email_address,
        address as billing_address
        from dev.customer
)

select * from stg_customers