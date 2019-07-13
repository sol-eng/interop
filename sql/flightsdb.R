con <- DBI::dbConnect(RSQLite::SQLite(), dbname = "sql/flightsdb.sqlite")
dbWriteTable(con, "airlines", nycflights13::airlines)
dbWriteTable(con, "airports", nycflights13::airports)
dbWriteTable(con, "flights", nycflights13::flights)

airlines <- tbl(con, "airlines")
airports <- tbl(con, "airports")
flights  <- tbl(con, "flights")