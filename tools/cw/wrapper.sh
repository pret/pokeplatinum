#!/bin/sh
set -e
tool_bin="$(basename "$1")"; shift
tool_dir="$(dirname "$0")"
tool_ver="2.0/sp2p2"

wine=
path_unix=
path_win=

test -f .mwconfig && . ./.mwconfig

opt_o=
opt_precompile=
opt_M=false
opt_MD=false
opt_config=false

# Parse/filter the arguments
n="$#"
while [ "$n" -gt 0 ]; do
    skip=0
    copy=0
    case "$1" in
        -o) opt_o="$2"; copy=2 ;;
        -precompile) opt_precompile="$2"; copy=2 ;;
        -MD) opt_MD=true; copy=1 ;;
        -M) opt_M=true; copy=1 ;;
        -wrap:config) opt_config=true; skip=1 ;;
        -wrap:wine) wine="${WINE:-wine}"; skip=1 ;;
        -wrap:ver) tool_ver="$2"; skip=2 ;;
        *) copy=1 ;;
    esac
    shift $skip
    for x in $(seq $copy); do set -- "$@" "$1"; shift 1; done
    : $((n-=$skip)) $((n-=$copy))
done

# Set environment variables
export MWLibraries=";"
export LM_LICENSE_FILE="$tool_dir/license.dat"

# Run the tool
set -- "$tool_dir/$tool_ver/$tool_bin.exe" "$@"
test -n "$wine" && set -- "$wine" "$@"
"$@"

# Process the dependency file
if [ -n "$path_unix" -a -n "$path_win" ]; then
    depfile=
    if $opt_M; then
        depfile="$opt_o"
    elif $opt_MD; then
        # Automatically generate the filename
        out=
        test -n "$opt_o" && out="$opt_o"
        test -n "$opt_precompile" && out="$opt_precompile"
        depfile="$(printf '%s' "$out" | sed 's/[^\.]*$/d/')"
    fi

    if [ -n "$depfile" ]; then
        sedescape_regex() {
            printf '%s' "$@" | sed -e 's/[^^]/[&]/g; s/\^/\\^/g'
        }
        sedescape_subst() {
            printf '%s' "$@" | sed 's/[&/\]/\\&/g'
        }
        sed -e "s/\<$(sedescape_regex "$path_win")/$(sedescape_subst "$path_unix")/g" \
            -e 's/\r//g' -e 's/\\/\//g' -e 's/\/$/\\/g' \
            -i "$depfile"
        cp "$depfile" "$depfile.new"
    fi
fi
