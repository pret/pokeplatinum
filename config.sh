#!/bin/sh
set -e

build="build"
if [ "$#" -ge 1 ]; then
    build="$1"
    shift
fi

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

mkdir -p -- "$build"

root="$PWD"
if [ -n "$MSYSTEM" -a "$MSYSTEM" != MSYS ]; then
    root="$(cygpath -w "$root")"
fi

# Bootstrap machine file pointing to the repo
echo "[constants]" > "$build/root.ini"
echo "root = '$root'" >> "$build/root.ini"

# Select toolchain
if [ "$(uname -s)" = "Linux" ]; then
    if is_wsl_accessing_windows; then
        native_file="native.ini"
        cross_file="cross_unix.ini"
    else
        native_file="native_unix.ini"
        cross_file="cross_unix.ini"
    fi
else
    native_file="native.ini"
    cross_file="cross.ini"
fi

export MWCONFIG="$(realpath -- "$build/.mwconfig")"

if [ "$native_file" = "native_unix.ini" ]; then
    wrap_wine="$(command -v "${WINELOADER:-wine}")"
    wrap_path_unx="$PWD"
    wrap_path_win="$("$wrap_wine" winepath -w "$wrap_path_unx")"
    "$wrap/mwrap" -conf -wine "$wrap_wine" \
        -path_unx "$wrap_path_unx" -path_win "$wrap_path_win"
elif is_wsl_accessing_windows; then
    wrap_path_unx="$PWD"
    wrap_path_win="$(wslpath -w "$wrap_path_unx")"
    "$wrap/mwrap" -conf \
        -path_unx "$wrap_path_unx" -path_win "$wrap_path_win"
fi

# Launch meson
"${MESON:-meson}" setup --native-file=meson/"$native_file" --native-file="$build/root.ini" --cross-file=meson/"$cross_file" --cross-file="$build/root.ini" "$@" -- "$build"
