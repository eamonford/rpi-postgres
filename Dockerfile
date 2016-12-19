FROM resin/rpi-raspbian
RUN apt-get update && apt-get install postgresql
COPY pg_hba.conf /etc/postgresql/9.4/main/
COPY start.sh .
EXPOSE 5432
RUN ["bash", "start.sh"]
ENTRYPOINT tail -f /var/log/dmesg
