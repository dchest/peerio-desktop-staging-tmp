#!/bin/bash

set -e

BASE_DIR=$(dirname "$0")

# Icon hue degree.
# from original peerio colors:
# 160 - pink
# 60 - bright green
# 10 - orange
# 0 - red
HUE=160

# Change hue
# See https://www.imagemagick.org/Usage/color_mods/#modulate
for dir in $BASE_DIR/original/*; do
    for f in $dir/*.png; do
            mkdir -p $BASE_DIR/mod/$(basename "$dir") || true
            convert $f -modulate 100,100,$HUE $BASE_DIR/mod/$(basename "$dir")/$(basename "$f")
    done
done

ICONS_DIR=$BASE_DIR/mod
OUT_DIR=$BASE_DIR/../file-overrides

# Mac
iconutil --convert icns --output $OUT_DIR/dist-assets/icon.icns $ICONS_DIR/icon.iconset
iconutil --convert icns --output $OUT_DIR/dist-assets/dmg-icon.icns $ICONS_DIR/dmg-icon.iconset

# Windows
convert \
    $ICONS_DIR/win-icon/icon_256x256.png \
    $ICONS_DIR/win-icon/icon_64x64.png \
    $ICONS_DIR/win-icon/icon_48x48.png \
    $ICONS_DIR/win-icon/icon_32x32.png \
    $ICONS_DIR/win-icon/icon_16x16.png \
    $OUT_DIR/dist-assets/icon.ico

convert \
    $ICONS_DIR/win-installer/icon_256x256.png \
    $ICONS_DIR/win-installer/icon_64x64.png \
    $ICONS_DIR/win-installer/icon_48x48.png \
    $ICONS_DIR/win-installer/icon_32x32.png \
    $ICONS_DIR/win-installer/icon_16x16.png \
    $OUT_DIR/dist-assets/win-installer.ico

# Linux window icon
cp $ICONS_DIR/icon.iconset/icon_512x512@2x.png $OUT_DIR/src/static/img/icon.png
