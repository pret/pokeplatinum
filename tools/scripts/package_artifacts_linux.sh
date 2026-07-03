#!/bin/bash
BUILDDIR=build_linux/pokeplatinum

cd $BUILDDIR
zip release_linux.zip firmware.bin header.bin main pokeplatinum.AppImage
