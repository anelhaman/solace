#!/bin/bash -x
docker run -d -p 8080:8080 \
-p 55555:55555 \
-p 8008:8008 \
-p 1883:1883 \
-p 8000:8000 \
-p 8443:8443 \
-p 5672:5672 \
-p 9000:9000 \
-p 2222:2222 \
--ulimit core=-1 \
--ulimit nofile=2448:6592 \
--shm-size=1g \
--env system_scaling_maxconnectioncount=100 \
--env system_scaling_maxqueuemessagecount=100  \
--env messagespool_maxspoolusage=1000 \
--env username_admin_globalaccesslevel=admin \
--env username_admin_password=admin \
--name=solace solace/solace-pubsub-standard
