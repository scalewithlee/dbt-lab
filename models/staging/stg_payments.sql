-- Take note of the file naming convention, which allows other models
-- to reference it by 'stg_payments'.
with source as (
    {#-
    Normally there would be a select from the table here, but we are using seeds
    to load our data in this project.
    -#}

    -- raw_payments is a _seed_, not a model
    select * from {{ ref('raw_payments') }}
),

renamed as (
    select
        id as payment_id
        order_id,
        payment_method,

        -- amount is currently stored in cents so we convert it to dollars
        amount / 100 as amount
    from source
)

select * from renamed
