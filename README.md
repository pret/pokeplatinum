# Pokémon Platinum PC Port

This is a WIP PC port of Pokemon Platinum based on the [pret](https://github.com/pret/pokeplatinum) decompilation project.

Currently it is possible to reach the first gym. It might be possible to get farther than that, however it has not been tested.

## Building on Linux
### Dockerized build (Recommended)
This only requires Docker to be installed and setup on your system. The drun.sh script is used to build the docker image and run build commands in it. Build with:
* ./drun.sh make linux

The container image will automatically be built the first time this script is run.

### Non-container build
Required Packages (arch linux):
* nasm
* enet
* arm-none-eabi-gcc (required by the base pret project)
* ninja
* flex
* bison

To build: 
* make linux

Alternatively:
* meson setup build
* cd build
* meson configure -Dbuild_target=linux
* meson compile

You can also build a ROM from the same source tree, just run:
* make

## Building on Windows
From a freshly cloned repo, run the "Install_MSys2.ps1" script in powershell. This will create a portable MSys2 build environment with all dependencies installed in the repo. This only has to be done once per repo.

To build, run "Launch_MSys2.ps1" and it will launch a MSys2 bash shell. From here, run "make win64" to build.

## NX Build Target (EXPERIMENTAL)
This build target requires DevKitA64.
* ./drun.sh make nx

## Notes

Target executable will be in ./build_(platform)/pokeplatinum.us directory. win64 is also a supported build target, however it is untested.
ROM will be built in /build directory

You can update your SDKs using "meson subprojects update"

