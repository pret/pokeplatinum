#!/bin/bash

echo Setting up MSys2 environment!

pacman -S --noconfirm make p7zip git python3 flex bison ninja mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-SDL2 mingw-w64-ucrt-x86_64-nasm mingw-w64-ucrt-x86_64-enet mingw-w64-x86_64-arm-none-eabi-gcc
git config --global core.autocrlf true