#!/bin/sh

docker run --name agentgateway -it --rm \
	-v .:/home/ubuntu/agentgateway -p 3000:3000 \
	-p 127.0.0.1:15000:15000 -e ADMIN_ADDR=0.0.0.0:15000 \
	agentgateway 

