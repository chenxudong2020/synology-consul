#!/bin/bash
SVC_SETUP="$(dirname "$0")/tempature.sh"
if [ -r "${SVC_SETUP}" ]; then
	. "${SVC_SETUP}"
fi
