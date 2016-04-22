FROM ubuntu:latest
MAINTAINER twitter.com/z0nk0ne 

RUN apt-get update &&  apt-get install -y apache2 libapache2-mod-php5 php5 php5-mysql mysql-server 

RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod rewrite

COPY zend.conf /etc/apache2/sites-available/zend.conf
COPY php.ini /etc/php5/cli/php.ini
COPY startup /startup

RUN a2ensite zend.conf
RUN rm -f /var/www/html/index.html

EXPOSE 80

CMD ["bash", "/startup"]
