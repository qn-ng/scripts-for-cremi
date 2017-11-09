#!/bin/bash

INSTALL_DIR="/espace/$USER/maven"

VERSION='3.5.2'
FILENAME="apache-maven-$VERSION-bin.tar.gz"

if [ ! -d "$INSTALL_DIR/bin" ]; then
    mkdir -p $INSTALL_DIR
    wget "http://apache.mirrors.ovh.net/ftp.apache.org/dist/maven/maven-3/$VERSION/binaries/$FILENAME" -O "/tmp/$FILENAME"
    tar xvf "/tmp/$FILENAME" -C $INSTALL_DIR --strip-components 1
fi

if [ ! -d "~/.m2/settings.xml" ]; then
    mkdir -p ~/.m2
    sed -re 's/(<!-- localRepository)/<localRepository>\/tmp\/.m2\/repository<\/localRepository>\n\1/g' "$INSTALL_DIR/conf/settings.xml" > ~/.m2/settings.xml
fi

PATH="$INSTALL_DIR/bin":$PATH
