#!/usr/bin/env bash
set -e

dir_build="build"

wrap=tools/cw

# Build the wrapper
if ! "$wrap/mwrap" -test 2> /dev/null; then
    rm -rf "$wrap/mwrap" "$wrap/build"
    "${MESON:-meson}" setup "$wrap/build" "$wrap"
    "${MESON:-meson}" compile -C "$wrap/build"
    install -m755 "$wrap/build/mwrap" "$wrap/mwrap"
    rm -rf "$wrap/build"
fi

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

mkdir -p "$dir_build"
export MWCONFIG="$(realpath "$dir_build/.mwconfig")"

if [ "$native_file" = "native_wine.ini" ]; then
    wrap_wine="$(command -v "${WINELOADER:-wine}")"
    wrap_path_unx="$PWD"
    wrap_path_win="$("$wrap_wine" winepath -w "$wrap_path_unx")"
    "$wrap/mwrap" -conf -wine "$wrap_wine" \
        -path_unx "$wrap_path_unx" -path_win "$wrap_path_win"
fi

# Launch meson
"${MESON:-meson}" setup "$dir_build" --native-file=meson/"$native_file" --native-file=meson/root.ini --cross-file=meson/"$cross_file" --cross-file=meson/root.ini
