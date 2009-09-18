require 'dbi'

# make an ODBC connection
conn = DBI.connect('DBI:ODBC:IHQMANAGER_D5723QA','PEBR72','<password here>')

# returns a list of the table names from your database
conn.tables

# returns an array with the resultset from your query
rs = conn.select_all('SELECT * FROM TABLE')