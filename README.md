# DataFellowship8-Datawarehouse
Yuditya Mulia Insani DF8  

# Practice Case Session 3: Data Warehouse
>From this public table `data-to-insights.ecommerce.rev_transactions`. Create an efficient query which
derives the total transactions per date and country based on the channel grouping! (Don’t forget to
clean the data and bonus point if using repeated columns)

## Query
```sql
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
```

## Table View
>https://docs.google.com/spreadsheets/d/1zHlX035AbbjOnNS4JpRN0cKLpjjmih_vF_01pCh7VOo/edit?usp=sharing
