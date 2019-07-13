-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), dbname = "sql/flights.sqlite")

SELECT carrier, day, avg(arr_delay) as arr_delay, avg(dep_delay) as dep_delay
FROM flights
WHERE carrier in ('AA', 'UA') and month = 12
GROUP BY carrier, day
