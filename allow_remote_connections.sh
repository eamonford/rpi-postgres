#!/bin/bash
sed -i 's/host    all             all             127.0.0.1\/32            md5/host    all             all             172.17.0.1\/16            md5/g' /etc/postgresql/9.4/main/pg_hba.conf
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /etc/postgresql/9.4/main/postgresql.conf
