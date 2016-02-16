FROM ubuntu:14.04

MAINTAINER twitter.com/z0nk0ne

RUN apt-get update && apt-get -y install apache2 php5-mysql libapache2-mod-php5 php5-gd php5-cli git wget unzip
# mysql-server

# Install composer
RUN wget https://getcomposer.org/installer
RUN chmod a+x installer
RUN php installer
RUN mv composer.phar /usr/local/bin/composer
RUN export PATH="$HOME/.composer/vendor/bin:$PATH"
RUN touch ~/.bash_profile

EXPOSE 80
EXPOSE 3306

ADD 000-default.conf /etc/apache2/sites-available/000-default.conf
# Add the composer install script for Drupal
ADD install_drupal drupal/install_drupal

CMD ["bin/bash","drupal/install_drupal"]


