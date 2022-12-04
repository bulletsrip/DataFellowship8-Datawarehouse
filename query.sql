--Practice Case 3 : Data Warehouse

SELECT 
  channelGrouping as channel,
  date,
  ARRAY_AGG(
    STRUCT(geoNetwork_country as country, totals_totalTransactionRevenue as transaction_amount)
  ) as c,
  SUM(totals_totalTransactionRevenue) as totalrevenue
FROM `data-to-insights.ecommerce.rev_transactions`
GROUP BY date, channelGrouping
ORDER BY date DESC