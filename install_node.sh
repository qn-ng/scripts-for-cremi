#!/bin/bash

INSTALL_DIR="/espace/$USER/node"
CACHE_DIR="/tmp/.npm"

VERSION='v8.5.0'
FILENAME="node-$VERSION-linux-x64.tar.xz"

if [ ! -d "$INSTALL_DIR/bin" ]; then
    mkdir -p $INSTALL_DIR
    wget "https://nodejs.org/dist/$VERSION/$FILENAME" -O "/tmp/$FILENAME"
    tar xvf "/tmp/$FILENAME" -C $INSTALL_DIR --strip-components 1
fi

PATH="$INSTALL_DIR/bin":$PATH
npm_config_cache="$CACHE_DIR"
