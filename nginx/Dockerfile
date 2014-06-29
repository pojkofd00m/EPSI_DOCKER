FROM debian:wheezy
MAINTAINER m.sebastien.g@gmail.com

RUN apt-get update && apt-get install -y nano wget dialog net-tools procps inetutils-telnet curl
RUN mkdir /app

RUN apt-get install -y nginx-full

RUN rm -v /etc/nginx/nginx.conf
RUN mkdir -p /app/conf /app/docs

ADD index.html /app/docs/
ADD nginx.conf /app/conf/

EXPOSE 80
CMD nginx -c /app/conf/nginx.conf