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

You now have the choice between two different terminals to use to build the project.

### MSYS2 (Recommended)

1. Download the MSYS2 installer from the official website: https://www.msys2.org/ and install it on your system.

2. Once the installation is complete, a terminal should automatically pop up. To update the package registry, type the following command:

    ```
    pacman -Syu
    ```

    Press 'Y' when prompted to confirm the update. The update process may take a few minutes. Once completed, the terminal will automatically close.

3. Reopen an MSYS terminal (pink icon) and enter the following command to install the necessary packages:

    ```
    pacman -S git meson gcc
    ```

    Press 'Y' when prompted to confirm the installation.

4. Continue with the [building instructions](#Downloading_the_repository). Make sure to always use the plain MSYS terminal, other environments will not work.

### Windows Subsystem for Linux

Currently WSL2 has an issue with mwldarm not being able to locate it's executable. Please use WSL1 or another build environment to mitigate this issue until a solution is found.

1. Open [Windows Powershell **as Administrator**](https://i.imgur.com/QKmVbP9.png), and run the following command (Right Click or Shift+Insert is paste in the Powershell).

    ```powershell
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    ```

2. Once the process finishes, restart your machine.

3. The next step is to choose and install a Linux distribution from the Microsoft Store. The following instructions will assume Ubuntu as the Linux distribution of choice.

4. Open the [Microsoft Store Linux Selection](https://aka.ms/wslstore), click Ubuntu, then click Get, which will install the Ubuntu distribution.
    <details>
        <summary><i>Notes...</i></summary>

    >   Note 1: If a dialog pops up asking for you to sign into a Microsoft Account, then just close the dialog.  
    >   Note 2: If the link does not work, then open the Microsoft Store manually, and search for the Ubuntu app (choose the one with no version number).
    </details>

#### Setting up WSL1
Some tips before proceeding:
- In WSL, Copy and Paste is either done via
    - **right-click** (selection + right click to Copy, right click with no selection to Paste)
    - **Ctrl+Shift+C/Ctrl+Shift+V** (enabled by right-clicking the title bar, going to Properties, then checking the checkbox next to "Use Ctrl+Shift+C/V as Copy/Paste").
- Some of the commands that you'll run will ask for your WSL password and/or confirmation to perform the stated action. This is to be expected, just enter your WSL password and/or the yes action when necessary.

1. Open **Ubuntu** (e.g. using Search).
2. WSL/Ubuntu will set up its own installation when it runs for the first time. Once WSL/Ubuntu finishes installing, it will ask for a username and password (to be input in).
    <details>
        <summary><i>Note...</i></summary>

    >   When typing in the password, there will be no visible response, but the terminal will still read in input.
    </details>

3. Update WSL/Ubuntu before continuing. Do this by running the following command. These commands will likely take a long time to finish:

    ```bash
    sudo apt update && sudo apt upgrade
    ```

4. Certain packages are required to build the repository. Install these packages by running the following command:

    ```bash
    sudo apt install git build-essential
    ```

    We are not done yet, the 'meson' package is also necessary, but the version provided by apt is too outdated. To get the most recent meson version, run:

    ```
    sudo apt-get install pip
    pip install --user meson
    ```

5. Change to a directory accessible from Windows where you'll store the files, for example:
    ```bash
    cd /mnt/c/Users/$USER/Desktop
    ```

Continue with the [building instructions](#Downloading_the_repository)

## Linux

Building the ROM requires the following packages. If you cannot find one or more of these using your package distribution, it may be under a different name.

* git
* meson (>= 1.2.0)
* build-essentials (build-essential on Ubuntu)
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
sh config.sh
```

This is only required once. If the process is successful, you will see a new 'build' folder in the repository.

To build the rom, run:
```
sh build.sh
```

If everything works, then the following ROM should be built:
- [build/platinum.us/pokeplatinum.us.nds](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`
