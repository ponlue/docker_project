#!/bin/bash

sudo docker container stop $(sudo docker container ps -a -q)
sudo docker container rm $(sudo docker container ps -a -q)
sudo docker image rm $(sudo docker images -q) -f
