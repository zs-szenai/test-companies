SET @start_date = '2001-01-01';
select DATEDIFF(NOW(), @start_date) + 1 INTO @diff;
SET @upper_bound = @diff;
SELECT `date`, GROUP_CONCAT(companyName) AS company
FROM (
SELECT DATE_ADD(@start_date, INTERVAL number DAY ) AS `date`
    FROM 
    (SELECT tt.rowid - 1 AS number
  FROM JSON_TABLE(CONCAT('[{}', REPEAT(',{}', @upper_bound - 1), ']'),
                  "$[*]" COLUMNS(rowid FOR ORDINALITY)
       ) AS tt) AS ff) AS dateRange
       
LEFT JOIN companies ON dateRange.`date` = companies.companyFoundationDate
GROUP BY dateRange.`date`