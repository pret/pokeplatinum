#!/usr/bin/env bash

set -euo pipefail

help() {
    echo "Syntax: ./make_script_bin.sh [OPTIONS] FILE..."
    echo "options:"
    echo "  -h | --help         print this help message and exit"
    echo "  -i | --include      append an include directory for the assembler"
    echo "  -a | --assembler    path to the assembler executable"
    echo "  -o | --objcopy      path to the objcopy executable for data extraction"
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
MD=""
USE_PARENT_DIR=0

while [[ $# -gt 0 ]] ; do
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
        -o|--objcopy)
            OBJCOPY="$2"
            shift
            shift
            ;;
        -d|--out-dir)
            OUTDIR="$2"
            shift
            shift
            ;;
        -M|--depfile)
            MD="-MD"
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

for script_file in "${SCRIPT_FILES[@]}" ; do
    script_fname=${script_file##*/}
    script_noext=${script_fname%.*}

    if [[ $USE_PARENT_DIR -eq 1 ]]; then
        parent_dir_name=$(basename "$(dirname "$script_file")")
        script_noext="${parent_dir_name}/${script_noext}"
    fi

    # Target output files
    script_obj="$OUTDIR/$script_noext.o"
    script_bin="$OUTDIR/$script_noext"

    # Convert + clean-up
    $AS $MD -c -x assembler-with-cpp "${INCLUDE_ARGS[@]}" -o "$script_obj" "$script_file"
    $OBJCOPY -O binary --file-alignment 4 "$script_obj" "$script_bin"
    $LD "$script_obj" -o "$script_obj.dummy"
    rm "$script_obj" "$script_obj.dummy"
done
