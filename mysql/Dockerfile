FROM debian:wheezy
MAINTAINER fpages26@gmail.com

RUN apt-get update && apt-get install -y nano wget dialog net-tools procps inetutils-telnet vim curl
RUN mkdir /app

RUN apt-get install -y mysql-server

RUN mkdir -p /app/conf /app/data

ADD mysql.conf /app/conf/
ADD entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /usr

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
