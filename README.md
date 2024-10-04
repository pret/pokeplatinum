# Pokémon Platinum

This is a WIP decompilation of Pokémon Platinum. For instructions on how to set up the repository, please read [INSTALL.md](INSTALL.md).

This repository builds the following ROMs:

* [**pokeplatinum.us.nds**](https://datomatic.no-intro.org/index.php?page=show_record&s=28&n=3541) `sha1: ce81046eda7d232513069519cb2085349896dec7`

For contacts and other pret projects, see [pret.github.io](https://pret.github.io/). In addition to the pret Discord, also see the [VoidMatrix Discord (#decomp)](https://discord.gg/prUAgd5).

## Debugging with GDB + overlays

1. Download and build custom GDB debugger from https://github.com/joshua-smith-12/binutils-gdb-nds - this build includes changes to help aid overlay debugging. (Regular gdb-multiarch works as well but will handle overlays poorly)

2. Create a `.vscode/launch.json` with the below contents, updating `miDebuggerPath`:

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Debug in melonDS",
            "type": "cppdbg",
            "request": "launch",
            "program": "${workspaceFolder}/build/debug.nef",
            "MIMode": "gdb",
            "cwd": "${workspaceFolder}",
            "externalConsole": true,
            "miDebuggerServerAddress": "localhost:3333",
            "miDebuggerPath": "/path/to/custom/build/gdb/gdb",
            "setupCommands": [
                {
                    "description": "Enable pretty-printing",
                    "text": "-enable-pretty-printing",
                    "ignoreFailures": true
                },
                {
                    "description": "Set architecture",
                    "text": "set architecture auto"
                },
                {
                    "description": "Enable overlays",
                    "text": "overlay auto"
                }
            ],
            "stopAtConnect": false,
            "stopAtEntry": false
        }
    ]
}
```

3. Launch melonDS with GDB stub enabled and launch the pokeplatinum ROM (you may need to fiddle with the config file to make this work, melonDS GDB stub config is off and may not actually enable properly through the UI)

4. Run debugger through VS Code, it should connect to melonDS automatically.