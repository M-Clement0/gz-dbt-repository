SELECT
   extract(month FROM date_date) AS datemonth
    ,SUM(ads_margin) AS ads_margin
    ,ROUND(SUM(average_basket),2) AS average_basket
    ,SUM(operational_margin) AS operational_margin
    ,SUM(ads_cost) AS ads_cost
    ,SUM(ads_impression) AS ads_impression
    ,SUM(ads_click) AS ads_click
    ,SUM(quantity) As quantity
    ,SUM(revenue) AS revenue
    ,SUM(purchase_cost) AS purchase_cost
    ,SUM(margin) AS margin
    ,SUM(shipping_fee) AS shipping_fee
    ,SUM(logcost) AS logcost
    ,SUM(ship_cost) AS ship_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth 
ORDER BY datemonth DESC