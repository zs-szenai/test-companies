SET @sql = NULL;
SELECT
  GROUP_CONCAT(DISTINCT
    CONCAT(
      'CASE WHEN activity = "',
      activity,
      '" THEN companyName ELSE "" END AS "',
      activity, '"'
    )
  ) INTO @sql 
FROM
  companies;

SET @sql = CONCAT('SELECT ', @sql, ' 
                  FROM companies');

PREPARE stmt FROM @SQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
