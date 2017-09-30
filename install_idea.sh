#!/bin/bash

INSTALL_DIR="/espace/$USER/idea"
BIN_DIR="$INSTALL_DIR/bin"
VERSION="2017.2.5"
FILENAME="ideaIU-$VERSION.tar.gz"

if [ ! -f "$BIN_DIR/idea.sh" ]; then
	mkdir -p "$INSTALL_DIR"
	wget "https://download.jetbrains.com/idea/$FILENAME" -O "/tmp/$FILENAME"
	tar xvf "/tmp/$FILENAME" -C "$INSTALL_DIR" --strip-component 1
	sed -i -e 's/# idea.system.path=.*/idea.system.path=\/tmp\/.IdeaIU\/system/g' "$BIN_DIR/idea.properties"
	sed -i -e 's/# idea.plugin.path=.*/idea.plugin.path=\/tmp\/.IdeaIU\/config\/plugins/g' "$BIN_DIR/idea.properties"
	sed -i -e 's/# idea.log.path=.*/idea.log.path=\/tmp\/.IdeaIU\/system\/log/g' "$BIN_DIR/idea.properties"
fi
