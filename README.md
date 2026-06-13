# Pokémon Platinum PC Port

This is a WIP PC port of Pokemon Platinum based on the [pret](https://github.com/pret/pokeplatinum) decompilation project.

To build:
* meson setup build
* cd build
* meson configure -Dbuild_target=linux
* meson compile

Target executable will be in ./build/pc directory. win64 is also a supported build target, however it is untested.

