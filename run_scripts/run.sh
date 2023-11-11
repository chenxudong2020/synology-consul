#!/bin/bash
source /var/packages/unas/var/env.sh
cd /var/packages/unas/target/package/bin
nohup ./tempature.sh >/dev/null 2>&1 &
