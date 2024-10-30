SELECT orders_id
    , date_date
    ,ROUND(SUM(revenue),2) AS revenue 
    ,ROUND(SUM(quantity),2) AS quantity
    ,ROUND(SUM(purchase_Cost),2) AS purchase_Cost
    ,ROUND(SUM(margin),2) AS margin
FROM {{ ref('int_sales_margin') }}
Group By orders_id
        ,date_date 
ORDER BY orders_id DESC
