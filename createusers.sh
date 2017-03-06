#!/usr/bin/env bash


PORT=1883
WS_PORT=9001
CURR_DIR=`pwd`/mqtt

rm -f $CURR_DIR/config/pwfile
touch $CURR_DIR/config/pwfile


mosquitto_passwd -c $CURR_DIR/config/pwfile helloworlduser
mosquitto_passwd -b $CURR_DIR/config/pwfile test test
mosquitto_passwd -b $CURR_DIR/config/pwfile maslick 12345


docker rm -f mqtt

docker run -d -p $PORT:1883 -p $WS_PORT:9001 \
-v $CURR_DIR/config:/mqtt/config:ro \
-v $CURR_DIR/log:/mqtt/log \
-v $CURR_DIR/data/:/mqtt/data/ \
--name mqtt toke/mosquitto
