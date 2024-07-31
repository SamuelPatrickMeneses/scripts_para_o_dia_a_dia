#!/bin/bash
sudo mkdir /var/www/html
chmod -R 777 /var/www/html
sudo docker run -it --name php -p 80:80 --link mysql:db -v /var/www/var:/var/www/html -d php:apache
