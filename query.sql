SELECT 
  channelGrouping,
  date,
  ARRAY_AGG(
    STRUCT(geoNetwork_country, totals_totalTransactionRevenue)
  ) as repeated,
  SUM(totals_totalTransactionRevenue) as totalrevenue
FROM `data-to-insights.ecommerce.rev_transactions`
GROUP BY date, channelGrouping
ORDER BY date DESC
