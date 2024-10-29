SELECT  orders_id
    ,date_date
    ,ROUND(((margin + shipping_fee) - logcost - ship_cost ),2) AS Operational_margin
    ,quantity
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }}
    Using (orders_id)
