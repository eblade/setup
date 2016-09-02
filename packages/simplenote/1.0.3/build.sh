#!/bin/bash

DOWNLOAD="https://github.com/Automattic/simplenote-electron/releases/download/v1.0.3/Simplenote-linux-x64.1.0.3.tar.gz"
TARGZ="simplenote.tar.gz"
DIRECTORY="Simplenote-linux-x64"

wget --quiet --output-document="$TARGZ" "$DOWNLOAD"

tar xf "$TARGZ"
rm "$TARGZ"

mv "$DIRECTORY" "$TARGET"
