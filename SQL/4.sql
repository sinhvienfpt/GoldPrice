 --4-- Calculate the difference between the selling price and the buying price for each type and find the average difference over the entire period.

SELECT type, AVG(sell - buy) AS average_price_difference
FROM (
    SELECT 'PNJ' AS type, sell, buy FROM tbl_PNJ
    UNION ALL
    SELECT 'SJC' AS type, sell, buy FROM tbl_SJC
) AS combined
GROUP BY type;
