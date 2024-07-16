#!/bin/sh
set -e

compiler="skrew"
if [ "$#" -ge 1 ]; then
    compiler="$1"
    shift
fi

build="build"
if [ "$#" -ge 1 ]; then
    build="$1"
    shift
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
mkdir -p -- "$build"
root="$PWD"
if [ -n "$MSYSTEM" ] && [ "$MSYSTEM" != MSYS ]; then
    root="$(cygpath -w "$root")"
fi

echo "[constants]" > "$build/root.ini"
echo "root = '$root'" >> "$build/root.ini"

# Select toolchain configuration files
if [ "$(uname -s)" = "Linux" ]; then
    if is_wsl_accessing_windows; then
        native_file="native.ini"
        cross_file="cross_unix.ini"
    else
        native_file="native_unix.ini"
        cross_file="cross_unix.ini"
    fi
elif [ "$(uname -s)" = "Darwin" ]; then
    native_file="native_macos.ini"  # using gcc-14/g++-14 to avoid apple clang
    cross_file="cross_unix.ini"
else
    native_file="native.ini"
    cross_file="cross.ini"
fi

# Setup the chosen compiler
if [ "$compiler" = "skrew" ]; then
    git clone --depth=1 https://github.com/mid-kid/metroskrew
    sed -e '/tool_ver = args.wrap_ver/s/tool_ver/tool_sdk/' -i metroskrew/wrap/wrap.c
    sed -e '/^default_mwccarm/cdefault_mwccarm = '\''3.0-137'\''' -i metroskrew/wrap/meson.build

    export MWCIncludes="$PWD/tools/cw/include/MSL_C;$PWD/tools/cw/include/MSL_Extras"
    export MWLibraries="$PWD/tools/cw/lib"

    metroskrew_build="$build/metroskrew.build"
    meson setup "$metroskrew_build" metroskrew --prefix "$PWD/$build/metroskrew" --buildtype release --cross-file="$root/metroskrew/meson/cc-m32.ini"
    meson install -C "$metroskrew_build"

    compiler_exe="$build/metroskrew/bin/skrewrap"
elif [ "$compiler" = "mwrap" ]; then
    wrap=tools/cw

    if ! "$wrap/mwrap" -test 2> /dev/null; then
        rm -rf "$wrap/mwrap" "$wrap/build"
        "${MESON:-meson}" setup "$wrap/build" "$wrap"
        "${MESON:-meson}" compile -C "$wrap/build"
        install -m755 "$wrap/build/mwrap" "$wrap/mwrap"
        rm -rf "$wrap/build"
    fi

    touch "$build/.mwconfig"
    export MWCONFIG="$(realpath -- "$build/.mwconfig")"

    if [ "$native_file" = "native_unix.ini" ] || [ "$native_file" = "native_macos.ini" ]; then
        wrap_wine="$(command -v "${WINELOADER:-wine}")"
        wrap_path_unx="$PWD"
        wrap_path_win="$("$wrap_wine" winepath -w "$wrap_path_unx")"
        wrap_path_build_unx="$build"
        wrap_path_build_win="$("$wrap_wine" winepath -w "$wrap_path_build_unx")"
        "$wrap/mwrap" -conf -wine "$wrap_wine" \
            -path_unx "$wrap_path_unx" \
            -path_win "$wrap_path_win" \
            -path_build_unx "$wrap_path_build_unx" \
            -path_build_win "$wrap_path_build_win"
    elif is_wsl_accessing_windows; then
        wrap_path_unx="$PWD"
        wrap_path_win="$(wslpath -w "$wrap_path_unx")"
        wrap_path_build_unx="$build"
        wrap_path_build_win="$(wslpath -w "$wrap_path_build_unx")"
        "$wrap/mwrap" -conf -wine "$wrap_wine" \
            -path_unx "$wrap_path_unx" \
            -path_win "$wrap_path_win" \
            -path_build_unx "$wrap_path_build_unx" \
            -path_build_win "$wrap_path_build_win"
    fi

    compiler_exe="$wrap/mwrap"
else
    echo "Unknown compiler $compiler; terminating"
    exit 1
fi

# Set up cross-compilation configuration files
cat <<EOF > "meson/$cross_file"
[binaries]
c       = [root + '/$compiler_exe', 'mwccarm']
c_ld    = [root + '/$compiler_exe', 'mwldarm']
cpp     = [root + '/$compiler_exe', 'mwccarm']
cpp_ld  = [root + '/$compiler_exe', 'mwldarm']
nasm    = [root + '/$compiler_exe', 'mwasmarm']
ar      = [root + '/$compiler_exe', 'mwldarm']
strip   = ['false']

[host_machine]
system      = 'bare metal'
cpu_family  = 'arm'
cpu         = 'arm'
endian      = 'little'
EOF

# Explicitly set the Response File threshold to half of Wine's limit
# Ref: https://github.com/mesonbuild/meson/blob/8e89a38737281f7618a1284fe9e68eb6bb1fe99d/mesonbuild/backend/ninjabackend.py#L108
# Ref: https://github.com/wine-mirror/wine/blob/34b1606019982b71818780bc84b76460f650af31/dlls/ntdll/unix/env.c#L1579
# TODO: https://github.com/mesonbuild/meson/issues/13414
export MESON_RSP_THRESHOLD=16387

# Launch meson
"${MESON:-meson}" setup --wrap-mode=nopromote --native-file=meson/"$native_file" --native-file="$build/root.ini" --cross-file=meson/"$cross_file" --cross-file="$build/root.ini" "$@" -- "$build"
