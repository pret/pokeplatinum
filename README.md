# Pokémon Platinum PC Port

This is a WIP PC port of Pokemon Platinum based on the [pret](https://github.com/pret/pokeplatinum) decompilation project.

To build: 
* make linux
* (WIN64 TODO)

Alternatively:
* meson setup build
* cd build
* meson configure -Dbuild_target=linux
* meson compile

You can also build a ROM from the same source tree, just run:
* make

Target executable will be in ./build_(platform)/pc directory. win64 is also a supported build target, however it is untested.
ROM will be built in /build directory

