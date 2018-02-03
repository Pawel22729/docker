FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 install php7.0 libapache2-mod-php7.0 php libapache2-mod-php php-mcrypt php-mysql wget
RUN cd /tmp/ && wget https://wordpress.org/latest.tar.gz && rm -rf /var/www/html/* && cp -a /tmp/wordpress/* /var/www/html/
RUN chown -R www-data. /var/www/html/*
