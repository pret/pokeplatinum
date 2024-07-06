# Contributing to pret/pokeplatinum

<!--toc:start-->
- [Editor Enhancements](#editor-enhancements)
- [Code Formatting](#code-formatting)
<!--toc:end-->

This document provides a synopsis and loose guidelines for how to contribute to this project. It is a work in progress. Maintainers should expand this document.

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

## Code Formatting

This repository includes an opinionated `clang-format` specification to ensure that we maintain a common code style. For convenience, a pre-commit hook is also provided in `.githooks` which will run `clang-format` against any staged changes prior to executing a commit.

### Requirements

- `clang-format@17` or newer

### Usage

To set up the pre-commit hook:

```sh
git config --local core.hooksPath .githooks/
```

To run the formatter on the full source tree:

```bash
./format.sh
```

