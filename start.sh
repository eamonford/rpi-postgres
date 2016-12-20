#!/bin/bash
service postgresql start

sudo -u postgres psql --set=user=${DB_USER} --set=password=${DB_PASS} --file=create_user.sql
sudo -u postgres psql --set=database=${DB_NAME} --file=create_database.sql

# keep this thing running
tail -f /var/log/dmesg
