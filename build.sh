#!/bin/sh

PLATFORM="linux"
ARCH="x64"

rm -r convo-anywhere-${PLATFORM}-${ARCH}

nativefier --name convo-anywhere --flash-path /usr/lib/PepperFlash/libpepflashplayer.so --show-menu-bar --disable-dev-tools https://anywhere.convorelay.com/

# Change package name from 'convo-anywhere-nativefier-XXXXXX' to 'ConvoAnywhere'
sed -i -E 's/convo-anywhere-nativefier-.{6}/ConvoAnywhere/' convo-anywhere-${PLATFORM}-${ARCH}/resources/app/package.json
