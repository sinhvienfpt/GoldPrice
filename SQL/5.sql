--5--What are the 5 days with the highest volatility for both PNJ and SJC?
SELECT TOP 5 type, update_time, rate
FROM (
    SELECT 'PNJ' AS type, update_time, ABS(rate) AS rate FROM tbl_PNJ
    UNION ALL
    SELECT 'SJC' AS type, update_time, ABS(rate) AS rate FROM tbl_SJC
) AS combined
ORDER BY rate DESC;