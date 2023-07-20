#!/usr/bin/env bash

is_wsl_accessing_windows() {
    kernel=$(uname -r)
    script_path=$(realpath "$0")
    if echo "$kernel" | grep -q Microsoft && echo "$script_path" | grep -qE '^/mnt/'; then
        return 0
    else
        return 1
    fi
}

# Bootstrap machine file pointing to the repo
echo "[constants]" > meson/root.ini
echo "root = '$(pwd)'" | sed s#\'/c#\'C:#g >> meson/root.ini

# Select toolchain
if [ "$(uname -s)" = "Linux" ]; then
    if is_wsl_accessing_windows; then
        native_file="native.ini"
        cross_file="cross.ini"
    else
        native_file="native_wine.ini"
        cross_file="cross_wine.ini"
    fi
else
    native_file="native.ini"
    cross_file="cross.ini"
fi

# Launch meson
"${MESON:-meson}" setup build --native-file=meson/"$native_file" --native-file=meson/root.ini --cross-file=meson/"$cross_file" --cross-file=meson/root.ini

if [ "$native_file" = "native_wine.ini" ]; then
cat > build/.mwconfig << EOF
path_unix="$PWD"
path_win="$("${WINE:-wine}" winepath -w "$PWD")"
EOF
fi
