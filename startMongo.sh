#!/bin/bash
sudo docker run --name mongodb -v mongodb:/etc/mongo -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=123456T -p 27017:27017 -it -d  my/mongo