#!/bin/sh

APPNAME="tempature"

owpid="$(ps -ef | grep ${APPNAME} | grep -v 'grep' | awk '{print $2}')"
    if [ -z "${owpid}" ]; then
        /var/packages/${SYNOPKG_PKGNAME}/target/package/bin/run.sh
    fi
exit 0    