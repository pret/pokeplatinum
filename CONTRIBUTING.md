# Contributing to pret/pokeplatinum

<!--toc:start-->
- [Contributing to pret/pokeplatinum](#contributing-to-pretpokeplatinum)
  - [Preliminaries](#preliminaries)
  - [My Build is Failing After Merging from Main](#my-build-is-failing-after-merging-from-main)
  - [Editor Enhancements](#editor-enhancements)
  - [Code Formatting](#code-formatting)
<!--toc:end-->

This document provides a synopsis and loose guidelines for how to contribute to
this project. It is a work in progress. Maintainers should expand this document.

## Preliminaries

We contribute using a fork-model rather than committing branches directly to the
repository. Please make a fork before starting work on your contribution.

Any and all pull requests to the repository *must* produce a ROM which matches
`sha1: ce81046eda7d232513069519cb2085349896dec7` by default. To verify this
locally, a `check` target is included in the `Makefile`:

```bash
make check
```

If your pull request does not produce a matching ROM, then it will not be merged
without changes.

## My Build is Failing After Merging from Main

It is likely that your subprojects are out of date; update them with the following
command and re-build:

```bash
meson subprojects update
```

## Editor Enhancements

This repository includes a script to generate a `compile_commands.json` that is
compatible with C language servers such as `clangd`.

The following dependencies are required:

- `python3.8` or newer
- `gcc-arm-none-eabi`
- `clangd`

To run the script:

```bash
./gen_compile_commands.py
```

This will create a file named `compile_commands.json` in the project root,
overwriting any previous copy.

## Code Formatting

This repository includes an opinionated `clang-format` specification to ensure that
we maintain a common code style. For convenience, a pre-commit hook is also
provided in `.githooks` which will run `clang-format` against any staged changes
prior to executing a commit.

The following dependencies are required:

- `clang-format@18` or newer

To set up the pre-commit hook:

```bash
git config --local core.hooksPath .githooks/
```

To run the formatter on the full source tree:

```bash
make format
```
