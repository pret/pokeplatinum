# Contributing to pret/pokeplatinum

This document provides a synopsis and loose guidelines for how to contribute to this project. It is a work in progress. Maintainers should expand this document.

## Contents
- [Editor Enhancements](#editor-enhancements)
- [Code Formatting](#code-formatting)

<a href="editor-enhancements"></a>
## Editor Enhancements

This repository includes a script to generate a `compile_commands.json` that is compatible with C language servers such as `clangd`.

### Requirements

- `python3.8` or newer
- `gcc-arm-none-eabi`
- `clangd`

### Usage

```bash
./gen_compile_commands.py
```

This will create a file named `compile_commands.json` in the project root, overwriting the previous copy.

<a href="code-formatting"></a>
## Code Formatting

This repository includes an opinionated `clang-format` specification which is integrated into the build system for convenience in ensuring that your code adheres to repository style guidelines.

### Requirements

- `clang-format`

### Usage

```bash
./build.sh format
```

This will traverse the source tree and format all found C sources and headers according to the specified style rules.

