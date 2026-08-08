# Pokémon Platinum PC Port

This is an experimental PC port of Pokemon Platinum based on the [pret](https://github.com/pret/pokeplatinum) decompilation project. It is powered by the [libntr](https://github.com/cybervisi0n/libntr) suite, a collection of libraries that replace the NitroSDK to allow for easy porting of Nintendo DS games.

Join us on [Discord](https://discord.gg/ZgtPszuBeN)

It should be possible to play the game from start to finish, but there could be crashes and graphical bugs. 

Project goals:
* Create a native port of pokeplatinum for 64-bit PC platforms
* * Long term: Create native ports for homebrew on various game consoles
* Facilitate modding by allowing both a PC port and DS ROM to be compiled and debugged from the same source tree
* Support all WiFi and multiplayer features

## Running pre-built binaries
You MUST dump and extract your own ROM to use pre-built binaries. The ROM filesystem must be extracted to the same directory as the executable file.

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

## NX Build Target (working, but poor performance)
This build target requires DevKitA64, this is already installed in the build container.
* ./drun.sh make nx

## Notes
Target executable will be in ./build_(platform)/pokeplatinum directory.
ROM will be built in /build directory

firmware.bin does not contain any real DS firmware, it only contains an offset address and enough space to keep the WiFi config.

You can update your SDKs using "meson subprojects update"

### Tracy Profiling
To enable, run ./meson.sh configure -Dtracy_enable=true {build_folder} from the repo root. This works on Win64, Linux, and NX build targets.

