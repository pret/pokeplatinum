# Installation Instructions

<!--toc:start-->
- [Installation Instructions](#installation-instructions)
  - [0. Preliminaries](#0-preliminaries)
  - [1. Setting Up Your Development Environment](#1-setting-up-your-development-environment)
    - [Windows with MSYS2](#windows-with-msys2)
    - [Windows Subsystem for Linux](#windows-subsystem-for-linux)
      - [New Installs](#new-installs)
      - [Existing Installs](#existing-installs)
      - [Install Build Dependencies](#install-build-dependencies)
    - [MacOS](#macos)
    - [Linux](#linux)
      - [Ubuntu (and other Debian derivatives)](#ubuntu-and-other-debian-derivatives)
      - [Arch Linux (and derivatives)](#arch-linux-and-derivatives)
      - [Fedora (and derivatives)](#fedora-and-derivatives)
    - [Docker](#docker)
  - [2. Downloading the Repository](#2-downloading-the-repository)
  - [3. Specifying a Compiler License](#3-specifying-a-compiler-license)
    - [Windows (including WSL 1)](#windows-including-wsl-1)
    - [Unix Systems](#unix-systems)
  - [4. Building the Repository](#4-building-the-repository)
  - [5. Debugger Support](#5-debugger-support)
  - [Troubleshooting FAQ](#troubleshooting-faq)
    - [My Build is Failing After Merging from Main](#my-build-is-failing-after-merging-from-main)
<!--toc:end-->

This document details the steps necessary to build a copy of Pokémon Platinum
(EN-US) using this repository.

## 0. Preliminaries

## 1. Setting Up Your Development Environment

### Windows with MSYS2

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
    pacman -S git meson gcc flex bison mingw-w64-x86_64-arm-none-eabi-{binutils,gcc}
    ```

    Press 'Y' when prompted to confirm the installation.

4. [Download the repository](#2-downloading-the-repository).

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
    sudo apt install git flex bison build-essential binutils-arm-none-eabi gcc-arm-none-eabi ninja-build
    ```

2. Run the following to install additional dependencies via `pip`:

    ```bash
    sudo apt install pip
    pip install --user meson
    ```

    You may see `pip` respond with a warning saying `"The script meson is
installed in '/home/<YOUR_USER>/.local/bin', which is not on PATH.` To resolve
this issue, run the following commands, filling `<path/to/install/directory>`
with the path reported by `pip` above:

    ```bash
    echo 'export PATH="<path/to/install/directory>:$PATH"' >> ~/.bashrc
    source ~/.bashrc
    ```

3. [Download the repository](#2-downloading-the-repository).

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
    brew install gcc@14 meson libpng pkg-config arm-none-eabi-binutils arm-none-eabi-gcc
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
>
> [!IMPORTANT]
> This project requires `meson` version `1.3.0` or higher. If the version of
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
    sudo apt update
    sudo apt install --install-recommends winehq-stable
    ```

2. Install the following packages via `apt`:

    ```bash
    sudo apt install git flex bison ninja-build build-essential binutils-arm-none-eabi gcc-arm-none-eabi pkg-config
    ```

3. Install `meson` via `pip`:

    ```bash
    pip3 install --user meson
    echo "export PATH=~/.local/bin:$PATH" >> ~/.bashrc
    source ~/.bashrc
    ```

#### Arch Linux (and derivatives)

Install dependencies via `pacman`:

```bash
sudo pacman -S git flex bison build-essentials arm-none-eabi-binutils arm-none-eabi-gcc pkg-config wine meson
```

#### Fedora (and derivatives)

```bash
sudo yum install git flex bison gcc make arm-none-eabi-bintuils-cs arm-none-eabi-gcc-cs pkg-config wine meson ninja-build
```

### Docker

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

## 3. Specifying a Compiler License

Before building the repository, some final setup is required for the compiler.
Create an environment variable called `LM_LICENSE_FILE` with its value as the
path to which you cloned the repository, plus `/tools/cw/license.dat`. For
example, if you cloned your repository to `C:\Users\myuser\Desktop\pokeplatinum`,
then the value would be `C:\Users\myuser\Desktop\pokeplatinum\tools\cw\license.dat`.

### Windows (including WSL 1)

1. Search for "environment variables" in the Start menu. Click the option which
says "Edit the system environment variables".

2. In the window that opens, click the button that says "Environment Variables..."
in the lower right corner.

3. In the window that opens, click "New..." in the lower right corner.

4. Input the environment variable name and value as above, then click "OK".

5. Restart your computer.

### Unix Systems

Export the environment variable as above to your terminal profile:

```bash
echo 'export LM_LICENSE_FILE="/path/to/pokeplatinum/tools/cw/license.dat"' >> ~/.bashrc
source ~/.bashrc
```

Users of MacOS should replace `~/.bashrc` above with `~/.zshrc`.

## 4. Building the Repository

To build the ROM, run:

```bash
make
```

If everything works, then the following ROM should be built:

- [build/pokeplatinum.us.nds](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`

If you need further assistance, feel free to ask a question in the `#pokeplatinum`
channel of the `pret` Discord (see `README.md` for contact information) or [open
an issue](https://github.com/pret/pokeplatinum/issues/new).

## 5. Debugger Support

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
