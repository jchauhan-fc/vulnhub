# Wait to be sure that SQL Server came up
sleep 50s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P AdminPwd_1234 -d master -i create-database.sql

sleep 10s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P AdminPwd_1234 -d master -i fill-database.sql
