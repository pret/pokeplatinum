
## Windows

First, create an environment variable called `LM_LICENSE_FILE` with its value as the planned path to the license file in the repository, at `tools/cw/license.dat`. For example, if you plan to store the repository at **C:\\Users\\_\<user>_\\Desktop\\pokeplatinum**, where _\<user>_ is your Windows username, then the value of `LM_LICENSE_FILE` should be `C:\Users\<user>\Desktop\pokeplatinum\tools\cw\license.dat`.

To add an environment variable:
1. Search for "environment variables" in Windows 10's Start Search, and click the option that says "Edit the system environment variables".
2. In the window that opens, click the button that says "Environment Variables..." on the bottom right.
3. In the window that opens, click "New..." on the bottom right.
4. Input in the environment variable name and value, then click "OK".

You will need to restart your computer for the changes to take effect, but if you plan to use Windows Subsystem for Linux (WSL), then you can restart later as part of the required restart when installing WSL, if you choose so.


### Windows 10 (Windows Subsystem for Linux)

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

### Setting up WSL1
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
    sudo apt install git build-essential binutils-arm-none-eabi python3 libpng-devel pugixml 
    ```

5. Change to a directory accessible from Windows where you'll store the files, for example:
    ```bash
    cd /mnt/c/Users/$USER/Desktop
    ```

Continue with the [building instructions](#Building)

## Linux

Building the ROM requires the following packages. If you cannot find one or more of these using your package distribution, it may be under a different name.

* make
* git
* build-essentials (build-essential on Ubuntu)
* binutils-arm-none-eabi
* wine (to run the mwcc executables)
* python3 (for asm preprocessor)
* libpng-devel (libpng-dev on Ubuntu)
* pkg-config
* pugixml (libpugixml-dev on Ubuntu)

NOTE: If you are using Arch/Manjaro or Void you will only need base-devel instead of build-essentials or make or git. You will still need wine.

## Installing

Clone the repository:
```
git clone https://github.com/pret/pokeplatinum
cd pokeplatinum
```

The build system requires the use of the Metrowerks C Compiler versions 2.0/sp2p2 to compile matching files. Download the zip [here](https://cdn.discordapp.com/attachments/698589325620936736/845499146982129684/mwccarm.zip) and extract it to tools/. At the end of this operation, you should have i.e. the file `tools/mwccarm/2.0/sp2p2/mwccarm.exe`.

In the future, a GCC option will be available so MWCC is not required to build, however it is required for a matching ROM.

Download the `NitroSDK-4_2-071210-jp.7z` [here](https://cdn.discordapp.com/attachments/855279572651868170/875195363261292604/NitroSDK-4_2-071210-jp.7z) and extract and copy the folder `tools/bin` from the Nitro SDK into the folder `tools` in your pokeplatinum clone. At the end of this operation, you should have the file `tools/bin/makelcf.exe` inside your pokeplatinum clone. Finally, copy `include/nitro/specfiles/ARM7-TS.lcf.template` into the subdirectory `sub`, and `include/nitro/specfiles/ARM9-TS.lcf.template` and `include/nitro/specfiles/mwldarm.response.template` into the project root.

To build everything:
```
make -j$(nproc)
```

If everything works, then the following ROM should be built:
- [build/platinum.us/pokeplatinum.us.nds](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`

**Note for Windows users**: Consider disabling real-time protection using [these instructions](https://support.microsoft.com/en-us/windows/turn-off-defender-antivirus-protection-in-windows-security-99e6004f-c54c-8509-773c-a4d776b77960) to speed up builds. [Adding an exception](https://support.microsoft.com/help/4028485) for the repository folder does not seem to help as much; one hypothesis is that the exceptions do not affect how various files are accessed via Windows (not WSL1) absolute paths.
