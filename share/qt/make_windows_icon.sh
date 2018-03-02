#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/knotcoin.png
ICON_DST=../../src/qt/res/icons/knotcoin.ico
convert ${ICON_SRC} -resize 16x16 knotcoin-16.png
convert ${ICON_SRC} -resize 32x32 knotcoin-32.png
convert ${ICON_SRC} -resize 48x48 knotcoin-48.png
convert knotcoin-16.png knotcoin-32.png knotcoin-48.png ${ICON_DST}

