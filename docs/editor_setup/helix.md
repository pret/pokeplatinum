# Editor Setup: Helix 

The setup process instructions is done using Fedora 42 under (WSL2)

Install helix ```sudo dnf install helix```

Install the clang package ```sudo dnf install clang```

Create a `language.toml` file in the .config/helix folder and input the following:

```
[[language]]
name = "c"
formatter = { command = 'clang-format'}
auto-format = true
file-types = ["c", "h"]
```

The Helix documentation has other methods of installing language servers which can be found here: https://docs.helix-editor.com/

Run command  ```hx -–health c``` 

*Confirm that under the Language column C has a checkmark for clangd and clang-formatter*
