#!/bin/bash
sudo docker start mysql
sudo docker run --name phpmyadmin -d -e MYSQL_ROOT_PASSWORD=123456T --link mysql:db -p 8080:80 phpmyadmin