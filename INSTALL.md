# Installation Instructions

This document details the steps necessary to build a copy of Pokémon Platinum
(EN-US) using this repository.

## Table of Contents

- [1. Setting Up Your Development Environment](#1-setting-up-your-development-environment)
  - [Windows Subsystem for Linux](#windows-subsystem-for-linux)
    - [New Installs](#new-installs)
    - [Existing Installs](#existing-installs)
    - [Install Build Dependencies](#install-build-dependencies)
  - [Windows with MSYS2](#windows-with-msys2)
  - [MacOS](#macos)
  - [Linux](#linux)
    - [Ubuntu (and other Debian derivatives)](#ubuntu-and-other-debian-derivatives)
    - [Arch Linux (and derivatives)](#arch-linux-and-derivatives)
    - [Fedora (and derivatives)](#fedora-and-derivatives)
  - [Docker](#docker)
- [2. Downloading the Repository](#2-downloading-the-repository)
- [3. Building the Repository](#3-building-the-repository)
- [4. Debugger Support](#4-debugger-support)
- [Troubleshooting FAQ](#troubleshooting-faq)
  - [My Build is Failing After Merging from Main](#my-build-is-failing-after-merging-from-main)

## 1. Setting Up Your Development Environment

### Windows Subsystem for Linux

> [!IMPORTANT]
> If you intend to store your project on the Windows file system (or do not know
> what that means), then use these instructions, which will guide you through
> installing WSL version 1. If you intend to use WSL version 2, then instead
> follow the instructions for [Linux](#linux).

#### New Installs

Follow these instructions if you do not have an existing install of WSL.

1. Open [Windows PowerShell as Administrator](https://i.imgur.com/QKmVbP9.png).
Paste (Right Click or Shift+Insert) the following command:

    ```powershell
    wsl --install -d Ubuntu
    ```

2. Once the process finishes, you will be prompted to restart your machine.
Accept.

3. After rebooting, reopen PowerShell and run the following command to downgrade
WSL to version 1:

    ```powershell
    wsl --set-version Ubuntu 1
    ```

    WSL version 1 is preferred for most WSL users due to its increased performance
when accessing files in the Windows file system.

4. Open `Ubuntu` from your Start menu.

5. `Ubuntu` will set up its own installation when it runs for the first time. Once
finished, it will ask for a username and password as input.

    > [!NOTE]
    > When typing the password, there will be no visible response; this is normal,
    > and the terminal is still reading your input.

6. Update `Ubuntu`'s package registry:

    ```bash
    sudo apt update && sudo apt upgrade
    ```

7. [`Install build dependencies`](#install-build-dependencies).

#### Existing Installs

Follow these instructions if you have an existing install of WSL, specifically
`Ubuntu`.

Older versions of `Ubuntu` (e.g., `20.04`) ship with an outdated version of
Python, which is not supported. To remedy this, you can upgrade your existing
install to a more recent version of `Ubuntu`:

1. Run the following inside `Ubuntu`:

    ```bash
    sudo apt upgrade && sudo apt full-upgrade
    ```

2. Open PowerShell and run the following commands to restart `Ubuntu`:

    ```powershell
    wsl -t Ubuntu
    wsl -d Ubuntu
    ```

3. Re-open `Ubuntu` and run the following to start a system upgrade:

    ```bash
    sudo do-release-upgrade
    ```

    This process may take a long time.

4. Once `Ubuntu` is done upgrading, update `Ubuntu`'s package registry:

    ```bash
    sudo apt update && sudo apt upgrade
    ```

5. [`Install build dependencies`](#install-build-dependencies).

#### Install Build Dependencies

1. Run the following to install build dependencies from the `Ubuntu` package
registry:

    ```bash
    apt install bison flex g++ gcc-arm-none-eabi git make ninja-build pkg-config python3
    ```

2. [Download the repository](#2-downloading-the-repository).

### Windows with MSYS2

> [!CAUTION]
> `MSYS2 is known to currently produce a non-matching ROM; proceed at your own
> risk, and heavily prefer to build using Windows Subsystem for Linux, if at all
> possible.

If you are unable to run Windows Subsystem for Linux due to performance reasons
or lacking virtualization requirements, then MSYS2 may be an option for you.

1. Download the MSYS2 installer from [the official website](https://www.msys2.org/)
and install it on your system.

2. Once the installation is complete, a terminal should automatically pop up.
To update your package registry, enter the following command:

    ```bash
    pacman -Syu
    ```

    Press 'Y' when prompted to confirm the update. This process may take a few
minutes. Once completed, the terminal will automatically close.

3. Re-open an MSYS terminal (the pink icon) from your Start Menu, then enter
the following commands to install necessary build dependencies:

    ```bash
    echo 'export PATH=${PATH}:/mingw64/bin' >> ~/.bashrc
    source ~/.bashrc
    pacman -S bison flex gcc git make ninja python mingw-w64-x86_64-arm-none-eabi-gcc
    ```

    Press 'Y' when prompted to confirm the installation.

4. [Download the repository](#2-downloading-the-repository).

### MacOS

1. Apple bundles a number of the requisite utilities into Xcode Command Line Tools;
to install these, run:

    ```zsh
    xcode-select --install
    ```

2. Additional packages can be installed using Homebrew; if you do not already have
Homebrew installed, [do so](https://brew.sh/). Once Homebrew is installed, run
the following commands:

    ```zsh
    brew update
    brew install gcc@14 ninja libpng pkg-config arm-none-eabi-gcc
    brew install --cask wine-stable
    ```

3. If your MacOS installation is Monterey (12) or earlier, then you may also need
GNU `coreutils` installed to run the build scripts:

    ```zsh
    brew install coreutils
    ```

4. [Download the repository](#2-downloading-the-repository).

### Linux

> [!NOTE]
> Precise packages to be installed will vary by Linux distribution and
> package registry. A handful of common distributions are listed below for
> convenience.

> [!IMPORTANT]
> This project requires `meson` version `1.5.0` or higher. If the version of
> `meson` provided by your package manager is out of date, then follow
> [these instructions](https://mesonbuild.com/Getting-meson.html) to get the
> most recent version.

Once you have installed all the above dependencies, proceed to [downloading
the repository](#2-downloading-the-repository).

#### Ubuntu (and other Debian derivatives)

1. Install `wine`:

    ```bash
    sudo dpkg --add-architecture i386
    sudo mkdir -pm755 /etc/apt/keyrings
    sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/$(lsb_release -cs)/winehq-$(lsb_release -cs).sources
    sudo apt update
    sudo apt install --install-recommends wine-stable
    ```

2. Install the following packages via `apt`:

```bash
sudo apt install bison flex g++ gcc-arm-none-eabi git make ninja-build pkg-config python3
```

#### Arch Linux (and derivatives)

Enable the [multilib repository](https://wiki.archlinux.org/title/Multilib).

Install dependencies via `pacman`:

```bash
sudo pacman -S arm-none-eabi-gcc bison flex gcc git make ninja python wine
```

#### Fedora (and derivatives)

```bash
sudo dnf install arm-none-eabi-gcc-cs bison flex gcc-c++ git make ninja-build python3 wine-core.i686 wine-core.x86_64
```

### Docker

> [!CAUTION]
> The Docker build method is currently unmaintained and unsupported. Proceed at
> your own risk, and know that you may not receive much support from repository
> maintainers.

A `Dockerfile` is provided with the repository should you choose to build the
project as a container. If you do not have `docker` installed on your machine
and wish to make use of this feature, follow the instructions [here](https://docs.docker.com/desktop/).

Once `docker` is installed, to the build environment, run:

```bash
make clean # only if you have an existing development environment
docker build . -t pret/pokeplatinum
```

Then, run the following to build the ROM:

```bash
docker run -u $USER -w /rom -v .:/rom pret/pokeplatinum make
```

If you wish to stop using the `docker` build feature and switch back to a native
build environment, then run the following:

```bash
docker run -u $USER -w /rom -v .:/rom pret/pokeplatinum make clean
```

## 2. Downloading the Repository

From your terminal, navigate to the path in which you will store the repository.
Users of WSL 1 should ensure that their target is on the Windows file drive.

```bash
git clone https://github.com/pret/pokeplatinum
cd pokeplatinum
```

## 3. Building the Repository

To build the ROM, run:

```bash
make
```

If everything works, then the following ROM should be built:

- [build/pokeplatinum.us.nds](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`

If you need further assistance, feel free to ask a question in the `#pokeplatinum`
channel of the `pret` Discord (see `README.md` for contact information) or [open
an issue](https://github.com/pret/pokeplatinum/issues/new).

## 4. Debugger Support

This step is optional, but useful. `pokeplatinum` ships with support for GDB
debugging and a target to build a debug-enabled ROM:

```bash
make debug
```

For convenience, a template `launch.json` configuration for VS Code is provided
in the `.vscode` folder of the repository.

Due to the nature of the Nintendo DS, use of standard builds of GDB for debugging
is insufficient. A fork of `binutils-gdb` which supports the overlay system
employed by the console is available [here](https://github.com/joshua-smith-12/binutils-gdb-nds).

For installation instructions, refer to [the `README.md`](https://github.com/joshua-smith-12/binutils-gdb-nds/blob/master/README.md).

## Troubleshooting FAQ

### My Build is Failing After Merging from Main

It is likely that your subprojects are out of date; update them with the following
command:

```bash
make update
```

And then try rebuilding.

### Meson Replies With `ERROR: Unknown compiler(s)`

Example error message:

```
meson.build:1:0: ERROR: Unknown compiler(s): [['/mnt/c/pokeplatinum/tools/cw/mwrap', 'mwccarm']]
```

Meson provides some basic logging for its configuration process in
`build/meson-logs/meson-log.txt`. In that file, you should see some entries that
begin with `Detecting compiler via: ...`, which will give some insight into the
root of the error. For example:

```
Detecting compiler via: `/mnt/c/pokeplatinum/tools/cw/mwrap mwccarm --version` -> 1
stderr:
wine: '/home/<USER>/.wine' is a 64-bit installation, it cannot be used with a 32-bit wineserver.
-----------

meson.build:1:0: ERROR: Unknown compiler(s): [['/mnt/c/pokeplatinum/tools/cw/mwrap', 'mwccarm']]
```

In this instance, the user has installed 64-bit `wine`. Ensure that you have
installed 32-bit `wine`, then rebuild _after_ removing the prefix directory
using the following command:

```
rm -rf ~/.wine
```
