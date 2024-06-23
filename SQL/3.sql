-- find the highest rate and update time
    SELECT update_time, type, rate AS highest_rate
    FROM tbl_PNJ
    WHERE rate = (SELECT MAX(rate)
    FROM tbl_PNJ)
UNION
    SELECT update_time, type, rate AS highest_rate
    FROM tbl_SJC
    WHERE rate = (SELECT MAX(rate)
    FROM tbl_SJC)
