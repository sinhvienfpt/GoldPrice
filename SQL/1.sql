-- Average buy and sell price of PNJ and SJC
SELECT MAX(buy) AS avg_buy, MAX(sell) AS avg_sell
FROM dbo.tbl_PNJ
UNION
SELECT MIN(buy) AS avg_buy, MIN(sell) AS avg_sell
FROM dbo.tbl_SJC