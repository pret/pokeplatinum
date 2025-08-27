# Editor Setup: Helix 

This document details the setup process of the [Helix](https://helix-editor.com/) text editor. A terminal application that does not offer plugin functionality but has instead opted for pre-integration of [Tree-sitter](https://tree-sitter.github.io/tree-sitter/), [Language Server Support (LSP)](https://microsoft.github.io/language-server-protocol/), and Fuzzy File Search.

## Table of Contents

<!--toc:start-->
- [Generate the Compilation Database](#generate-the-compilation-database)
- [Install `clangd`](#install-clangd)
- [Setup clangd and clang-formatter](#setup-clangd-and-clang-formatter)
- [Optional:Add LSP Support for Meson](#optional-meson-lsp-support)
<!--toc:end-->


## Generate the Compilation Database

If you have not already, generate the compilation database by invoking the
following from the root of the project:

```bash
python tools/devtools/gen_compile_commands.py
```

You should now see a file named `compile_commands.json` in the root of the project. This file will be used to instruct the `clangd` language server on how to compile individual source files.

## Install `clangd`

`clangd` is the  language server for C and C++ projects. The installation details for your platform can be found in the [clangd](https://clangd.llvm.org/installation.html) website. 

Once you have successfully installed `clangd` which you can confirm by typing the following command:

```bash
clangd --version
```

## Setup `clangd` and clang-formatter

Into your terminal we can now align Helix to utilize `clangd` and `clang-formatter`

In Linux you can input the following commands to create the `language.toml` file.
```bash
cd .config/helix
touch language.toml
```

In Windows this may differ in location but the default should be in your User folder where Helix scans for its `runtime` folder and other configuration files. 

Below is where a Windows platform developer would place the `language.toml` file
```
User/AppData/Roaming/helix
```


Within the `language.toml` file in the .config/helix folder input the following:
```toml
[[language]]
name = "c"
formatter = { command = 'clang-format'}
auto-format = true
file-types = ["c", "h"]
```


The Helix documentation has other methods/configurations of installing language servers which can be found here: https://docs.helix-editor.com/.

Run command:
```bash
hx --health c
```

*Confirm that under the Language column C has a checkmark for clangd and clang-formatter*

## Optional: Meson LSP Support


> [!NOTE]
> This section currently refers to an extension which, while functional, is
> unmaintained. It may be replaced by instructions for a different extension in
> the future.

You may follow the instructions to install  the Meson Language Server where  it is available through the following link:  https://github.com/JCWasmx86/mesonlsp

In the same `language.toml` file you may add the following: 
```toml
[language-server]
mesonlsp = { command = "mesonlsp", args = ["--lsp"] }
```
