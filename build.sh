#!/bin/bash
set -e

export unas_VERSION="${unas_VERSION:-1.14.4}"
export PACKAGE_VERSION="${unas_VERSION}-1000"
export OS="${OS:-linux}"
export ARCH="${ARCH:-amd64}"

mkdir -p ./package/bin/
chmod +x ./run_scripts/*
\cp -rf ./run_scripts/* ./package/bin/



./info.sh "${PACKAGE_VERSION}" > INFO
tar -cvzf package.tgz package
tar -cvf package.spk PACKAGE_ICON_256.PNG PACKAGE_ICON.PNG INFO LICENSE conf/ package.tgz scripts/pre* scripts/post* scripts/start*
rm package.tgz
mv package.spk "unas_${unas_VERSION}_${OS}_${ARCH}.spk"
