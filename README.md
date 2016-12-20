rpi-postgres
============

Postgres container that accepts remote connections by default.
You may also specify a default user and database to be created upon initialization, by setting
the following environment variables:

DB_USER  
DB_PASS  
DB_NAME  

If you do not set these environment variables, they will default to 'admin', 'password', and 'database', respectively.

To use:
-----
`docker run -d -e DB_NAME=db -e DB_USER=admin -e DB_PASS=password eamonford/rpi-postgres`
