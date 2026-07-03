#!/bin/bash
BUILDDIR=build_win64/pokeplatinum

cd $BUILDDIR
mkdir release_win64
cp firmware.bin release_win64/firmware.bin
cp header.bin release_win64/header.bin
cp main.exe release_win64/main.exe
cp libenet-7.dll release_win64/libenet-7.dll
cp libgcc_s_seh-1.dll release_win64/libgcc_s_seh-1.dll
cp libstdc++-6.dll release_win64/libstdc++-6.dll
cp libwinpthread-1.dll release_win64/libwinpthread-1.dll
cp SDL2.dll release_win64/SDL2.dll
