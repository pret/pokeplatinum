#!/bin/bash
BUILDDIR=build_win64/pokeplatinum

cd $BUILDDIR
zip release_win64.zip firmware.bin header.bin main.exe libenet-7.dll libgcc_s_seh-1.dll libstdc++-6.dll libwinpthread-1.dll SDL2.dll
