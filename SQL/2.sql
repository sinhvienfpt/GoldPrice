--find the highest and lowest rate 
SELECT MAX(rate) AS highest_rate, MIN(rate) AS lowest_rate
FROM tbl_PNJ
UNION 
SELECT MAX(rate) AS highest_rate, MIN(rate) AS lowest_rate
FROM tbl_SJC