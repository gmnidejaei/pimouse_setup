#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep l
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
