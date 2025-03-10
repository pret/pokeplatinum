# Editor Setup: Neovim

This document assumes that you have a functioning install of [Neovim][nvim], are
familiar with its configuration system, and can install plugins using the plugin
manager of your choice. For brevity, instructions here are written to target the
[lazy.nvim][gh-lazy] plugin manager.

## Table of Contents

<!--toc:start-->
- [Install `clangd`](#install-clangd)
- [Generate the Compilation Database](#generate-the-compilation-database)
- [Automatically Launch `clangd`](#automatically-launch-clangd)
- [Optional: Integrate Treesitter](#optional-integrate-treesitter)
- [Optional: Install Extensions to `clangd`](#optional-install-extensions-to-clangd)
- [Optional: Add Language Support for Meson](#optional-add-language-support-for-meson)
<!--toc:end-->

## Install `clangd`

`clangd` is a language server for C and C++ projects. For installation details
for specific platforms, refer to [the official documentation][clangd-install].
Only the steps for installing `clangd` itself will be assumed; further sections
of this guide will walk a user through integrating `clangd` with their editor.

## Generate the Compilation Database

If you have not already, generate the compilation database by invoking the
following from the root of the project:

```bash
python tools/devtools/gen_compile_commands.py
```

You should now see a file named `compile_commands.json` in the root of the
project. This file will be used to instruct the `clangd` language server on how
to compile individual source files.

## Automatically Launch `clangd`

If you have not already, install and configure [`nvim-lspconfig`][gh-lspconf] by
adding the following configuration to the `setup` function in your `init.lua`:

```lua
require("lazy").setup({
  -- <previous configuration above this line>
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "Makefile",
              "build.ninja",
              "CMakeLists.txt",
              "compile_commands.json",
              "compile_flags.txt",
              "configure.ac",
              "configure.in",
              "config.h.in",
              "meson.build",
              "meson.options",
            )(fname) or require("lspconfig.util").find_git_ancestor(fname)
          end,
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
      },
    },
  },
})
```

This configuration will launch the `clangd` language server when opening source
files belonging to a C or C++ project, identified by the presence of any of a
set of common files in an associated `git` repository. Further configuration of
the language server is left to user-preference.

## Optional: Integrate Treesitter

If you have not already, install and configure [`nvim-treesitter`][gh-treesit]
by adding the following configuration to the `setup` function in your `init.lua`:

```lua
require("lazy").setup({
  -- <previous configuration above this line>
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {
          "c",
          "cpp",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
})
```

Then, restart Neovim to load the new configuration. `lazy` should automatically
begin installing `nvim-treesitter`.

## Optional: Install Extensions to `clangd`

If desired, install and configure [`clangd_extensions.nvim`][gh-clangd-ext] by
following the instructions in its `README.md`. These extensions are **not**
supported by the generic Language Server Protocol specification, and hence must
be included via a separate plugin.

## Optional: Add Language Support for Meson

> [!NOTE]
> This section currently refers to an extension which, while functional, is
> unmaintained. It may be replaced by instructions for a different extension in
> the future.

If desired, install [`mesonlsp`][gh-mesonlsp] by following the instructions in
the Installation section of its `README.md`. To configure the extension for use
with `nvim-lspconfig`, add the following configuration snippet to the `setup`
function in your `init.lua`:

```lua
require("lazy").setup({
  -- <previous configuration above this line>
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- <previous configuration above this line>
        mesonlsp = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "meson.build",
              "meson.options",
              "meson_options.txt",
            )(fname) or require("lspconfig.util").find_git_ancestor(fname)
          end,
          cmd = { 'mesonlsp', '--lsp', },
          filetypes = { 'meson' },
        },
      },
    },
  },
})
```

[nvim]: https://neovim.io/
[gh-lazy]: https://github.com/folke/lazy.nvim
[gh-treesit]: https://github.com/nvim-treesitter/nvim-treesitter
[gh-lspconf]: https://github.com/neovim/nvim-lspconfig
[gh-clangd-ext]: https://github.com/p00f/clangd_extensions.nvim
[gh-mesonlsp]: https://github.com/JCWasmx86/mesonlsp
[clangd-install]: https://clangd.llvm.org/installation.html
