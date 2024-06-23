-- find the highest sell price and update time
SELECT update_time,type, sell AS highest_sell
FROM tbl_PNJ
WHERE sell = (SELECT MAX(sell) FROM tbl_PNJ)
UNION
SELECT update_time,type, sell AS highest_sell
FROM tbl_SJC
WHERE sell = (SELECT MAX(sell) FROM tbl_SJC)
