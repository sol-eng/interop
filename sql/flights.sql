-- !preview conn=DBI::dbConnect(odbc::odbc(), "SQL Server (finance)")

SELECT education, count(*) as n
FROM bank
WHERE year=2010
GROUP BY education
ORDER BY n
;