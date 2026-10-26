#!/usr/bin/env bash

set -euo pipefail

help() {
    echo "Syntax: ./make_script_bin.sh [OPTIONS] FILE..."
    echo "options:"
    echo "  -h | --help         print this help message and exit"
    echo "  -i | --include      append an include directory for the assembler"
    echo "  -a | --assembler    path to the assembler executable"
    echo "  -E | --enumproc     path to the enumproc executable for translating enums to preproc #defines"
    echo "  -o | --objcopy      path to the objcopy executable for data extraction"
    echo "  -O | --output       path to the output file (default: OUTDIR/<script name>); requires a single FILE"
    echo "  -c | --compile-only output the assembled object; supresses objcopy and linking"
    echo "  -d | --out-dir      directory for output files (default: current directory)"
    echo "  -M | --depfile      output a compiler-generated depfile for the source"
    echo "  -P | --parent-dir   use the parent directory name of each input script to avoid name collisions"
}

INCLUDE_ARGS=()
SCRIPT_FILES=()
AS="arm-none-eabi-gcc"
OBJCOPY="arm-none-eabi-objcopy"
LD="arm-none-eabi-ld"
OUTDIR="."
DEPFILE=""
OUTPUT=""
COMPILE_ONLY=0
USE_PARENT_DIR=0

while [ $# -gt 0 ] ; do
    case $1 in 
        -h|--help)
            help
            exit 0
            ;;
        -i|--include)
            INCLUDE_ARGS+=("-I$2")
            shift
            shift
            ;;
        -a|--assembler)
            AS="$2"
            shift
            shift
            ;;
        -E|--enumproc)
            ENUMPROC="$2"
            shift
            shift
            ;;
        -o|--objcopy)
            OBJCOPY="$2"
            shift
            shift
            ;;
        -O|--output)
            OUTPUT="$2"
            shift
            shift
            ;;
        -c|--compile-only)
            COMPILE_ONLY=1
            shift
            ;;
        -d|--out-dir)
            OUTDIR="$2"
            shift
            shift
            ;;
        -M|--depfile)
            DEPFILE="$2"
            shift
            shift
            ;;
        -P|--parent-dir)
            USE_PARENT_DIR=1
            shift
            ;;
        *)
            SCRIPT_FILES+=("$1")
            shift
            ;;
    esac
done

if [ -z "${ENUMPROC:-}" ]; then echo "error: enumproc not specified!"; exit 1; fi
if [ -n "$OUTPUT" ] && [ ${#SCRIPT_FILES[@]} -ne 1 ]; then echo "error: --output requires exactly one input file!"; exit 1; fi

for script_file in "${SCRIPT_FILES[@]}" ; do
    script_fname=${script_file##*/}
    script_noext=${script_fname%.*}

    if [ "$USE_PARENT_DIR" -eq 1 ]; then
        parent_dir_name=$(basename "$(dirname "$script_file")")
        script_noext="${parent_dir_name}/${script_noext}"
    fi

    # Target output file; temporaries are named after it so that parallel
    # invocations with the same script name do not collide
    script_out="${OUTPUT:-$OUTDIR/$script_noext}"
    script_obj="$script_out.o"
    script_bin="$script_out"
    if [ "$COMPILE_ONLY" -eq 1 ]; then
        script_obj="$script_out"
    fi

    # -MT: Ninja expects the depfile to name the output as given
    md_args=()
    if [ -n "$DEPFILE" ]; then
        md_args=(-MD -MF "$DEPFILE" -MT "$script_out")
    fi

    "$AS" ${md_args[@]+"${md_args[@]}"} -E -x assembler-with-cpp ${INCLUDE_ARGS[@]+"${INCLUDE_ARGS[@]}"} "$script_file" \
        | "$ENUMPROC" \
        | "$AS" -x assembler-with-cpp -o "$script_obj" -c -

    if [ "$COMPILE_ONLY" -eq 0 ]; then
        "$OBJCOPY" -O binary --file-alignment 4 "$script_obj" "$script_bin"
        "$LD" "$script_obj" -o "$script_obj.dummy"
        rm "$script_obj" "$script_obj.dummy"
    fi
done
