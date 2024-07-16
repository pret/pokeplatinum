This doc details the steps necessary to build a copy of Pokemon Platinum (EN-US) from the sources contained in this repository.

# 1. Setting up a dev environment

## Windows

First, create an environment variable called `LM_LICENSE_FILE` with its value as the planned path to the license file in the repository, at `tools/cw/license.dat`. For example, if you plan to store the repository at **C:\\Users\\_\<user>_\\Desktop\\pokeplatinum**, where _\<user>_ is your Windows username, then the value of `LM_LICENSE_FILE` should be `C:\Users\<user>\Desktop\pokeplatinum\tools\cw\license.dat`.

To add an environment variable:
1. Search for "environment variables" in Windows 10's Start Search, and click the option that says "Edit the system environment variables".
2. In the window that opens, click the button that says "Environment Variables..." on the bottom right.
3. In the window that opens, click "New..." on the bottom right.
4. Input in the environment variable name and value, then click "OK".

You will need to restart your computer for the changes to take effect, but if you plan to use Windows Subsystem for Linux (WSL), then you can restart later as part of the required restart when installing WSL, if you choose so.

You now have the choice between two different environments to use to build the project.

### MSYS2 (Recommended)

1. Download the MSYS2 installer from the official website: https://www.msys2.org/ and install it on your system.

2. Once the installation is complete, a terminal should automatically pop up. To update the package registry, type the following command:

    ```
    pacman -Syu
    ```

    Press 'Y' when prompted to confirm the update. The update process may take a few minutes. Once completed, the terminal will automatically close.

3. Reopen an MSYS terminal (pink icon) and enter the following commands to install the necessary packages:

    ```
    echo 'export PATH=${PATH}:/mingw64/bin' >> ~/.bashrc
    source ~/.bashrc
    pacman -S git meson gcc mingw-w64-x86_64-arm-none-eabi-{binutils,gcc}
    ```

    Press 'Y' when prompted to confirm the installation.

4. Continue with the [building instructions](#Downloading_the_repository). Make sure to always use the plain MSYS environment, other environments will not work.

### Windows Subsystem for Linux

1. Open [Windows Powershell **as Administrator**](https://i.imgur.com/QKmVbP9.png), and run the following command (Right Click or Shift+Insert is paste in the Powershell).

    ```powershell
    wsl --install -d Ubuntu
    ```

2. Once the process finishes, you will be prompted to restart your machine. Accept.

3. After rebooting, reopen PowerShell and run the following commmand to downgrade to WSL1

    ```powershell
    wsl --set-version Ubuntu 1
    ```

    This is necessary because WSL2 has very slow access to the Windows file drive, which is where we need to store the repository.

4. Open **Ubuntu** (e.g. using Search).

5. WSL/Ubuntu will set up its own installation when it runs for the first time. Once WSL/Ubuntu finishes installing, it will ask for a username and password (to be input in).
    <details>
        <summary><i>Note...</i></summary>

    >   When typing in the password, there will be no visible response, but the terminal will still read in input.
    </details>

6. Update WSL/Ubuntu before continuing. Do this by running the following command. These commands will likely take a long time to finish:

    ```bash
    sudo apt update && sudo apt upgrade
    ```

7. Certain packages are required to build the repository. Install these packages by running the following command:

    ```bash
    sudo apt install git build-essential binutils-arm-none-eabi gcc-arm-none-eabi
    ```

    We are not done yet, the 'meson' package is also necessary, but the version provided by apt is too outdated. To get the most recent meson version, run:

    ```
    sudo apt-get install pip
    pip install --user meson
    ```

8. Change to a directory accessible from Windows where you'll store the files, for example:
    ```bash
    cd /mnt/c/Users/$USER/Desktop
    ```

Continue with the [building instructions](#Downloading_the_repository)

## macOS

Apple bundles a number of the requisite utilities into Xcode Command Line Tools; to install these, run:

```
xcode-select --install
```

You will also need the following packages:

* gcc (14.x.x)
* meson (>= 1.3.0)
* wine (to run the mwcc executables)
* libpng
* pkg-config

These can be installed using Homebrew; if you do not have Homebrew installed, refer to the instructions [here](https://brew.sh/). Once Homebrew is installed, run:

```
brew update
brew install gcc@14 meson libpng pkg-config arm-none-eabi-binutils arm-none-eabi-gcc
brew install --cask wine-stable
```

On macOS Monterey (12) or earlier, you may also need GNU Coreutils installed to run the build script.
```
brew install coreutils
```

## Linux

Building the ROM requires the following packages. If you cannot find one or more of these using your package distribution, it may be under a different name.

* git
* meson (>= 1.3.0)
* build-essentials (build-essential on Ubuntu)
* binutils-arm-none-eabi (arm-none-eabi-binutils on Arch Linux)
* gcc-arm-none-eabi (arm-none-eabi-gcc on Arch Linux)
* wine (to run the mwcc executables)
* pkg-config

NOTE: On some distros, the meson package provided by the package manager will be out of date. To check your meson version, run:

```
meson --version
```

If your mesion version is older than 1.2.0, follow the instructions at: https://mesonbuild.com/Getting-meson.html to get the most recent version of Meson

# 2. Downloading the repository

In your terminal of choice, navigate to the path you would like to store the repository in. If you are using WSL, make sure to clone the repo under the Windows file drive. Clone the repository with:
```
git clone https://github.com/pret/pokeplatinum
cd pokeplatinum
```

# 3. Building
To set up the build system, run:
```
./config.sh
```

This is only required once. If the process is successful, you will see a new 'build' folder in the repository.

To build the rom, run:
```
./build.sh
```

If everything works, then the following ROM should be built:
- [build/pokeplatinum.us.nds](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`

If you want to make modifications to the ROM, you can instead run:
```
./build.sh rom
```

After which, you should see the built ROM `pokeplatinum.us.nds` in the `build` folder.

# 4. Docker

A Dockerfile is provided for your convenience. To begin, setup docker on your local machine following the instructions at https://docs.docker.com/desktop/. Then, run

    ./clean.sh  # because we are switching environments
    docker build . -t pret/pokeplatinum
    docker run -u $USER -w /rom -v .:/rom pret/pokeplatinum ./config.sh  # first time only
    docker run -u $USER -w /rom -v .:/rom pret/pokeplatinum ./build.sh
    docker run -u $USER -w /rom -v .:/rom pret/pokeplatinum ./clean.sh  # before switching environments
