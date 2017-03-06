#!/usr/bin/env bash


PORT=1883
WS_PORT=9001
CURR_DIR=`pwd`/mqtt


docker rm -f mqtt

docker run -d -p $PORT:1883 -p $WS_PORT:9001 \
-v $CURR_DIR/config:/mqtt/config:ro \
-v $CURR_DIR/log:/mqtt/log \
-v $CURR_DIR/data/:/mqtt/data/ \
--name mqtt toke/mosquitto
