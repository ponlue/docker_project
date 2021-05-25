#!/bin/bash

sudo docker build . -t="web-server"
sudo docker run -dt --name web -p 1111:80 web-server
sudo docker exec -it web /bin/bash
