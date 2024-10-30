SELECT
    Cast(date_date AS date) AS date_date 
    ,ROUND((operational_margin - ads_cost),2) AS ads_margin
    ,average_basket
    ,operational_margin
    ,c.ads_cost
    ,c.ads_impression
    ,c.ads_click
    ,f.quantity
    ,f.revenue
    ,f.purchase_cost
    ,f.margin
    ,f.shipping_fee
    ,f.logcost
    ,f.ship_cost
FROM {{ ref('int_campaigns_day') }} c
LEFT JOIN {{ ref('finance_days') }} f
    Using(date_date)
ORDER BY date_date DESC