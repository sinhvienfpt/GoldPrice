-- find the lowest rate and update time
    SELECT update_time, type, rate AS highest_rate
    FROM tbl_PNJ
    WHERE rate = (SELECT MIN(rate)
    FROM tbl_PNJ)
UNION
    SELECT update_time, type, rate AS highest_rate
    FROM tbl_SJC
    WHERE rate = (SELECT MIN(rate)
    FROM tbl_SJC)
