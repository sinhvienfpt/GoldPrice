--6-- What is the trend in purchase prices over time for each category? Are they increasing, decreasing or stable?
-- Trend of PNJ
SELECT update_time, buy, 
       LAG(buy, 1) OVER (ORDER BY update_time) AS previous_buy,
       CASE 
           WHEN buy > LAG(buy, 1) OVER (ORDER BY update_time) THEN 'Increasing'
           WHEN buy < LAG(buy, 1) OVER (ORDER BY update_time) THEN 'Decreasing'
           ELSE 'Stable'
       END AS trend
FROM tbl_PNJ;

-- Trend of SJC
SELECT update_time, buy, 
       LAG(buy, 1) OVER (ORDER BY update_time) AS previous_buy,
       CASE 
           WHEN buy > LAG(buy, 1) OVER (ORDER BY update_time) THEN 'Increasing'
           WHEN buy < LAG(buy, 1) OVER (ORDER BY update_time) THEN 'Decreasing'
           ELSE 'Stable'
       END AS trend
FROM tbl_SJC;