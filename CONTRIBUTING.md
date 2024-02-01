# Contributing to pret/pokeplatinum

This document provides a synopsis and loose guidelines for how to contribute to this project. It is a work in progress. Maintainers should expand this document.

## Contents
- [Editor enhancements](#editor-enhancements)

<a href="editor-enhancements"></a>
## Editor enhancements

This repository includes a script to generate a `compile_commands.json` that is compatible with C language servers such as `clangd`.

### Requirements

- python3.8 or newer
- gcc-arm-none-eabi
- clangd

### Usage

```bash
./gen_compile_commands.py
```

This will create a file named `compile_commands.json` in the project root, overwriting the previous copy.
