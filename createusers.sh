#!/usr/bin/env bash


CURR_DIR=`pwd`/mqtt

rm -f $CURR_DIR/config/pwfile
touch $CURR_DIR/config/pwfile


mosquitto_passwd -c $CURR_DIR/config/pwfile helloworlduser
mosquitto_passwd -b $CURR_DIR/config/pwfile test test
mosquitto_passwd -b $CURR_DIR/config/pwfile maslick 12345

