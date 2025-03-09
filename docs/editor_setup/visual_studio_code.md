# Editor Setup: Visual Studio Code

This document assumes that you have a functioning install of [Visual Studio
Code][vscode] and are familiar with installing extensions via the
[Marketplace][vscode-marketplace].

## Table of Contents

<!--toc:start-->
- [Install the Microsoft C/C++ Extensions](#install-the-microsoft-cc-extensions)
- [Generate the Compilation Database](#generate-the-compilation-database)
- [Configure C/C++ Project Properties](#configure-cc-project-properties)
- [Optional: Add Language Support for Meson](#optional-add-language-support-for-meson)
- [Advanced: Use `clangd` for C/C++ Integration](#advanced-use-clangd-for-cc-integration)
<!--toc:end-->

## Install the Microsoft C/C++ Extensions

If you have not already, install [Microsoft's C/C++ extension][vscode-cpptools]
to add language support for C and C++ to Visual Studio Code. This extension will
enable rich completions and symbol navigation while editing C and C++ code. It
will also integrate automated code-formatting using `clang-format`, following
the configuration outlined in the `.clang-format` file at the root of the
project. For further details on the extension's features, refer to [the official
documentation][vscode-cpp-ide].

In the following sections, we will configure this extension to integrate with
`pokeplatinum`'s toolchain.

## Generate the Compilation Database

If you have not already, generate the compilation database by invoking the
following from the root of the project:

```bash
python tools/devtools/gen_compile_commands.py
```

You should now see a file named `compile_commands.json` in the root of the
project. This file will be used to instruct the `clangd` language server on how
to compile individual source files.

## Configure C/C++ Project Properties

The C/C++ extension reads configuration for a project from the file
`.vscode/c_cpp_properties.json`. The `.vscode` folder should already be present
in the root of your project. In that folder, create the `c_cpp_properties.json`
file, if it is not already present. The following configuration can be used as a
starting point:

```json
{
  "configurations": [
    {
      "name": "Linux",
      "includePath": [
        "${workspaceFolder}/build/**",
        "${workspaceFolder}/include/**"
      ],
      "forcedInclude": [ "${workspaceFolder}/include/pch/global_pch.h" ],
      "defines": [ "SDK_ARM9", "BOOL=int" ],
      "compilerPath": "/usr/bin/arm-none-eabi-gcc",
      "cStandard": "c99",
      "cppStandard": "c++17",
      "intelliSenseMode": "linux-gcc-arm",
      "compileCommands": "${workspaceFolder}/compile_commands.json"
    }
  ],
  "version": 4
}
```

To ensure that the configuration loads correctly in your editor, replace the
`name` and `intelliSenseMode` properties according to the values specified in
the following table for specific platforms:

| Platform        | `name`    | `intelliSenseMode` |
| --------------- | --------- | ------------------ |
| Windows - MSYS2 | `Windows` | `windows-gcc-arm`  |
| Windows - WSL1  | `Windows` | `windows-gcc-arm`  |
| Windows - WSL2  | `Linux`   | `linux-gcc-arm`    |
| Linux           | `Linux`   | `linux-gcc-arm`    |
| macOS           | `macOS`   | `macos-gcc-arm64`  |

> [!NOTE]
> Visual Studio Code may take a long time to initialize Intellisense when first
> opening the repository, during which time the application may appear to be
> unresponsive. This is expected, as it attempts to build a complete database of
> symbols declared within the project. This unresponsiveness should only apply
> to the first time that a source file is opened within the project; future
> start-up times should be much faster.

## Optional: Add Language Support for Meson

The [Meson extension][vscode-meson] for Visual Studio Code will provide support
for the Meson build-system language. With direct configuration for the project
supplied by the generated `compile_commands.json`, this extension is largely
useful for syntax highlighting and code snippets used when making modifications
to the build configuration.

> [!WARNING]
> If prompted, do **NOT** use this extension to configure IntelliSense, as it
> may override previous configuration!

## Advanced: Use `clangd` for C/C++ Integration

If desired, a user may install [the LLVM `clangd` extension][vscode-clangd]
instead of the Microsoft C/C++ extension. Unlike the Microsoft-branded
extension, the `clangd` extension will build its symbol database incrementally;
this can provide a more immediately-responsive editing experience when first
opening a project source file at the cost of a higher memory footprint.

[vscode]: https://code.visualstudio.com/
[vscode-marketplace]: https://code.visualstudio.com/docs/editor/extension-marketplace
[vscode-cpptools]: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
[vscode-cpp-ide]: https://code.visualstudio.com/docs/cpp/cpp-ide
[vscode-meson]: https://marketplace.visualstudio.com/items?itemName=mesonbuild.mesonbuild
[vscode-clangd]: https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd
