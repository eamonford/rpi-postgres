FROM resin/rpi-raspbian

MAINTAINER Eamon Ford <eamonford@gmail.com>

RUN apt-get update && apt-get install postgresql-9.4
COPY . .
RUN bash allow_remote_connections.sh

ENV DB_NAME database
ENV DB_USER admin
ENV DB_PASS password

ENTRYPOINT ["bash", "start.sh"]
