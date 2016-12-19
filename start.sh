service postgresql start
sleep 10
su postgres
psql -c "CREATE USER eamon WITH PASSWORD 'test'"
psql -c "CREATE DATABASE testdb"
