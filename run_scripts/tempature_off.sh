#!/bin/bash
cd /var/packages/unas/target/package/bin
/usr/bin/killall tempature.sh 
i2cset -y 0 0x54 0xf0 80
