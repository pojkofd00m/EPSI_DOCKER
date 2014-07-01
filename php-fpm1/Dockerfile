FROM debian:wheezy
MAINTAINER fpages26@gmail.com@gmail.com

RUN apt-get update && apt-get install -y nano wget dialog net-tools procps inetutils-telnet vim curl
RUN mkdir /app

RUN apt-get install -y php5-fpm

ADD php.ini /etc/php5/fpm/
ADD php-fpm.conf /etc/php5/fpm/
ADD www.conf /etc/php5/fpm/pool.d/
ADD app /app

EXPOSE 9000
CMD ["/usr/sbin/php5-fpm"]

