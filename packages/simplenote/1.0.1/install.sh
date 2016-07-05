#!/bin/bash

cat > "$HOME/.local/share/applications/$APPLICATION-$VERSION.desktop" <<EOF
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=$TITLE
Comment=$DESCRIPTION
Exec=$TARGET/Simplenote
Icon=$TARGET/Simplenote.png
Terminal=false
EOF
