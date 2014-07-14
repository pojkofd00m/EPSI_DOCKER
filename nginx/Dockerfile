FROM debian:wheezy
MAINTAINER m.sebastien.gm@gmail.com

RUN apt-get update && apt-get install -y nano wget dialog net-tools procps inetutils-telnet curl
RUN mkdir /app

RUN apt-get install -y nginx-full
RUN rm -R /etc/nginx/nginx.conf
RUN mkdir -p /app/docs
RUN echo "<h1>!!! Hello World !!!</h1>" > /app/docs/index.html

ADD index.html /app/docs/
ADD nginx.conf /etc/nginx/
ADD php5-fpm.conf /etc/nginx/conf.d/

EXPOSE 80
CMD nginx 